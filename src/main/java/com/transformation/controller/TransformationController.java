/**
 * 
 */
package com.transformation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.MimeTypeUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.transformation.service.TransformationService;

/**
 * @author Ravishankar P
 *
 */
@RestController
@RequestMapping(path = { "/api/v1.0/transform" })
public class TransformationController {

	/**
	 * 
	 */
	@Autowired
	private TransformationService transformationService;

	/**
	 * Below API is used to convert FHIR to CDA, It consumes FHIR XML input and
	 * produces XML
	 * 
	 * @param sourceXml
	 * @return
	 */
	@PostMapping(path = "/fhirToCda", produces = { MimeTypeUtils.APPLICATION_XML_VALUE })
	public Object convertFhirToCda(@RequestBody String sourceXml) {

		return transformationService.convertFhirToCda(sourceXml);

	}

	/**
	 * Below API is used to convert CDA to FHIR,It consumes CDA XML input and
	 * produces XML
	 * 
	 * @param sourceXml
	 * @return
	 */
	@PostMapping(path = "/cdaToFhir", produces = { MimeTypeUtils.APPLICATION_XML_VALUE })
	public Object convertCdaToFhir(@RequestBody String sourceXml) {

		return transformationService.convertCdaToFhir(sourceXml);

	}

}
