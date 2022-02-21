/**
 * 
 */
package com.transformation.service.impl;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ResourceLoader;
import org.springframework.stereotype.Component;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.transformation.exception.TransformationException;
import com.transformation.service.TransformationService;

import net.sf.saxon.Transform;

/**
 * @author Ravishankar Puttaraju
 *
 */
@Component("transformationService")
public class TransormationServiceImpl implements TransformationService {

	@Autowired
	ResourceLoader resourceLoader;

	/**
	 * This method is used to convert FHIR to CDA.
	 * 
	 */
	@Override
	public Object convertFhirToCda(String xml) {

		UUID outputFileName = UUID.randomUUID();

		UUID tempFileName = UUID.randomUUID();

		File inputSourceXmlFile = null;

		File xsltFile = null;

		try {

			xsltFile = ResourceUtils.getFile("classpath:latest-files/transforms/fhir2cda-r4/fhir2cda.xslt");

			inputSourceXmlFile = File.createTempFile(tempFileName.toString(), "tmp");

			FileOutputStream out = new FileOutputStream(inputSourceXmlFile);

			out.write(xml.getBytes());

		} catch (IOException e1) {

			e1.printStackTrace();
		}

		// calling transformation method
		xsltTransformation(xsltFile.getAbsolutePath(), inputSourceXmlFile.getAbsolutePath(), outputFileName);

		return getFileContentAsString(outputFileName);

	}

	/**
	 * This method is used to convert CDA to FHIR
	 */

	@Override
	public Object convertCdaToFhir(String sourceXml) {

		UUID outputFileName = UUID.randomUUID();

		UUID tempFileName = UUID.randomUUID();

		File inputSourceXmlFile = null;

		File xsltFile = null;

		try {

			inputSourceXmlFile = File.createTempFile(tempFileName.toString(), "tmp");

			xsltFile = ResourceUtils
					.getFile("classpath:latest-files/transforms/cda2fhir-r4/cda2fhir.xslt");

			FileOutputStream out = new FileOutputStream(inputSourceXmlFile);

			out.write(sourceXml.getBytes());

		} catch (IOException e1) {

			e1.printStackTrace();
		}

		// calling transformation method
		xsltTransformation(xsltFile.getAbsolutePath(), inputSourceXmlFile.getAbsolutePath(), outputFileName);

		return getFileContentAsString(outputFileName);

	}

	/**
	 * Below method is used to call the Saxon transform method (i.e main method)
	 * 
	 * @param xslFilePath
	 * @param sourceXml
	 * @param outputFileName
	 */
	@ExceptionHandler
	private void xsltTransformation(String xslFilePath, String sourceXml, UUID outputFileName) {

		try {

			String[] commandLineArguments = new String[3];

			commandLineArguments[0] = "-xsl:" + xslFilePath;
			commandLineArguments[1] = "-s:" + sourceXml;
			// commandLineArguments[2] = "-license:on";
			commandLineArguments[2] = "-o:" + outputFileName + ".xml";

			Transform.main(commandLineArguments);

		} catch (Exception e) {

			e.printStackTrace();

			throw new TransformationException(e);
		}

	}

	/**
	 * Below Method is used to read the output file content
	 * 
	 * @param fileName
	 * @return XML value
	 */
	private String getFileContentAsString(UUID fileName) {

		try {

			File outputFile = ResourceUtils.getFile(fileName + ".xml");

			String absolutePath = outputFile.getAbsolutePath();

			byte[] readAllBytes = Files.readAllBytes(Paths.get(absolutePath));

			Charset encoding = Charset.defaultCharset();

			String string = new String(readAllBytes, encoding);

			return string;

		} catch (FileNotFoundException e) {
			e.printStackTrace();

		} catch (IOException e) {
			e.printStackTrace();
		}

		return null;

	}

}
