<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pymnt="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/ReceivedPayment/V1" xmlns:pns1="http://xmlns.oracle.com/vfq/p1/AsapOrder/correlationset" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns2="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/Common/V2" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:client="http://xmlns.oracle.com/Autopayment/ProcessPaymentEBF/ProcessPaymentEBF" xmlns:ns0="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:asap="http://www.vf.com/VFQA" xmlns:ns6="http://xmlns.oracle.com/vfq/p1/AsapOrder" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="http://www.vf.com/VFQA" xmlns:ns10="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/EBO/ReceivedPayment/V1" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns5="urn:oasis:names:tc:xacml:2.0:policy:schema:cd:04" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:tns="http://xmlns.oracle.com/pcbpel/adapter/jms/" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns3="http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2" xmlns:ns4="urn:oasis:names:tc:xacml:2.0:context:schema:cd:04" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl pymnt plnk wsdl ns2 client ns0 ns1 ns5 xsd ns3 ns4 bpws pns1 asap ns6 tns xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap ns10">
   <xsl:variable name="Sender" select="/pymnt:CreateReceivedPaymentEBM/ns3:EBMHeader/ns3:Sender/ns3:ID"/>
   <xsl:template match="/">
      <ns1:ASAP_REQUEST>
         <ns1:GLOBAL_PARAMETERS>
            <xsl:if test="$Sender ='BRM_01'">
               <ns1:REQUEST_ID>
                  <xsl:value-of select="concat(&quot;AIA&quot;,&quot;_&quot;,/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:Custom/ns10:BillNo,&quot;_&quot;,xp20:current-dateTime())"/>
               </ns1:REQUEST_ID>
            </xsl:if>
            <xsl:if test="$Sender ='SEBL_01'">
               <ns1:REQUEST_ID>
                  <xsl:value-of select="concat(&quot;AIA&quot;,&quot;_&quot;,/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:Custom/ns10:PaymentId,&quot;_&quot;,xp20:current-dateTime())"/>
               </ns1:REQUEST_ID>
            </xsl:if>
            <ns1:UPSTREAM_SYSTEM>
               <xsl:text disable-output-escaping="no">OSM</xsl:text>
            </ns1:UPSTREAM_SYSTEM>
            <ns1:SCHEDULE>
               <xsl:value-of select="substring-before(xp20:current-dateTime(),'+')"/>
            </ns1:SCHEDULE>
            <ns1:MSISDN>
               <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:Custom/ns10:MSISDN"/>
            </ns1:MSISDN>
            <ns1:PRIMARY_SCP_ID>
               <xsl:text disable-output-escaping="no">LABMAS2</xsl:text>
            </ns1:PRIMARY_SCP_ID>
            <ns1:SECONDARY_SCP_ID>
               <xsl:value-of select="/ns1:ASAP_REQUEST/ns1:GLOBAL_PARAMETERS/ns1:SECONDARY_SCP_ID"/>
            </ns1:SECONDARY_SCP_ID>
            <ns1:SUREPAY_SO_GRP_NAME>
               <xsl:text disable-output-escaping="no">inasgrp</xsl:text>
            </ns1:SUREPAY_SO_GRP_NAME>
            <ns1:GROUP_ACCOUNT_ID>
               <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:Custom/ns10:VFQAccountNumber"/>
            </ns1:GROUP_ACCOUNT_ID>
         </ns1:GLOBAL_PARAMETERS>
         <ns1:SERVICES>
            <ns1:SERVICE>
               <xsl:attribute name="BundleId">
                  <xsl:text disable-output-escaping="no">MODIFY_GSM</xsl:text>
               </xsl:attribute>
               <xsl:attribute name="index">
                  <xsl:value-of select="1"/>
               </xsl:attribute>
               <ns1:ACTION_TYPE>ADJ_BALANCE</ns1:ACTION_TYPE>
               <ns1:AMOUNT>
                  <xsl:value-of select="xp20:abs(/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:AuthorizationAmount)"/>
               </ns1:AMOUNT>
               <ns1:REASON_CODE/>
               <ns1:ADJ>
                  <xsl:text disable-output-escaping="no">INCR</xsl:text>
               </ns1:ADJ>
               <ns1:IDTYPE>
                  <xsl:text disable-output-escaping="no">G</xsl:text>
               </ns1:IDTYPE>
            </ns1:SERVICE>
         </ns1:SERVICES>
      </ns1:ASAP_REQUEST>
   </xsl:template>
</xsl:stylesheet>
