/**
 * 
 */
package com.transformation.service;

/**
 * @author Ravishankar Puttaraju
 *
 */
public interface TransformationService {

	/**
	 * @param xml
	 * @return
	 */
	Object convertFhirToCda(String xml);

	/**
	 * @param sourceXml
	 * @return
	 */
	Object convertCdaToFhir(String sourceXml);

}
