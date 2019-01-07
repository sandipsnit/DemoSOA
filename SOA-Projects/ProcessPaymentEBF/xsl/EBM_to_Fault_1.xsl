<?xml version='1.0' encoding='utf-8'?>
<xsl:stylesheet version="1.0" xmlns:ehdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.esb.server.headers.ESBHeaderFunctions" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:orcl="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:xml="http://www.w3.org/XML/1998/namespace" xmlns:pymnt="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/ReceivedPayment/V1" xmlns:ns10="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/EBO/ReceivedPayment/V1" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:corecom="http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2" exclude-result-prefixes="xsl plnk xml corecom ehdr aia xp20 ora orcl bpws hwf xref ids" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue">
   <xsl:template match="/">
      <corecom:Fault>
         <xsl:apply-templates select="*/corecom:EBMHeader"/>
         <corecom:FaultNotification>
            <corecom:ReportingDateTime>
               <xsl:value-of select="xp20:current-dateTime()"/>
            </corecom:ReportingDateTime>
            <corecom:CorrectiveAction/>
            <corecom:FaultMessage>
               <corecom:Code/>
               <corecom:Text/>
               <corecom:Severity/>
               <corecom:Stack/>
               <corecom:ApplicationFaultData/>
               <xsl:apply-templates select="*/corecom:EBMHeader/corecom:EBMTracking/corecom:IntermediateMessageHop"/>
            </corecom:FaultMessage>
            <corecom:FaultingService>
               <corecom:ID/>
               <corecom:ImplementationCode/>
               <corecom:InstanceID/>
            </corecom:FaultingService>
         </corecom:FaultNotification>
      </corecom:Fault>
   </xsl:template>
   <xsl:template match="corecom:EBMHeader">
      <corecom:EBMReference>
         <xsl:apply-templates select="corecom:EBMID"/>
         <xsl:apply-templates select="corecom:EBMName"/>
         <xsl:apply-templates select="corecom:EBOName"/>
         <xsl:apply-templates select="corecom:VerbCode"/>
         <xsl:apply-templates select="corecom:BusinessScope[corecom:BusinessScopeTypeCode='BusinessProcess']"/>
         <xsl:apply-templates select="corecom:Sender"/>
         <xsl:apply-templates select="corecom:Target"/>
      </corecom:EBMReference>
   </xsl:template>
   <xsl:template match="corecom:BusinessScope">
      <corecom:BusinessScopeReference>
         <xsl:apply-templates select="corecom:ID"/>
         <xsl:apply-templates select="corecom:InstanceID"/>
         <xsl:apply-templates select="corecom:EnterpriseServiceName"/>
         <xsl:apply-templates select="corecom:EnterpriseServiceOperationName"/>
      </corecom:BusinessScopeReference>
   </xsl:template>
   <xsl:template match="corecom:Sender">
      <corecom:SenderReference>
         <xsl:apply-templates select="corecom:ID"/>
         <xsl:apply-templates select="corecom:SenderMessageID"/>
         <xsl:apply-templates select="corecom:TransactionCode"/>
         <xsl:apply-templates select="corecom:ObjectCrossReference"/>
         <corecom:ObjectCrossReference>
            <corecom:SenderObjectIdentification>
               <corecom:AlternateObjectKey>
                  <corecom:ID>
                     <xsl:attribute name="schemeID">
                        <xsl:text disable-output-escaping="no">CUSTOMERPARTY_ACCOUNTID</xsl:text>
                     </xsl:attribute>
                     <xsl:attribute name="schemeAgencyID">
                        <xsl:text disable-output-escaping="no">COMMON</xsl:text>
                     </xsl:attribute>
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/corecom:PayFromPartyReference/corecom:CustomerPartyAccountIdentification/corecom:BusinessComponentID"/>
                  </corecom:ID>
               </corecom:AlternateObjectKey>
               <corecom:AlternateObjectKey>
                  <corecom:ID>
                     <xsl:attribute name="schemeID">
                        <xsl:text disable-output-escaping="no">CUSTOMERPARTY_ACCOUNTID</xsl:text>
                     </xsl:attribute>
                     <xsl:attribute name="schemeAgencyID">
                        <xsl:text disable-output-escaping="no">SEBL_01</xsl:text>
                     </xsl:attribute>
                     <xsl:value-of select="xref:lookupXRef(&quot;oramds:/apps/AIAMetaData/xref/CUSTOMERPARTY_ACCOUNTID.xref&quot;,&quot;COMMON&quot;,/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/corecom:PayFromPartyReference/corecom:CustomerPartyAccountIdentification/corecom:BusinessComponentID,&quot;SEBL_01&quot;,true())"/>
                  </corecom:ID>
               </corecom:AlternateObjectKey>
            </corecom:SenderObjectIdentification>
         </corecom:ObjectCrossReference>
         <xsl:apply-templates select="corecom:Application"/>
      </corecom:SenderReference>
   </xsl:template>
   <xsl:template match="corecom:Target">
      <corecom:Target>
         <xsl:apply-templates select="corecom:ID"/>
      </corecom:Target>
   </xsl:template>
   <xsl:template match="*/corecom:EBMHeader/corecom:EBMTracking/corecom:IntermediateMessageHop">
      <corecom:IntermediateMessageHop>
         <xsl:apply-templates select="corecom:SenderResourceTypeCode"/>
         <xsl:apply-templates select="corecom:SenderResourceID"/>
         <xsl:apply-templates select="corecom:SenderMessageID"/>
      </corecom:IntermediateMessageHop>
   </xsl:template>
   <xsl:template match="*">
      <xsl:copy-of select="."/>
   </xsl:template>
</xsl:stylesheet>
