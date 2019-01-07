<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:imp1="http://www.oracle.com/VFQ/CIL/Campaign" xmlns:aia="http://www.oracle.com/XSL/Transform/java/oracle.apps.aia.core.xpath.AIAFunctions" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/Campaign_Application/CreateAdjustmentEBF/VFQ_UPDATE_PROVISIONINGSTATUS_AIA_QUEUE" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:ns2="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/Common/V2" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:custadjebo="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/EBO/AccountBalanceAdjustment/V2" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:client="http://xmlns.oracle.com/VFQA_FL/CreateAdjustmentEBF/CreateAdjustmentEBF" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:adjebo="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/AccountBalanceAdjustment/V2" xmlns:ns0="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:jca="http://xmlns.oracle.com/pcbpel/wsdl/jca/" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns7="http://www.vfq.techmahindra.com/SMS" xmlns:ns6="urn:oasis:names:tc:xacml:2.0:policy:schema:cd:04" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns1="http://schemas.oracle.com/bpel/extension" xmlns:corecom="http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2" xmlns:ns5="urn:oasis:names:tc:xacml:2.0:context:schema:cd:04" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl plnk ns2 wsdl custadjebo client adjebo ns0 ns6 xsd ns1 corecom ns5 imp1 tns jca ns7 aia bpws xp20 bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <xsl:param name="StatusCode"/>
      <xsl:param name="StatusDescription"/>
      <imp1:UpdateProvisioningStatusRequest>
         <xsl:for-each select="/adjebo:CreateAccountBalanceAdjustmentListEBM/adjebo:DataArea/adjebo:CreateAccountBalanceAdjustmentList">
            <imp1:MSISDN>
               <xsl:value-of select="./adjebo:Custom/custadjebo:MSISDN"/>
            </imp1:MSISDN>
            <imp1:Channel>BSS</imp1:Channel>
            <imp1:Campaign>
               <imp1:CampaignID>
                  <xsl:value-of select="./adjebo:Custom/custadjebo:CampaignID"/>
               </imp1:CampaignID>
               <imp1:TreatmentCode>
                  <xsl:value-of select="./adjebo:Custom/custadjebo:TreatmentCode"/>
               </imp1:TreatmentCode>
               <imp1:OfferCode>
                  <xsl:value-of select="./adjebo:Custom/custadjebo:OfferCode"/>
               </imp1:OfferCode>
            </imp1:Campaign>
            <imp1:Provisioning>
               <imp1:ChannelTransactionID>
                  <xsl:value-of select="./adjebo:Custom/custadjebo:ChannelTransactionID"/>
               </imp1:ChannelTransactionID>
               <imp1:Status>0</imp1:Status>
               <imp1:StatusDescription>SUCCESS</imp1:StatusDescription>
               <imp1:RequestID>
                  <xsl:value-of select="./corecom:Identification/corecom:ID"/>
               </imp1:RequestID>
               <imp1:Time>
                  <xsl:value-of select="substring(xp20:current-dateTime(),1,19)"/>
               </imp1:Time>
            </imp1:Provisioning>
         </xsl:for-each>
      </imp1:UpdateProvisioningStatusRequest>
   </xsl:template>
</xsl:stylesheet>
