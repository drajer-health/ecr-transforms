# FHIR Transforms

## CDA->FHIR

| Transform | Description |
| --------- | ----------- |
| SaxonPE-cda2fhir.xslt | Pre-processes CDA documents to add UUIDs where necessary. Requires a Saxon-PE license. |
| cda2fhir.xslt | Main transform for converting CDA to FHIR. |

To run the CDA->FHIR transforms:

1. You must have a license to Saxon-PE (professional edition.
2. Transform your CDA XML document with the SaxonPE-cda2fhir.xslt stylesheet.
3. If you need the resulting FHIR document to be in JSON
    1. **Do something here...**

### Design notes

* Handling unique identifiers: There are many cases where a unique identifier is needed to produce a valid FHIR resource. This is handled via a two-step transform in the SaxonPE-cda2fhir.xslt transform. This transform first creates a variable that represents the entire CDA document, but that CDA document is pre-processed to include a @lcg:uuid attribute on **every** element. Then, the variable is passed to the regular cda2fhir.xslt transforms. The cda2fhir.xslt transform(s) look for the @lcg:uuid attribute when it needs to have a unique id for the concept it is processing.
* Matching CDA templates - Most of the time, a template is matched based **only** on cda:templateId/@root. This is so that a single code-base can handle multiple versions of a template. Additional <xsl:choose> statements can be added to handle differenecs based on version.
* Binary representation of original CDA document - This is not currently included in the transforms. But, can be by uncommenting lines in c-to-fhir-utility.xslt. When uncommented, an extra bundle entry is created for the lcg:binary element that serializes the entire (original) cda document into a Binary resources.
    * Serialization of the original CDA document occurs by first creating a variable representing the CDA document as a string (see the "serialize" mode templates in c-to-fhir-utility.xslt). Then, it converts that string to base64 binary by using saxon:string-to-base64binary(). This requires a Saxon-PE license.

#### Template nodes
Each resource gets processed by several different modes of templates.

* \#any - The default template (with no mode specified) produces a complete resource
* bundle-entry - This template mode creates an entry in a bundle for the resource
* reference - This template mode creates a reference to the resource it represents

## FHIR->CDA

### Design notes

* Matching a template from a reference
    * Create a variable, and make the value of the variable the result of calling the template "resolve-to-full-url" in the context of the reference
    * Apply templates matching //fhir:entry[fhir:fullUrl/@value = $VARIABLE]/fhir:resource/fhir:*

**Example matching template from reference**

```
<xsl:template match="fhir:context">
    <!-- create a variable that represents the fullUrl of the resource -->
    <xsl:variable name="referenceURI">
        <xsl:call-template name="resolve-to-full-url">
            <xsl:with-param name="referenceURI" select="fhir:reference/@value" />
        </xsl:call-template>
    </xsl:variable>
    
    <!-- husing a for-each to make the "select" shorter -->    
    <xsl:for-each select="//fhir:entry[fhir:fullUrl/@value=$referenceURI]">
        <xsl:apply-templates select="fhir:resource/fhir:*" mode="encounter" />
    </xsl:for-each>
</xsl:template>
```

### Utility Templates

** Named **

| Ttemplate name | Parameters | Description |
| ------- | ---------- | ----------- |
| resolve-to-full-url | referenceURI - the value of the reference<br/>entryFullUrl<br/>currentResourceType | Calculates the fullUrl of the specified reference or entry |
| telecomUse | use | |
| convertURI | uri | |
| Date2TS | date (string)<br/>includeTime (boolean) | Converts a FHIR date string to a CDA-formatted TS string - does not produce entire element |
| remove-history-from-url | fullUrl (string) | Removes the /_history/ portion from a url string |
| make-author | element-name (string)<br/>

** Matches **

| Template  match | Parameters | Description |
| ------- | ---------- | ----------- |
| fhir:telecom | | Produces a CDA telecom |