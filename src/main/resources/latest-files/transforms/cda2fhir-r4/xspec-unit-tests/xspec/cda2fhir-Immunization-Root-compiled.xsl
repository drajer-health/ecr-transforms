<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                exclude-result-prefixes="#all"
                version="3.0">
   <!-- the tested stylesheet -->
   <xsl:import href="file:/C:/Users/minigrrl/Dropbox/12_SourceControl/GitHub/Lantana/FHIRTransforms/transforms/cda2fhir-r4/SaxonPE-cda2fhir.xslt"/>
   <!-- XSpec library modules providing tools -->
   <xsl:include href="file:/C:/Program%20Files/Oxygen%20XML%20Developer%2024/frameworks/xspec/src/common/runtime-utils.xsl"/>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}stylesheet-uri"
                 as="Q{http://www.w3.org/2001/XMLSchema}anyURI">file:/C:/Users/minigrrl/Dropbox/12_SourceControl/GitHub/Lantana/FHIRTransforms/transforms/cda2fhir-r4/SaxonPE-cda2fhir.xslt</xsl:variable>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}xspec-uri"
                 as="Q{http://www.w3.org/2001/XMLSchema}anyURI">file:/C:/Users/minigrrl/Dropbox/12_SourceControl/GitHub/Lantana/FHIRTransforms/transforms/cda2fhir-r4/xspec-unit-tests/cda2fhir-Immunization-Root.xspec</xsl:variable>
   <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}is-external"
                 as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                 select="false()"/>
   <!-- the main template to run the suite -->
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}main"
                 as="empty-sequence()">
      <xsl:context-item use="absent"/>
      <!-- info message -->
      <xsl:message>
         <xsl:text>Testing with </xsl:text>
         <xsl:value-of select="system-property('Q{http://www.w3.org/1999/XSL/Transform}product-name')"/>
         <xsl:text> </xsl:text>
         <xsl:value-of select="system-property('Q{http://www.w3.org/1999/XSL/Transform}product-version')"/>
      </xsl:message>
      <!-- set up the result document (the report) -->
      <xsl:result-document format="Q{{http://www.jenitennison.com/xslt/xspec}}xml-report-serialization-parameters">
         <xsl:element name="report" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:attribute name="xspec" namespace="">file:/C:/Users/minigrrl/Dropbox/12_SourceControl/GitHub/Lantana/FHIRTransforms/transforms/cda2fhir-r4/xspec-unit-tests/cda2fhir-Immunization-Root.xspec</xsl:attribute>
            <xsl:attribute name="stylesheet" namespace="">file:/C:/Users/minigrrl/Dropbox/12_SourceControl/GitHub/Lantana/FHIRTransforms/transforms/cda2fhir-r4/SaxonPE-cda2fhir.xslt</xsl:attribute>
            <xsl:attribute name="date" namespace="" select="current-dateTime()"/>
            <!-- invoke each compiled top-level x:scenario -->
            <xsl:for-each select="1 to 1">
               <xsl:choose>
                  <xsl:when test=". eq 1">
                     <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1"/>
                  </xsl:when>
                  <xsl:otherwise>
                     <xsl:message terminate="yes">ERROR: Unhandled scenario invocation</xsl:message>
                  </xsl:otherwise>
               </xsl:choose>
            </xsl:for-each>
         </xsl:element>
      </xsl:result-document>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}scenario)">
      <xsl:context-item use="absent"/>
      <xsl:message>Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']'</xsl:message>
      <xsl:element name="scenario" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1</xsl:attribute>
         <xsl:attribute name="xspec" namespace="">file:/C:/Users/minigrrl/Dropbox/12_SourceControl/GitHub/Lantana/FHIRTransforms/transforms/cda2fhir-r4/xspec-unit-tests/cda2fhir-Immunization-Root.xspec</xsl:attribute>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']'</xsl:text>
         </xsl:element>
         <xsl:element name="input-wrap" namespace="">
            <xsl:element name="x:context" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="href" namespace="">file:/C:/Users/minigrrl/Dropbox/12_SourceControl/GitHub/Lantana/FHIRTransforms/samples/cda/eICR-R3/eICR-CDA-001_R3.xml</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d52e0-doc"
                       as="document-node()"
                       select="doc('file:/C:/Users/minigrrl/Dropbox/12_SourceControl/GitHub/Lantana/FHIRTransforms/samples/cda/eICR-R3/eICR-CDA-001_R3.xml')"/>
         <xsl:variable name="Q{urn:x-xspec:compile:impl}context-d52e0"
                       select="$Q{urn:x-xspec:compile:impl}context-d52e0-doc ! ( . )"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}context"
                       select="$Q{urn:x-xspec:compile:impl}context-d52e0"/>
         <xsl:variable name="Q{http://www.jenitennison.com/xslt/xspec}result" as="item()*">
            <xsl:apply-templates select="$Q{urn:x-xspec:compile:impl}context-d52e0"/>
         </xsl:variable>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            <xsl:with-param name="report-name" select="'result'"/>
         </xsl:call-template>
         <!-- invoke each compiled x:expect -->
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect1">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect2">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect3">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect4">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect5">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect6">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect7">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect8">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect9">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect10">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect11">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect12">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect13">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect14">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect15">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
         <xsl:call-template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect16">
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}context"/>
            <xsl:with-param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                            select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect1"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be two Immunization resources</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e4" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization) = 2"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization) = 2"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be two Immunization resources'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect1</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be two Immunization resources</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization) = 2</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e4"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect2"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be an Immunization.meta.profile=http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e6" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization/fhir:meta/fhir:profile[@value='http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization'])&gt;0"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization/fhir:meta/fhir:profile[@value='http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization'])&gt;0"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be an Immunization.meta.profile=http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect2</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be an Immunization.meta.profile=http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization/fhir:meta/fhir:profile[@value='http://hl7.org/fhir/us/core/StructureDefinition/us-core-immunization'])&gt;0</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e6"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect3"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be two Immunization.identifier</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e8" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization/fhir:identifier)=2"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization/fhir:identifier)=2"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be two Immunization.identifier'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect3</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be two Immunization.identifier </xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization/fhir:identifier)=2</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e8"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect4"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be an Immunization.value exists</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e9" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization/fhir:identifier/fhir:value)=2"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization/fhir:identifier/fhir:value)=2"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be an Immunization.value exists'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect4</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be an Immunization.value exists</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization/fhir:identifier/fhir:value)=2</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e9"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect5"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be two Immunization.status</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e11" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization/fhir:status)=2"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization/fhir:status)=2"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be two Immunization.status'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect5</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be two Immunization.status</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization/fhir:status)=2</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e11"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect6"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be two Immunization.vaccineCode.coding.system exists</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e13" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization/fhir:vaccineCode/fhir:coding/fhir:system)=2"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization/fhir:vaccineCode/fhir:coding/fhir:system)=2"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be two Immunization.vaccineCode.coding.system exists'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect6</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be two Immunization.vaccineCode.coding.system exists</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization/fhir:vaccineCode/fhir:coding/fhir:system)=2</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e13"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect7"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be an Immunization.vaccineCode.coding.code exists</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e15" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization/fhir:vaccineCode/fhir:coding/fhir:code)=2"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization/fhir:vaccineCode/fhir:coding/fhir:code)=2"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be an Immunization.vaccineCode.coding.code exists'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect7</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be an Immunization.vaccineCode.coding.code exists</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization/fhir:vaccineCode/fhir:coding/fhir:code)=2</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e15"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect8"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be an Immunization.vaccineCode.coding.display exists</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e16" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization/fhir:vaccineCode/fhir:coding/fhir:display)=2"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization/fhir:vaccineCode/fhir:coding/fhir:display)=2"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be an Immunization.vaccineCode.coding.display exists'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect8</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be an Immunization.vaccineCode.coding.display exists</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization/fhir:vaccineCode/fhir:coding/fhir:display)=2</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e16"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect9"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be an Immunization.patient.reference exists</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e18" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization/fhir:patient/fhir:reference)=2"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization/fhir:patient/fhir:reference)=2"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be an Immunization.patient.reference exists'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect9</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be an Immunization.patient.reference exists</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization/fhir:patient/fhir:reference)=2</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e18"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect10"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be an Immunization.occurenceDateTime exists</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e20" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization/fhir:occurrenceDateTime)=2"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization/fhir:occurrenceDateTime)=2"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be an Immunization.occurenceDateTime exists'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect10</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be an Immunization.occurenceDateTime exists</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization/fhir:occurrenceDateTime)=2</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e20"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect11"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be an Immunization.primarySource exists</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e22" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization/fhir:primarySource)=2"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization/fhir:primarySource)=2"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be an Immunization.primarySource exists'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect11</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be an Immunization.primarySource exists</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization/fhir:primarySource)=2</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e22"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect12"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be an Immunization.route.coding.system exists</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e24" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization/fhir:route/fhir:coding/fhir:system)=2"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization/fhir:route/fhir:coding/fhir:system)=2"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be an Immunization.route.coding.system exists'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect12</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be an Immunization.route.coding.system exists</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization/fhir:route/fhir:coding/fhir:system)=2</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e24"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect13"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be an Immunization.route.coding.code exists</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e25" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization/fhir:route/fhir:coding/fhir:code)=2"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization/fhir:route/fhir:coding/fhir:code)=2"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be an Immunization.route.coding.code exists'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect13</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be an Immunization.route.coding.code exists</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization/fhir:route/fhir:coding/fhir:code)=2</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e25"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect14"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be an Immunization.route.coding.display exists</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e27" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization/fhir:route/fhir:coding/fhir:display)=2"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization/fhir:route/fhir:coding/fhir:display)=2"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be an Immunization.route.coding.display exists'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect14</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be an Immunization.route.coding.display exists</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization/fhir:route/fhir:coding/fhir:display)=2</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e27"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect15"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be an Immunization.doseQuantity.value</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e29" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization/fhir:doseQuantity/fhir:value)=1"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization/fhir:doseQuantity/fhir:value)=1"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be an Immunization.doseQuantity.value'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect15</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be an Immunization.doseQuantity.value</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization/fhir:doseQuantity/fhir:value)=1</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e29"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
   <xsl:template name="Q{http://www.jenitennison.com/xslt/xspec}scenario1-expect16"
                 as="element(Q{http://www.jenitennison.com/xslt/xspec}test)">
      <xsl:context-item use="absent"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}context"
                 as="item()*"
                 required="yes"/>
      <xsl:param name="Q{http://www.jenitennison.com/xslt/xspec}result"
                 as="item()*"
                 required="yes"/>
      <xsl:message>There should be an Immunization.doseQuantity.unit</xsl:message>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}expect-d50e30" select="()"><!--expected result--></xsl:variable>
      <!-- wrap $x:result into a document node if possible -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-items" as="item()*">
         <xsl:choose>
            <xsl:when test="exists($Q{http://www.jenitennison.com/xslt/xspec}result) and Q{http://www.jenitennison.com/xslt/xspec}wrappable-sequence($Q{http://www.jenitennison.com/xslt/xspec}result)">
               <xsl:sequence select="Q{http://www.jenitennison.com/xslt/xspec}wrap-nodes($Q{http://www.jenitennison.com/xslt/xspec}result)"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence select="$Q{http://www.jenitennison.com/xslt/xspec}result"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <!-- evaluate the predicate with $x:result (or its wrapper document node) as context item if it is a single item; if not, evaluate the predicate without context item -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}test-result" as="item()*">
         <xsl:choose>
            <xsl:when test="count($Q{urn:x-xspec:compile:impl}test-items) eq 1">
               <xsl:for-each select="$Q{urn:x-xspec:compile:impl}test-items">
                  <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                                xmlns:cda="urn:hl7-org:v3"
                                xmlns:fhir="http://hl7.org/fhir"
                                xmlns:lcg="http://www.lantanagroup.com"
                                select="count(//fhir:Immunization/fhir:doseQuantity/fhir:unit)=1"
                                version="3"/>
               </xsl:for-each>
            </xsl:when>
            <xsl:otherwise>
               <xsl:sequence xmlns:x="http://www.jenitennison.com/xslt/xspec"
                             xmlns:cda="urn:hl7-org:v3"
                             xmlns:fhir="http://hl7.org/fhir"
                             xmlns:lcg="http://www.lantanagroup.com"
                             select="count(//fhir:Immunization/fhir:doseQuantity/fhir:unit)=1"
                             version="3"/>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:variable name="Q{urn:x-xspec:compile:impl}boolean-test"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean"
                    select="$Q{urn:x-xspec:compile:impl}test-result instance of Q{http://www.w3.org/2001/XMLSchema}boolean"/>
      <!-- did the test pass? -->
      <xsl:variable name="Q{urn:x-xspec:compile:impl}successful"
                    as="Q{http://www.w3.org/2001/XMLSchema}boolean">
         <xsl:choose>
            <xsl:when test="$Q{urn:x-xspec:compile:impl}boolean-test">
               <xsl:sequence select="$Q{urn:x-xspec:compile:impl}test-result =&gt; boolean()"/>
            </xsl:when>
            <xsl:otherwise>
               <xsl:message terminate="yes">ERROR in x:expect ('Scenario for testing template with match 'cda:substanceAdministration[cda:templateId/@root = '2.16.840.1.113883.10.20.22.4.52'][@moodCode = 'EVN']' There should be an Immunization.doseQuantity.unit'): Non-boolean @test must be accompanied by @as, @href, @select, or child node.</xsl:message>
            </xsl:otherwise>
         </xsl:choose>
      </xsl:variable>
      <xsl:if test="not($Q{urn:x-xspec:compile:impl}successful)">
         <xsl:message>      FAILED</xsl:message>
      </xsl:if>
      <xsl:element name="test" namespace="http://www.jenitennison.com/xslt/xspec">
         <xsl:attribute name="id" namespace="">scenario1-expect16</xsl:attribute>
         <xsl:attribute name="successful"
                        namespace=""
                        select="$Q{urn:x-xspec:compile:impl}successful"/>
         <xsl:element name="label" namespace="http://www.jenitennison.com/xslt/xspec">
            <xsl:text>There should be an Immunization.doseQuantity.unit</xsl:text>
         </xsl:element>
         <xsl:element name="expect-test-wrap" namespace="">
            <xsl:element name="x:expect" namespace="http://www.jenitennison.com/xslt/xspec">
               <xsl:namespace name="cda">urn:hl7-org:v3</xsl:namespace>
               <xsl:namespace name="fhir">http://hl7.org/fhir</xsl:namespace>
               <xsl:namespace name="lcg">http://www.lantanagroup.com</xsl:namespace>
               <xsl:attribute name="test" namespace="">count(//fhir:Immunization/fhir:doseQuantity/fhir:unit)=1</xsl:attribute>
            </xsl:element>
         </xsl:element>
         <xsl:if test="not($Q{urn:x-xspec:compile:impl}boolean-test)">
            <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
               <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}test-result"/>
               <xsl:with-param name="report-name" select="'result'"/>
            </xsl:call-template>
         </xsl:if>
         <xsl:call-template name="Q{urn:x-xspec:common:report-sequence}report-sequence">
            <xsl:with-param name="sequence" select="$Q{urn:x-xspec:compile:impl}expect-d50e30"/>
            <xsl:with-param name="report-name" select="'expect'"/>
         </xsl:call-template>
      </xsl:element>
   </xsl:template>
</xsl:stylesheet>
