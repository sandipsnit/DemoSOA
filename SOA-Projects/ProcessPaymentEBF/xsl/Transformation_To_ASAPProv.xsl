<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:svcdoc="http://xmlns.oracle.com/Services/Documentation/V1" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:ns0="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/ReceivedPayment/V1" xmlns:corecomEBO="http://xmlns.oracle.com/EnterpriseObjects/Core/CommonEBO/V1" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:corecomcust="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/Common/V2" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:coreaccountbalanceadjustmentcust="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/EBO/AccountBalanceAdjustment/V2" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:ns1="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/AccountBalanceAdjustment/V2" xmlns:wsa="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:corereceivedpaymentcust="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/EBO/ReceivedPayment/V1" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:xacml="urn:oasis:names:tc:xacml:2.0:policy:schema:cd:04" xmlns:ebocontext="http://xmlns.oracle.com/EBO/BusinessContext/V1" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:corecom="http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2" xmlns:xacml-context="urn:oasis:names:tc:xacml:2.0:context:schema:cd:04" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl svcdoc ns0 corecomEBO corecomcust wsa corereceivedpaymentcust xacml xsd corecom xacml-context coreaccountbalanceadjustmentcust ns1 ebocontext xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <ns1:CreateAccountBalanceAdjustmentListEBM>
         <corecom:EBMHeader>
            <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/@languageCode">
               <xsl:attribute name="languageCode">
                  <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/@languageCode"/>
               </xsl:attribute>
            </xsl:if>
            <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:EBMID">
               <corecom:EBMID>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:EBMID/@schemeID">
                     <xsl:attribute name="schemeID">
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:EBMID/@schemeID"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:EBMID/@schemeAgencyID">
                     <xsl:attribute name="schemeAgencyID">
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:EBMID/@schemeAgencyID"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:EBMID/@schemeVersionID">
                     <xsl:attribute name="schemeVersionID">
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:EBMID/@schemeVersionID"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:EBMID"/>
               </corecom:EBMID>
            </xsl:if>
            <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:EBMName">
               <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:EBMName">
                  <corecom:EBMName>
                     <xsl:if test="@languageCode">
                        <xsl:attribute name="languageCode">
                           <xsl:value-of select="@languageCode"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="@languageLocaleCode">
                        <xsl:attribute name="languageLocaleCode">
                           <xsl:value-of select="@languageLocaleCode"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="."/>
                  </corecom:EBMName>
               </xsl:for-each>
            </xsl:if>
            <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:EBOName">
               <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:EBOName">
                  <corecom:EBOName>
                     <xsl:if test="@languageCode">
                        <xsl:attribute name="languageCode">
                           <xsl:value-of select="@languageCode"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="@languageLocaleCode">
                        <xsl:attribute name="languageLocaleCode">
                           <xsl:value-of select="@languageLocaleCode"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="."/>
                  </corecom:EBOName>
               </xsl:for-each>
            </xsl:if>
            <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:CreationDateTime">
               <corecom:CreationDateTime>
                  <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:CreationDateTime"/>
               </corecom:CreationDateTime>
            </xsl:if>
            <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:RequestEBMID">
               <corecom:RequestEBMID>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:RequestEBMID/@schemeID">
                     <xsl:attribute name="schemeID">
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:RequestEBMID/@schemeID"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:RequestEBMID/@schemeAgencyID">
                     <xsl:attribute name="schemeAgencyID">
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:RequestEBMID/@schemeAgencyID"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:RequestEBMID/@schemeVersionID">
                     <xsl:attribute name="schemeVersionID">
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:RequestEBMID/@schemeVersionID"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:RequestEBMID"/>
               </corecom:RequestEBMID>
            </xsl:if>
            <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:VerbCode">
               <corecom:VerbCode>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:VerbCode/@listID">
                     <xsl:attribute name="listID">
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:VerbCode/@listID"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:VerbCode/@listAgencyID">
                     <xsl:attribute name="listAgencyID">
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:VerbCode/@listAgencyID"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:VerbCode/@listVersionID">
                     <xsl:attribute name="listVersionID">
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:VerbCode/@listVersionID"/>
                     </xsl:attribute>
                  </xsl:if>
                  <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:VerbCode"/>
               </corecom:VerbCode>
            </xsl:if>
            <corecom:MessageProcessingInstruction>
               <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:EnvironmentCode">
                  <corecom:EnvironmentCode>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:EnvironmentCode/@listID">
                        <xsl:attribute name="listID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:EnvironmentCode/@listID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:EnvironmentCode/@listAgencyID">
                        <xsl:attribute name="listAgencyID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:EnvironmentCode/@listAgencyID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:EnvironmentCode/@listVersionID">
                        <xsl:attribute name="listVersionID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:EnvironmentCode/@listVersionID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:EnvironmentCode"/>
                  </corecom:EnvironmentCode>
               </xsl:if>
               <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:DefinitionID">
                  <corecom:DefinitionID>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:DefinitionID/@schemeID">
                        <xsl:attribute name="schemeID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:DefinitionID/@schemeID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:DefinitionID/@schemeAgencyID">
                        <xsl:attribute name="schemeAgencyID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:DefinitionID/@schemeAgencyID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:DefinitionID/@schemeVersionID">
                        <xsl:attribute name="schemeVersionID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:DefinitionID/@schemeVersionID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:DefinitionID"/>
                  </corecom:DefinitionID>
               </xsl:if>
               <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:InstanceID">
                  <corecom:InstanceID>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:InstanceID/@schemeID">
                        <xsl:attribute name="schemeID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:InstanceID/@schemeID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:InstanceID/@schemeAgencyID">
                        <xsl:attribute name="schemeAgencyID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:InstanceID/@schemeAgencyID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:InstanceID/@schemeVersionID">
                        <xsl:attribute name="schemeVersionID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:InstanceID/@schemeVersionID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageProcessingInstruction/corecom:InstanceID"/>
                  </corecom:InstanceID>
               </xsl:if>
            </corecom:MessageProcessingInstruction>
            <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender">
               <corecom:Sender>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ID">
                     <corecom:ID>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ID/@schemeID">
                           <xsl:attribute name="schemeID">
                              <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ID/@schemeID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ID/@schemeAgencyID">
                           <xsl:attribute name="schemeAgencyID">
                              <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ID/@schemeAgencyID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ID/@schemeVersionID">
                           <xsl:attribute name="schemeVersionID">
                              <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ID/@schemeVersionID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ID"/>
                     </corecom:ID>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:Description">
                     <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:Description">
                        <corecom:Description>
                           <xsl:if test="@languageCode">
                              <xsl:attribute name="languageCode">
                                 <xsl:value-of select="@languageCode"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="@languageLocaleCode">
                              <xsl:attribute name="languageLocaleCode">
                                 <xsl:value-of select="@languageLocaleCode"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="."/>
                        </corecom:Description>
                     </xsl:for-each>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:IPAddress">
                     <corecom:IPAddress>
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:IPAddress"/>
                     </corecom:IPAddress>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:SenderMessageID">
                     <corecom:SenderMessageID>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:SenderMessageID/@schemeID">
                           <xsl:attribute name="schemeID">
                              <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:SenderMessageID/@schemeID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:SenderMessageID/@schemeAgencyID">
                           <xsl:attribute name="schemeAgencyID">
                              <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:SenderMessageID/@schemeAgencyID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:SenderMessageID/@schemeVersionID">
                           <xsl:attribute name="schemeVersionID">
                              <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:SenderMessageID/@schemeVersionID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:SenderMessageID"/>
                     </corecom:SenderMessageID>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:TransactionCode">
                     <corecom:TransactionCode>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:TransactionCode/@listID">
                           <xsl:attribute name="listID">
                              <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:TransactionCode/@listID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:TransactionCode/@listAgencyID">
                           <xsl:attribute name="listAgencyID">
                              <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:TransactionCode/@listAgencyID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:TransactionCode/@listVersionID">
                           <xsl:attribute name="listVersionID">
                              <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:TransactionCode/@listVersionID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:TransactionCode"/>
                     </corecom:TransactionCode>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:CallingServiceName">
                     <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:CallingServiceName">
                        <corecom:CallingServiceName>
                           <xsl:if test="@languageCode">
                              <xsl:attribute name="languageCode">
                                 <xsl:value-of select="@languageCode"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="@languageLocaleCode">
                              <xsl:attribute name="languageLocaleCode">
                                 <xsl:value-of select="@languageLocaleCode"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="."/>
                        </corecom:CallingServiceName>
                     </xsl:for-each>
                  </xsl:if>
                  <corecom:Application>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:Application/corecom:ID">
                        <corecom:ID>
                           <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:Application/corecom:ID/@schemeID">
                              <xsl:attribute name="schemeID">
                                 <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:Application/corecom:ID/@schemeID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:Application/corecom:ID/@schemeAgencyID">
                              <xsl:attribute name="schemeAgencyID">
                                 <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:Application/corecom:ID/@schemeAgencyID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:Application/corecom:ID/@schemeVersionID">
                              <xsl:attribute name="schemeVersionID">
                                 <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:Application/corecom:ID/@schemeVersionID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:Application/corecom:ID"/>
                        </corecom:ID>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:Application/corecom:Version">
                        <corecom:Version>
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:Application/corecom:Version"/>
                        </corecom:Version>
                     </xsl:if>
                  </corecom:Application>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ContactName">
                     <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ContactName">
                        <corecom:ContactName>
                           <xsl:if test="@languageCode">
                              <xsl:attribute name="languageCode">
                                 <xsl:value-of select="@languageCode"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="@languageLocaleCode">
                              <xsl:attribute name="languageLocaleCode">
                                 <xsl:value-of select="@languageLocaleCode"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="."/>
                        </corecom:ContactName>
                     </xsl:for-each>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ContactEmail">
                     <corecom:ContactEmail>
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ContactEmail"/>
                     </corecom:ContactEmail>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ContactPhoneNumber">
                     <corecom:ContactPhoneNumber>
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ContactPhoneNumber"/>
                     </corecom:ContactPhoneNumber>
                  </xsl:if>
                  <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ESBHeaderExtension">
                     <corecom:ESBHeaderExtension>
                        <xsl:if test="corecom:Name">
                           <xsl:for-each select="corecom:Name">
                              <corecom:Name>
                                 <xsl:if test="@languageCode">
                                    <xsl:attribute name="languageCode">
                                       <xsl:value-of select="@languageCode"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="@languageLocaleCode">
                                    <xsl:attribute name="languageLocaleCode">
                                       <xsl:value-of select="@languageLocaleCode"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="."/>
                              </corecom:Name>
                           </xsl:for-each>
                        </xsl:if>
                        <xsl:if test="corecom:DataTypeCode">
                           <corecom:DataTypeCode>
                              <xsl:if test="corecom:DataTypeCode/@listID">
                                 <xsl:attribute name="listID">
                                    <xsl:value-of select="corecom:DataTypeCode/@listID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="corecom:DataTypeCode/@listAgencyID">
                                 <xsl:attribute name="listAgencyID">
                                    <xsl:value-of select="corecom:DataTypeCode/@listAgencyID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="corecom:DataTypeCode/@listVersionID">
                                 <xsl:attribute name="listVersionID">
                                    <xsl:value-of select="corecom:DataTypeCode/@listVersionID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="corecom:DataTypeCode"/>
                           </corecom:DataTypeCode>
                        </xsl:if>
                        <xsl:if test="corecom:Value">
                           <xsl:for-each select="corecom:Value">
                              <corecom:Value>
                                 <xsl:value-of select="."/>
                              </corecom:Value>
                           </xsl:for-each>
                        </xsl:if>
                     </corecom:ESBHeaderExtension>
                  </xsl:for-each>
                  <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ObjectCrossReference">
                     <corecom:ObjectCrossReference>
                        <corecom:SenderObjectIdentification>
                           <xsl:if test="corecom:SenderObjectIdentification/corecom:BusinessComponentID">
                              <corecom:BusinessComponentID>
                                 <xsl:if test="corecom:SenderObjectIdentification/corecom:BusinessComponentID/@schemeID">
                                    <xsl:attribute name="schemeID">
                                       <xsl:value-of select="corecom:SenderObjectIdentification/corecom:BusinessComponentID/@schemeID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="corecom:SenderObjectIdentification/corecom:BusinessComponentID/@schemeAgencyID">
                                    <xsl:attribute name="schemeAgencyID">
                                       <xsl:value-of select="corecom:SenderObjectIdentification/corecom:BusinessComponentID/@schemeAgencyID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="corecom:SenderObjectIdentification/corecom:BusinessComponentID/@schemeVersionID">
                                    <xsl:attribute name="schemeVersionID">
                                       <xsl:value-of select="corecom:SenderObjectIdentification/corecom:BusinessComponentID/@schemeVersionID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="corecom:SenderObjectIdentification/corecom:BusinessComponentID"/>
                              </corecom:BusinessComponentID>
                           </xsl:if>
                           <xsl:if test="corecom:SenderObjectIdentification/corecom:ID">
                              <corecom:ID>
                                 <xsl:if test="corecom:SenderObjectIdentification/corecom:ID/@schemeID">
                                    <xsl:attribute name="schemeID">
                                       <xsl:value-of select="corecom:SenderObjectIdentification/corecom:ID/@schemeID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="corecom:SenderObjectIdentification/corecom:ID/@schemeAgencyID">
                                    <xsl:attribute name="schemeAgencyID">
                                       <xsl:value-of select="corecom:SenderObjectIdentification/corecom:ID/@schemeAgencyID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:if test="corecom:SenderObjectIdentification/corecom:ID/@schemeVersionID">
                                    <xsl:attribute name="schemeVersionID">
                                       <xsl:value-of select="corecom:SenderObjectIdentification/corecom:ID/@schemeVersionID"/>
                                    </xsl:attribute>
                                 </xsl:if>
                                 <xsl:value-of select="corecom:SenderObjectIdentification/corecom:ID"/>
                              </corecom:ID>
                           </xsl:if>
                           <xsl:if test="corecom:SenderObjectIdentification/corecom:ContextID">
                              <xsl:for-each select="corecom:SenderObjectIdentification/corecom:ContextID">
                                 <corecom:ContextID>
                                    <xsl:if test="@schemeID">
                                       <xsl:attribute name="schemeID">
                                          <xsl:value-of select="@schemeID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="@schemeAgencyID">
                                       <xsl:attribute name="schemeAgencyID">
                                          <xsl:value-of select="@schemeAgencyID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="@schemeVersionID">
                                       <xsl:attribute name="schemeVersionID">
                                          <xsl:value-of select="@schemeVersionID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="."/>
                                 </corecom:ContextID>
                              </xsl:for-each>
                           </xsl:if>
                           <corecom:ApplicationObjectKey>
                              <xsl:if test="corecom:SenderObjectIdentification/corecom:ApplicationObjectKey/corecom:ID">
                                 <corecom:ID>
                                    <xsl:if test="corecom:SenderObjectIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeID">
                                       <xsl:attribute name="schemeID">
                                          <xsl:value-of select="corecom:SenderObjectIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="corecom:SenderObjectIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeAgencyID">
                                       <xsl:attribute name="schemeAgencyID">
                                          <xsl:value-of select="corecom:SenderObjectIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeAgencyID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="corecom:SenderObjectIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeVersionID">
                                       <xsl:attribute name="schemeVersionID">
                                          <xsl:value-of select="corecom:SenderObjectIdentification/corecom:ApplicationObjectKey/corecom:ID/@schemeVersionID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="corecom:SenderObjectIdentification/corecom:ApplicationObjectKey/corecom:ID"/>
                                 </corecom:ID>
                              </xsl:if>
                              <xsl:if test="corecom:SenderObjectIdentification/corecom:ApplicationObjectKey/corecom:ContextID">
                                 <xsl:for-each select="corecom:SenderObjectIdentification/corecom:ApplicationObjectKey/corecom:ContextID">
                                    <corecom:ContextID>
                                       <xsl:if test="@schemeID">
                                          <xsl:attribute name="schemeID">
                                             <xsl:value-of select="@schemeID"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:if test="@schemeAgencyID">
                                          <xsl:attribute name="schemeAgencyID">
                                             <xsl:value-of select="@schemeAgencyID"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:if test="@schemeVersionID">
                                          <xsl:attribute name="schemeVersionID">
                                             <xsl:value-of select="@schemeVersionID"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="."/>
                                    </corecom:ContextID>
                                 </xsl:for-each>
                              </xsl:if>
                           </corecom:ApplicationObjectKey>
                           <xsl:for-each select="corecom:SenderObjectIdentification/corecom:AlternateObjectKey">
                              <corecom:AlternateObjectKey>
                                 <xsl:if test="corecom:ID">
                                    <corecom:ID>
                                       <xsl:if test="corecom:ID/@schemeID">
                                          <xsl:attribute name="schemeID">
                                             <xsl:value-of select="corecom:ID/@schemeID"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:if test="corecom:ID/@schemeAgencyID">
                                          <xsl:attribute name="schemeAgencyID">
                                             <xsl:value-of select="corecom:ID/@schemeAgencyID"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:if test="corecom:ID/@schemeVersionID">
                                          <xsl:attribute name="schemeVersionID">
                                             <xsl:value-of select="corecom:ID/@schemeVersionID"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="corecom:ID"/>
                                    </corecom:ID>
                                 </xsl:if>
                                 <xsl:if test="corecom:ContextID">
                                    <xsl:for-each select="corecom:ContextID">
                                       <corecom:ContextID>
                                          <xsl:if test="@schemeID">
                                             <xsl:attribute name="schemeID">
                                                <xsl:value-of select="@schemeID"/>
                                             </xsl:attribute>
                                          </xsl:if>
                                          <xsl:if test="@schemeAgencyID">
                                             <xsl:attribute name="schemeAgencyID">
                                                <xsl:value-of select="@schemeAgencyID"/>
                                             </xsl:attribute>
                                          </xsl:if>
                                          <xsl:if test="@schemeVersionID">
                                             <xsl:attribute name="schemeVersionID">
                                                <xsl:value-of select="@schemeVersionID"/>
                                             </xsl:attribute>
                                          </xsl:if>
                                          <xsl:value-of select="."/>
                                       </corecom:ContextID>
                                    </xsl:for-each>
                                 </xsl:if>
                              </corecom:AlternateObjectKey>
                           </xsl:for-each>
                           <corecom:Revision>
                              <xsl:if test="corecom:SenderObjectIdentification/corecom:Revision/corecom:Number">
                                 <corecom:Number>
                                    <xsl:if test="corecom:SenderObjectIdentification/corecom:Revision/corecom:Number/@schemeID">
                                       <xsl:attribute name="schemeID">
                                          <xsl:value-of select="corecom:SenderObjectIdentification/corecom:Revision/corecom:Number/@schemeID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="corecom:SenderObjectIdentification/corecom:Revision/corecom:Number/@schemeAgencyID">
                                       <xsl:attribute name="schemeAgencyID">
                                          <xsl:value-of select="corecom:SenderObjectIdentification/corecom:Revision/corecom:Number/@schemeAgencyID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="corecom:SenderObjectIdentification/corecom:Revision/corecom:Number/@schemeVersionID">
                                       <xsl:attribute name="schemeVersionID">
                                          <xsl:value-of select="corecom:SenderObjectIdentification/corecom:Revision/corecom:Number/@schemeVersionID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="corecom:SenderObjectIdentification/corecom:Revision/corecom:Number"/>
                                 </corecom:Number>
                              </xsl:if>
                              <xsl:if test="corecom:SenderObjectIdentification/corecom:Revision/corecom:Description">
                                 <xsl:for-each select="corecom:SenderObjectIdentification/corecom:Revision/corecom:Description">
                                    <corecom:Description>
                                       <xsl:if test="@languageCode">
                                          <xsl:attribute name="languageCode">
                                             <xsl:value-of select="@languageCode"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:if test="@languageLocaleCode">
                                          <xsl:attribute name="languageLocaleCode">
                                             <xsl:value-of select="@languageLocaleCode"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="."/>
                                    </corecom:Description>
                                 </xsl:for-each>
                              </xsl:if>
                              <xsl:if test="corecom:SenderObjectIdentification/corecom:Revision/corecom:Code">
                                 <corecom:Code>
                                    <xsl:if test="corecom:SenderObjectIdentification/corecom:Revision/corecom:Code/@listID">
                                       <xsl:attribute name="listID">
                                          <xsl:value-of select="corecom:SenderObjectIdentification/corecom:Revision/corecom:Code/@listID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="corecom:SenderObjectIdentification/corecom:Revision/corecom:Code/@listAgencyID">
                                       <xsl:attribute name="listAgencyID">
                                          <xsl:value-of select="corecom:SenderObjectIdentification/corecom:Revision/corecom:Code/@listAgencyID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="corecom:SenderObjectIdentification/corecom:Revision/corecom:Code/@listVersionID">
                                       <xsl:attribute name="listVersionID">
                                          <xsl:value-of select="corecom:SenderObjectIdentification/corecom:Revision/corecom:Code/@listVersionID"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="corecom:SenderObjectIdentification/corecom:Revision/corecom:Code"/>
                                 </corecom:Code>
                              </xsl:if>
                              <xsl:if test="corecom:SenderObjectIdentification/corecom:Revision/corecom:EffectiveDate">
                                 <corecom:EffectiveDate>
                                    <xsl:value-of select="corecom:SenderObjectIdentification/corecom:Revision/corecom:EffectiveDate"/>
                                 </corecom:EffectiveDate>
                              </xsl:if>
                              <xsl:if test="corecom:SenderObjectIdentification/corecom:Revision/corecom:EffectiveEndDate">
                                 <corecom:EffectiveEndDate>
                                    <xsl:value-of select="corecom:SenderObjectIdentification/corecom:Revision/corecom:EffectiveEndDate"/>
                                 </corecom:EffectiveEndDate>
                              </xsl:if>
                              <xsl:if test="corecom:SenderObjectIdentification/corecom:Revision/corecom:Label">
                                 <xsl:for-each select="corecom:SenderObjectIdentification/corecom:Revision/corecom:Label">
                                    <corecom:Label>
                                       <xsl:if test="@languageCode">
                                          <xsl:attribute name="languageCode">
                                             <xsl:value-of select="@languageCode"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:if test="@languageLocaleCode">
                                          <xsl:attribute name="languageLocaleCode">
                                             <xsl:value-of select="@languageLocaleCode"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="."/>
                                    </corecom:Label>
                                 </xsl:for-each>
                              </xsl:if>
                              <xsl:if test="corecom:SenderObjectIdentification/corecom:Revision/corecom:Reason">
                                 <xsl:for-each select="corecom:SenderObjectIdentification/corecom:Revision/corecom:Reason">
                                    <corecom:Reason>
                                       <xsl:if test="@languageCode">
                                          <xsl:attribute name="languageCode">
                                             <xsl:value-of select="@languageCode"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:if test="@languageLocaleCode">
                                          <xsl:attribute name="languageLocaleCode">
                                             <xsl:value-of select="@languageLocaleCode"/>
                                          </xsl:attribute>
                                       </xsl:if>
                                       <xsl:value-of select="."/>
                                    </corecom:Reason>
                                 </xsl:for-each>
                              </xsl:if>
                           </corecom:Revision>
                        </corecom:SenderObjectIdentification>
                        <xsl:if test="corecom:EBOID">
                           <corecom:EBOID>
                              <xsl:if test="corecom:EBOID/@schemeID">
                                 <xsl:attribute name="schemeID">
                                    <xsl:value-of select="corecom:EBOID/@schemeID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="corecom:EBOID/@schemeAgencyID">
                                 <xsl:attribute name="schemeAgencyID">
                                    <xsl:value-of select="corecom:EBOID/@schemeAgencyID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="corecom:EBOID/@schemeVersionID">
                                 <xsl:attribute name="schemeVersionID">
                                    <xsl:value-of select="corecom:EBOID/@schemeVersionID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="corecom:EBOID"/>
                           </corecom:EBOID>
                        </xsl:if>
                     </corecom:ObjectCrossReference>
                  </xsl:for-each>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress">
                     <corecom:WSAddress>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:From">
                           <wsa:From>
                              <wsa:Address>
                                 <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:From/wsa:Address"/>
                              </wsa:Address>
                              <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:From/wsa:PortType">
                                 <wsa:PortType>
                                    <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:From/wsa:PortType"/>
                                 </wsa:PortType>
                              </xsl:if>
                              <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:From/wsa:ServiceName">
                                 <wsa:ServiceName>
                                    <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:From/wsa:ServiceName/@PortName">
                                       <xsl:attribute name="PortName">
                                          <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:From/wsa:ServiceName/@PortName"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:From/wsa:ServiceName"/>
                                 </wsa:ServiceName>
                              </xsl:if>
                           </wsa:From>
                        </xsl:if>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:To">
                           <wsa:To>
                              <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:To"/>
                           </wsa:To>
                        </xsl:if>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:ReplyTo">
                           <wsa:ReplyTo>
                              <wsa:Address>
                                 <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:ReplyTo/wsa:Address"/>
                              </wsa:Address>
                              <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:ReplyTo/wsa:PortType">
                                 <wsa:PortType>
                                    <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:ReplyTo/wsa:PortType"/>
                                 </wsa:PortType>
                              </xsl:if>
                              <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:ReplyTo/wsa:ServiceName">
                                 <wsa:ServiceName>
                                    <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:ReplyTo/wsa:ServiceName/@PortName">
                                       <xsl:attribute name="PortName">
                                          <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:ReplyTo/wsa:ServiceName/@PortName"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:ReplyTo/wsa:ServiceName"/>
                                 </wsa:ServiceName>
                              </xsl:if>
                           </wsa:ReplyTo>
                        </xsl:if>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:FaultTo">
                           <wsa:FaultTo>
                              <wsa:Address>
                                 <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:FaultTo/wsa:Address"/>
                              </wsa:Address>
                              <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:FaultTo/wsa:PortType">
                                 <wsa:PortType>
                                    <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:FaultTo/wsa:PortType"/>
                                 </wsa:PortType>
                              </xsl:if>
                              <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:FaultTo/wsa:ServiceName">
                                 <wsa:ServiceName>
                                    <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:FaultTo/wsa:ServiceName/@PortName">
                                       <xsl:attribute name="PortName">
                                          <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:FaultTo/wsa:ServiceName/@PortName"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:FaultTo/wsa:ServiceName"/>
                                 </wsa:ServiceName>
                              </xsl:if>
                           </wsa:FaultTo>
                        </xsl:if>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:Recipient">
                           <wsa:Recipient>
                              <wsa:Address>
                                 <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:Recipient/wsa:Address"/>
                              </wsa:Address>
                              <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:Recipient/wsa:PortType">
                                 <wsa:PortType>
                                    <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:Recipient/wsa:PortType"/>
                                 </wsa:PortType>
                              </xsl:if>
                              <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:Recipient/wsa:ServiceName">
                                 <wsa:ServiceName>
                                    <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:Recipient/wsa:ServiceName/@PortName">
                                       <xsl:attribute name="PortName">
                                          <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:Recipient/wsa:ServiceName/@PortName"/>
                                       </xsl:attribute>
                                    </xsl:if>
                                    <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:WSAddress/wsa:Recipient/wsa:ServiceName"/>
                                 </wsa:ServiceName>
                              </xsl:if>
                           </wsa:Recipient>
                        </xsl:if>
                     </corecom:WSAddress>
                  </xsl:if>
               </corecom:Sender>
            </xsl:if>
            <corecom:Target>
               <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ID">
                  <corecom:ID>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ID/@schemeID">
                        <xsl:attribute name="schemeID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ID/@schemeID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ID/@schemeAgencyID">
                        <xsl:attribute name="schemeAgencyID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ID/@schemeAgencyID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ID/@schemeVersionID">
                        <xsl:attribute name="schemeVersionID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ID/@schemeVersionID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ID"/>
                  </corecom:ID>
               </xsl:if>
               <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:OverrideRoutingIndicator">
                  <corecom:OverrideRoutingIndicator>
                     <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:OverrideRoutingIndicator"/>
                  </corecom:OverrideRoutingIndicator>
               </xsl:if>
               <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ServiceName">
                  <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ServiceName">
                     <corecom:ServiceName>
                        <xsl:if test="@languageCode">
                           <xsl:attribute name="languageCode">
                              <xsl:value-of select="@languageCode"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="@languageLocaleCode">
                           <xsl:attribute name="languageLocaleCode">
                              <xsl:value-of select="@languageLocaleCode"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="."/>
                     </corecom:ServiceName>
                  </xsl:for-each>
               </xsl:if>
               <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ApplicationTypeCode">
                  <corecom:ApplicationTypeCode>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ApplicationTypeCode/@listID">
                        <xsl:attribute name="listID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ApplicationTypeCode/@listID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ApplicationTypeCode/@listAgencyID">
                        <xsl:attribute name="listAgencyID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ApplicationTypeCode/@listAgencyID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ApplicationTypeCode/@listVersionID">
                        <xsl:attribute name="listVersionID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ApplicationTypeCode/@listVersionID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:ApplicationTypeCode"/>
                  </corecom:ApplicationTypeCode>
               </xsl:if>
               <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:EndPointURI">
                  <corecom:EndPointURI>
                     <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Target/corecom:EndPointURI"/>
                  </corecom:EndPointURI>
               </xsl:if>
            </corecom:Target>
            <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:BusinessScope">
               <corecom:BusinessScope>
                  <xsl:if test="corecom:ID">
                     <corecom:ID>
                        <xsl:if test="corecom:ID/@schemeID">
                           <xsl:attribute name="schemeID">
                              <xsl:value-of select="corecom:ID/@schemeID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="corecom:ID/@schemeAgencyID">
                           <xsl:attribute name="schemeAgencyID">
                              <xsl:value-of select="corecom:ID/@schemeAgencyID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="corecom:ID/@schemeVersionID">
                           <xsl:attribute name="schemeVersionID">
                              <xsl:value-of select="corecom:ID/@schemeVersionID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="corecom:ID"/>
                     </corecom:ID>
                  </xsl:if>
                  <xsl:if test="corecom:InstanceID">
                     <corecom:InstanceID>
                        <xsl:if test="corecom:InstanceID/@schemeID">
                           <xsl:attribute name="schemeID">
                              <xsl:value-of select="corecom:InstanceID/@schemeID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="corecom:InstanceID/@schemeAgencyID">
                           <xsl:attribute name="schemeAgencyID">
                              <xsl:value-of select="corecom:InstanceID/@schemeAgencyID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="corecom:InstanceID/@schemeVersionID">
                           <xsl:attribute name="schemeVersionID">
                              <xsl:value-of select="corecom:InstanceID/@schemeVersionID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="corecom:InstanceID"/>
                     </corecom:InstanceID>
                  </xsl:if>
                  <xsl:if test="corecom:BusinessScopeTypeCode">
                     <corecom:BusinessScopeTypeCode>
                        <xsl:if test="corecom:BusinessScopeTypeCode/@listID">
                           <xsl:attribute name="listID">
                              <xsl:value-of select="corecom:BusinessScopeTypeCode/@listID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="corecom:BusinessScopeTypeCode/@listAgencyID">
                           <xsl:attribute name="listAgencyID">
                              <xsl:value-of select="corecom:BusinessScopeTypeCode/@listAgencyID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="corecom:BusinessScopeTypeCode/@listVersionID">
                           <xsl:attribute name="listVersionID">
                              <xsl:value-of select="corecom:BusinessScopeTypeCode/@listVersionID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="corecom:BusinessScopeTypeCode"/>
                     </corecom:BusinessScopeTypeCode>
                  </xsl:if>
                  <xsl:if test="corecom:EnterpriseServiceName">
                     <xsl:for-each select="corecom:EnterpriseServiceName">
                        <corecom:EnterpriseServiceName>
                           <xsl:if test="@languageCode">
                              <xsl:attribute name="languageCode">
                                 <xsl:value-of select="@languageCode"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="@languageLocaleCode">
                              <xsl:attribute name="languageLocaleCode">
                                 <xsl:value-of select="@languageLocaleCode"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="."/>
                        </corecom:EnterpriseServiceName>
                     </xsl:for-each>
                  </xsl:if>
                  <xsl:if test="corecom:EnterpriseServiceOperationName">
                     <corecom:EnterpriseServiceOperationName>
                        <xsl:if test="corecom:EnterpriseServiceOperationName/@listID">
                           <xsl:attribute name="listID">
                              <xsl:value-of select="corecom:EnterpriseServiceOperationName/@listID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="corecom:EnterpriseServiceOperationName/@listAgencyID">
                           <xsl:attribute name="listAgencyID">
                              <xsl:value-of select="corecom:EnterpriseServiceOperationName/@listAgencyID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="corecom:EnterpriseServiceOperationName/@listVersionID">
                           <xsl:attribute name="listVersionID">
                              <xsl:value-of select="corecom:EnterpriseServiceOperationName/@listVersionID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="corecom:EnterpriseServiceOperationName"/>
                     </corecom:EnterpriseServiceOperationName>
                  </xsl:if>
               </corecom:BusinessScope>
            </xsl:for-each>
            <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:EBMTracking">
               <corecom:EBMTracking>
                  <xsl:if test="corecom:SequenceNumber">
                     <corecom:SequenceNumber>
                        <xsl:value-of select="corecom:SequenceNumber"/>
                     </corecom:SequenceNumber>
                  </xsl:if>
                  <xsl:if test="corecom:ExecutionUnitID">
                     <corecom:ExecutionUnitID>
                        <xsl:if test="corecom:ExecutionUnitID/@schemeID">
                           <xsl:attribute name="schemeID">
                              <xsl:value-of select="corecom:ExecutionUnitID/@schemeID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="corecom:ExecutionUnitID/@schemeAgencyID">
                           <xsl:attribute name="schemeAgencyID">
                              <xsl:value-of select="corecom:ExecutionUnitID/@schemeAgencyID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="corecom:ExecutionUnitID/@schemeVersionID">
                           <xsl:attribute name="schemeVersionID">
                              <xsl:value-of select="corecom:ExecutionUnitID/@schemeVersionID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="corecom:ExecutionUnitID"/>
                     </corecom:ExecutionUnitID>
                  </xsl:if>
                  <xsl:if test="corecom:ExecutionUnitName">
                     <xsl:for-each select="corecom:ExecutionUnitName">
                        <corecom:ExecutionUnitName>
                           <xsl:if test="@languageCode">
                              <xsl:attribute name="languageCode">
                                 <xsl:value-of select="@languageCode"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="@languageLocaleCode">
                              <xsl:attribute name="languageLocaleCode">
                                 <xsl:value-of select="@languageLocaleCode"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="."/>
                        </corecom:ExecutionUnitName>
                     </xsl:for-each>
                  </xsl:if>
                  <xsl:if test="corecom:ImplementationCode">
                     <corecom:ImplementationCode>
                        <xsl:value-of select="corecom:ImplementationCode"/>
                     </corecom:ImplementationCode>
                  </xsl:if>
                  <xsl:if test="corecom:ActivityDateTime">
                     <corecom:ActivityDateTime>
                        <xsl:value-of select="corecom:ActivityDateTime"/>
                     </corecom:ActivityDateTime>
                  </xsl:if>
                  <corecom:IntermediateMessageHop>
                     <xsl:if test="corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode">
                        <corecom:SenderResourceTypeCode>
                           <xsl:if test="corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode/@listID">
                              <xsl:attribute name="listID">
                                 <xsl:value-of select="corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode/@listID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode/@listAgencyID">
                              <xsl:attribute name="listAgencyID">
                                 <xsl:value-of select="corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode/@listAgencyID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode/@listVersionID">
                              <xsl:attribute name="listVersionID">
                                 <xsl:value-of select="corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode/@listVersionID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode"/>
                        </corecom:SenderResourceTypeCode>
                     </xsl:if>
                     <xsl:if test="corecom:IntermediateMessageHop/corecom:SenderResourceID">
                        <corecom:SenderResourceID>
                           <xsl:if test="corecom:IntermediateMessageHop/corecom:SenderResourceID/@schemeID">
                              <xsl:attribute name="schemeID">
                                 <xsl:value-of select="corecom:IntermediateMessageHop/corecom:SenderResourceID/@schemeID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:IntermediateMessageHop/corecom:SenderResourceID/@schemeAgencyID">
                              <xsl:attribute name="schemeAgencyID">
                                 <xsl:value-of select="corecom:IntermediateMessageHop/corecom:SenderResourceID/@schemeAgencyID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:IntermediateMessageHop/corecom:SenderResourceID/@schemeVersionID">
                              <xsl:attribute name="schemeVersionID">
                                 <xsl:value-of select="corecom:IntermediateMessageHop/corecom:SenderResourceID/@schemeVersionID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="corecom:IntermediateMessageHop/corecom:SenderResourceID"/>
                        </corecom:SenderResourceID>
                     </xsl:if>
                     <xsl:if test="corecom:IntermediateMessageHop/corecom:SenderMessageID">
                        <corecom:SenderMessageID>
                           <xsl:if test="corecom:IntermediateMessageHop/corecom:SenderMessageID/@schemeID">
                              <xsl:attribute name="schemeID">
                                 <xsl:value-of select="corecom:IntermediateMessageHop/corecom:SenderMessageID/@schemeID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:IntermediateMessageHop/corecom:SenderMessageID/@schemeAgencyID">
                              <xsl:attribute name="schemeAgencyID">
                                 <xsl:value-of select="corecom:IntermediateMessageHop/corecom:SenderMessageID/@schemeAgencyID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:IntermediateMessageHop/corecom:SenderMessageID/@schemeVersionID">
                              <xsl:attribute name="schemeVersionID">
                                 <xsl:value-of select="corecom:IntermediateMessageHop/corecom:SenderMessageID/@schemeVersionID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="corecom:IntermediateMessageHop/corecom:SenderMessageID"/>
                        </corecom:SenderMessageID>
                     </xsl:if>
                  </corecom:IntermediateMessageHop>
               </corecom:EBMTracking>
            </xsl:for-each>
            <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:FaultNotification">
               <corecom:FaultNotification>
                  <xsl:if test="corecom:BusinessComponentID">
                     <corecom:BusinessComponentID>
                        <xsl:if test="corecom:BusinessComponentID/@schemeID">
                           <xsl:attribute name="schemeID">
                              <xsl:value-of select="corecom:BusinessComponentID/@schemeID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="corecom:BusinessComponentID/@schemeAgencyID">
                           <xsl:attribute name="schemeAgencyID">
                              <xsl:value-of select="corecom:BusinessComponentID/@schemeAgencyID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="corecom:BusinessComponentID/@schemeVersionID">
                           <xsl:attribute name="schemeVersionID">
                              <xsl:value-of select="corecom:BusinessComponentID/@schemeVersionID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="corecom:BusinessComponentID"/>
                     </corecom:BusinessComponentID>
                  </xsl:if>
                  <xsl:if test="corecom:ReportingDateTime">
                     <corecom:ReportingDateTime>
                        <xsl:value-of select="corecom:ReportingDateTime"/>
                     </corecom:ReportingDateTime>
                  </xsl:if>
                  <xsl:if test="corecom:CorrectiveAction">
                     <xsl:for-each select="corecom:CorrectiveAction">
                        <corecom:CorrectiveAction>
                           <xsl:if test="@languageCode">
                              <xsl:attribute name="languageCode">
                                 <xsl:value-of select="@languageCode"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="@languageLocaleCode">
                              <xsl:attribute name="languageLocaleCode">
                                 <xsl:value-of select="@languageLocaleCode"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="."/>
                        </corecom:CorrectiveAction>
                     </xsl:for-each>
                  </xsl:if>
                  <corecom:FaultMessage>
                     <xsl:if test="corecom:FaultMessage/corecom:Code">
                        <corecom:Code>
                           <xsl:if test="corecom:FaultMessage/corecom:Code/@listID">
                              <xsl:attribute name="listID">
                                 <xsl:value-of select="corecom:FaultMessage/corecom:Code/@listID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:FaultMessage/corecom:Code/@listAgencyID">
                              <xsl:attribute name="listAgencyID">
                                 <xsl:value-of select="corecom:FaultMessage/corecom:Code/@listAgencyID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:FaultMessage/corecom:Code/@listVersionID">
                              <xsl:attribute name="listVersionID">
                                 <xsl:value-of select="corecom:FaultMessage/corecom:Code/@listVersionID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="corecom:FaultMessage/corecom:Code"/>
                        </corecom:Code>
                     </xsl:if>
                     <xsl:if test="corecom:FaultMessage/corecom:Text">
                        <xsl:for-each select="corecom:FaultMessage/corecom:Text">
                           <corecom:Text>
                              <xsl:if test="@languageCode">
                                 <xsl:attribute name="languageCode">
                                    <xsl:value-of select="@languageCode"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="@languageLocaleCode">
                                 <xsl:attribute name="languageLocaleCode">
                                    <xsl:value-of select="@languageLocaleCode"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="."/>
                           </corecom:Text>
                        </xsl:for-each>
                     </xsl:if>
                     <xsl:if test="corecom:FaultMessage/corecom:Severity">
                        <corecom:Severity>
                           <xsl:if test="corecom:FaultMessage/corecom:Severity/@listID">
                              <xsl:attribute name="listID">
                                 <xsl:value-of select="corecom:FaultMessage/corecom:Severity/@listID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:FaultMessage/corecom:Severity/@listAgencyID">
                              <xsl:attribute name="listAgencyID">
                                 <xsl:value-of select="corecom:FaultMessage/corecom:Severity/@listAgencyID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:FaultMessage/corecom:Severity/@listVersionID">
                              <xsl:attribute name="listVersionID">
                                 <xsl:value-of select="corecom:FaultMessage/corecom:Severity/@listVersionID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="corecom:FaultMessage/corecom:Severity"/>
                        </corecom:Severity>
                     </xsl:if>
                     <xsl:if test="corecom:FaultMessage/corecom:Stack">
                        <xsl:for-each select="corecom:FaultMessage/corecom:Stack">
                           <corecom:Stack>
                              <xsl:if test="@languageCode">
                                 <xsl:attribute name="languageCode">
                                    <xsl:value-of select="@languageCode"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="@languageLocaleCode">
                                 <xsl:attribute name="languageLocaleCode">
                                    <xsl:value-of select="@languageLocaleCode"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="."/>
                           </corecom:Stack>
                        </xsl:for-each>
                     </xsl:if>
                     <corecom:IntermediateMessageHop>
                        <xsl:if test="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode">
                           <corecom:SenderResourceTypeCode>
                              <xsl:if test="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode/@listID">
                                 <xsl:attribute name="listID">
                                    <xsl:value-of select="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode/@listID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode/@listAgencyID">
                                 <xsl:attribute name="listAgencyID">
                                    <xsl:value-of select="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode/@listAgencyID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode/@listVersionID">
                                 <xsl:attribute name="listVersionID">
                                    <xsl:value-of select="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode/@listVersionID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceTypeCode"/>
                           </corecom:SenderResourceTypeCode>
                        </xsl:if>
                        <xsl:if test="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceID">
                           <corecom:SenderResourceID>
                              <xsl:if test="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceID/@schemeID">
                                 <xsl:attribute name="schemeID">
                                    <xsl:value-of select="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceID/@schemeID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceID/@schemeAgencyID">
                                 <xsl:attribute name="schemeAgencyID">
                                    <xsl:value-of select="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceID/@schemeAgencyID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceID/@schemeVersionID">
                                 <xsl:attribute name="schemeVersionID">
                                    <xsl:value-of select="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceID/@schemeVersionID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderResourceID"/>
                           </corecom:SenderResourceID>
                        </xsl:if>
                        <xsl:if test="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderMessageID">
                           <corecom:SenderMessageID>
                              <xsl:if test="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderMessageID/@schemeID">
                                 <xsl:attribute name="schemeID">
                                    <xsl:value-of select="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderMessageID/@schemeID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderMessageID/@schemeAgencyID">
                                 <xsl:attribute name="schemeAgencyID">
                                    <xsl:value-of select="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderMessageID/@schemeAgencyID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderMessageID/@schemeVersionID">
                                 <xsl:attribute name="schemeVersionID">
                                    <xsl:value-of select="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderMessageID/@schemeVersionID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="corecom:FaultMessage/corecom:IntermediateMessageHop/corecom:SenderMessageID"/>
                           </corecom:SenderMessageID>
                        </xsl:if>
                     </corecom:IntermediateMessageHop>
                  </corecom:FaultMessage>
                  <corecom:FaultingService>
                     <xsl:if test="corecom:FaultingService/corecom:ID">
                        <corecom:ID>
                           <xsl:if test="corecom:FaultingService/corecom:ID/@schemeID">
                              <xsl:attribute name="schemeID">
                                 <xsl:value-of select="corecom:FaultingService/corecom:ID/@schemeID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:FaultingService/corecom:ID/@schemeAgencyID">
                              <xsl:attribute name="schemeAgencyID">
                                 <xsl:value-of select="corecom:FaultingService/corecom:ID/@schemeAgencyID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:FaultingService/corecom:ID/@schemeVersionID">
                              <xsl:attribute name="schemeVersionID">
                                 <xsl:value-of select="corecom:FaultingService/corecom:ID/@schemeVersionID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="corecom:FaultingService/corecom:ID"/>
                        </corecom:ID>
                     </xsl:if>
                     <xsl:if test="corecom:FaultingService/corecom:ImplementationCode">
                        <corecom:ImplementationCode>
                           <xsl:value-of select="corecom:FaultingService/corecom:ImplementationCode"/>
                        </corecom:ImplementationCode>
                     </xsl:if>
                     <xsl:if test="corecom:FaultingService/corecom:InstanceID">
                        <corecom:InstanceID>
                           <xsl:if test="corecom:FaultingService/corecom:InstanceID/@schemeID">
                              <xsl:attribute name="schemeID">
                                 <xsl:value-of select="corecom:FaultingService/corecom:InstanceID/@schemeID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:FaultingService/corecom:InstanceID/@schemeAgencyID">
                              <xsl:attribute name="schemeAgencyID">
                                 <xsl:value-of select="corecom:FaultingService/corecom:InstanceID/@schemeAgencyID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:FaultingService/corecom:InstanceID/@schemeVersionID">
                              <xsl:attribute name="schemeVersionID">
                                 <xsl:value-of select="corecom:FaultingService/corecom:InstanceID/@schemeVersionID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="corecom:FaultingService/corecom:InstanceID"/>
                        </corecom:InstanceID>
                     </xsl:if>
                     <xsl:if test="corecom:FaultingService/corecom:ExecutionContextID">
                        <corecom:ExecutionContextID>
                           <xsl:if test="corecom:FaultingService/corecom:ExecutionContextID/@schemeID">
                              <xsl:attribute name="schemeID">
                                 <xsl:value-of select="corecom:FaultingService/corecom:ExecutionContextID/@schemeID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:FaultingService/corecom:ExecutionContextID/@schemeAgencyID">
                              <xsl:attribute name="schemeAgencyID">
                                 <xsl:value-of select="corecom:FaultingService/corecom:ExecutionContextID/@schemeAgencyID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:FaultingService/corecom:ExecutionContextID/@schemeVersionID">
                              <xsl:attribute name="schemeVersionID">
                                 <xsl:value-of select="corecom:FaultingService/corecom:ExecutionContextID/@schemeVersionID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="corecom:FaultingService/corecom:ExecutionContextID"/>
                        </corecom:ExecutionContextID>
                     </xsl:if>
                  </corecom:FaultingService>
               </corecom:FaultNotification>
            </xsl:for-each>
            <corecom:MessageBatch>
               <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:ID">
                  <corecom:ID>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:ID/@schemeID">
                        <xsl:attribute name="schemeID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:ID/@schemeID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:ID/@schemeAgencyID">
                        <xsl:attribute name="schemeAgencyID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:ID/@schemeAgencyID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:ID/@schemeVersionID">
                        <xsl:attribute name="schemeVersionID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:ID/@schemeVersionID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:ID"/>
                  </corecom:ID>
               </xsl:if>
               <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:Name">
                  <corecom:Name>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:Name/@languageCode">
                        <xsl:attribute name="languageCode">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:Name/@languageCode"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:Name/@languageLocaleCode">
                        <xsl:attribute name="languageLocaleCode">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:Name/@languageLocaleCode"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:Name"/>
                  </corecom:Name>
               </xsl:if>
               <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:StatusCode">
                  <corecom:StatusCode>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:StatusCode/@listID">
                        <xsl:attribute name="listID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:StatusCode/@listID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:StatusCode/@listAgencyID">
                        <xsl:attribute name="listAgencyID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:StatusCode/@listAgencyID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:StatusCode/@listVersionID">
                        <xsl:attribute name="listVersionID">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:StatusCode/@listVersionID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:StatusCode"/>
                  </corecom:StatusCode>
               </xsl:if>
               <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:ResponseMessage">
                  <corecom:ResponseMessage>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:ResponseMessage/@languageCode">
                        <xsl:attribute name="languageCode">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:ResponseMessage/@languageCode"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:ResponseMessage/@languageLocaleCode">
                        <xsl:attribute name="languageLocaleCode">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:ResponseMessage/@languageLocaleCode"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:ResponseMessage"/>
                  </corecom:ResponseMessage>
               </xsl:if>
               <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:MessageBatch/corecom:BatchParameter">
                  <corecom:BatchParameter>
                     <xsl:if test="corecom:Name">
                        <corecom:Name>
                           <xsl:if test="corecom:Name/@languageCode">
                              <xsl:attribute name="languageCode">
                                 <xsl:value-of select="corecom:Name/@languageCode"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:Name/@languageLocaleCode">
                              <xsl:attribute name="languageLocaleCode">
                                 <xsl:value-of select="corecom:Name/@languageLocaleCode"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="corecom:Name"/>
                        </corecom:Name>
                     </xsl:if>
                     <xsl:if test="corecom:DataTypeCode">
                        <corecom:DataTypeCode>
                           <xsl:if test="corecom:DataTypeCode/@listID">
                              <xsl:attribute name="listID">
                                 <xsl:value-of select="corecom:DataTypeCode/@listID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:DataTypeCode/@listAgencyID">
                              <xsl:attribute name="listAgencyID">
                                 <xsl:value-of select="corecom:DataTypeCode/@listAgencyID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="corecom:DataTypeCode/@listVersionID">
                              <xsl:attribute name="listVersionID">
                                 <xsl:value-of select="corecom:DataTypeCode/@listVersionID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="corecom:DataTypeCode"/>
                        </corecom:DataTypeCode>
                     </xsl:if>
                     <xsl:if test="corecom:Value">
                        <corecom:Value>
                           <xsl:value-of select="corecom:Value"/>
                        </corecom:Value>
                     </xsl:if>
                  </corecom:BatchParameter>
               </xsl:for-each>
            </corecom:MessageBatch>
            <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/xacml-context:Request">
               <xacml-context:Request>
                  <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/xacml-context:Request/xacml-context:Subject">
                     <xacml-context:Subject>
                        <xsl:if test="@SubjectCategory">
                           <xsl:attribute name="SubjectCategory">
                              <xsl:value-of select="@SubjectCategory"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:for-each select="xacml-context:Attribute">
                           <xacml-context:Attribute>
                              <xsl:attribute name="AttributeId">
                                 <xsl:value-of select="@AttributeId"/>
                              </xsl:attribute>
                              <xsl:attribute name="DataType">
                                 <xsl:value-of select="@DataType"/>
                              </xsl:attribute>
                              <xsl:if test="@Issuer">
                                 <xsl:attribute name="Issuer">
                                    <xsl:value-of select="@Issuer"/>
                                 </xsl:attribute>
                              </xsl:if>
                           </xacml-context:Attribute>
                        </xsl:for-each>
                     </xacml-context:Subject>
                  </xsl:for-each>
                  <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/xacml-context:Request/xacml-context:Resource">
                     <xacml-context:Resource>
                        <xsl:for-each select="xacml-context:Attribute">
                           <xacml-context:Attribute>
                              <xsl:attribute name="AttributeId">
                                 <xsl:value-of select="@AttributeId"/>
                              </xsl:attribute>
                              <xsl:attribute name="DataType">
                                 <xsl:value-of select="@DataType"/>
                              </xsl:attribute>
                              <xsl:if test="@Issuer">
                                 <xsl:attribute name="Issuer">
                                    <xsl:value-of select="@Issuer"/>
                                 </xsl:attribute>
                              </xsl:if>
                           </xacml-context:Attribute>
                        </xsl:for-each>
                     </xacml-context:Resource>
                  </xsl:for-each>
                  <xacml-context:Action>
                     <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/xacml-context:Request/xacml-context:Action/xacml-context:Attribute">
                        <xacml-context:Attribute>
                           <xsl:attribute name="AttributeId">
                              <xsl:value-of select="@AttributeId"/>
                           </xsl:attribute>
                           <xsl:attribute name="DataType">
                              <xsl:value-of select="@DataType"/>
                           </xsl:attribute>
                           <xsl:if test="@Issuer">
                              <xsl:attribute name="Issuer">
                                 <xsl:value-of select="@Issuer"/>
                              </xsl:attribute>
                           </xsl:if>
                        </xacml-context:Attribute>
                     </xsl:for-each>
                  </xacml-context:Action>
                  <xacml-context:Environment>
                     <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/xacml-context:Request/xacml-context:Environment/xacml-context:Attribute">
                        <xacml-context:Attribute>
                           <xsl:attribute name="AttributeId">
                              <xsl:value-of select="@AttributeId"/>
                           </xsl:attribute>
                           <xsl:attribute name="DataType">
                              <xsl:value-of select="@DataType"/>
                           </xsl:attribute>
                           <xsl:if test="@Issuer">
                              <xsl:attribute name="Issuer">
                                 <xsl:value-of select="@Issuer"/>
                              </xsl:attribute>
                           </xsl:if>
                        </xacml-context:Attribute>
                     </xsl:for-each>
                  </xacml-context:Environment>
               </xacml-context:Request>
            </xsl:if>
            <corecom:B2BProfile>
               <corecom:SenderTradingPartner>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:B2BProfile/corecom:SenderTradingPartner/corecom:TradingPartnerID">
                     <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:B2BProfile/corecom:SenderTradingPartner/corecom:TradingPartnerID">
                        <corecom:TradingPartnerID>
                           <xsl:if test="@schemeID">
                              <xsl:attribute name="schemeID">
                                 <xsl:value-of select="@schemeID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="@schemeAgencyID">
                              <xsl:attribute name="schemeAgencyID">
                                 <xsl:value-of select="@schemeAgencyID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="@schemeVersionID">
                              <xsl:attribute name="schemeVersionID">
                                 <xsl:value-of select="@schemeVersionID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="."/>
                        </corecom:TradingPartnerID>
                     </xsl:for-each>
                  </xsl:if>
               </corecom:SenderTradingPartner>
               <xsl:for-each select="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:B2BProfile/corecom:ReceiverTradingPartner">
                  <corecom:ReceiverTradingPartner>
                     <xsl:if test="corecom:TradingPartnerID">
                        <xsl:for-each select="corecom:TradingPartnerID">
                           <corecom:TradingPartnerID>
                              <xsl:if test="@schemeID">
                                 <xsl:attribute name="schemeID">
                                    <xsl:value-of select="@schemeID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="@schemeAgencyID">
                                 <xsl:attribute name="schemeAgencyID">
                                    <xsl:value-of select="@schemeAgencyID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:if test="@schemeVersionID">
                                 <xsl:attribute name="schemeVersionID">
                                    <xsl:value-of select="@schemeVersionID"/>
                                 </xsl:attribute>
                              </xsl:if>
                              <xsl:value-of select="."/>
                           </corecom:TradingPartnerID>
                        </xsl:for-each>
                     </xsl:if>
                  </corecom:ReceiverTradingPartner>
               </xsl:for-each>
            </corecom:B2BProfile>
         </corecom:EBMHeader>
         <ns1:DataArea>
            <ns1:CreateAccountBalanceAdjustmentList>
               <corecom:Identification>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/corecom:Identification/corecom:ID">
                     <corecom:ID>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/corecom:Identification/corecom:ID/@schemeID">
                           <xsl:attribute name="schemeID">
                              <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/corecom:Identification/corecom:ID/@schemeID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/corecom:Identification/corecom:ID/@schemeAgencyID">
                           <xsl:attribute name="schemeAgencyID">
                              <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/corecom:Identification/corecom:ID/@schemeAgencyID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:if test="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/corecom:Identification/corecom:ID/@schemeVersionID">
                           <xsl:attribute name="schemeVersionID">
                              <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/corecom:Identification/corecom:ID/@schemeVersionID"/>
                           </xsl:attribute>
                        </xsl:if>
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/corecom:Identification/corecom:ID"/>
                     </corecom:ID>
                  </xsl:if>
               </corecom:Identification>
               <ns1:TypeCode>
                  <xsl:value-of select="dvm:lookupValue('oramds:/apps/AIAMetaData/dvm/ADJUSTMENT_TYPE.dvm','SEBL_01',/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/ns0:Custom/corereceivedpaymentcust:Type,'COMMON',true())"/>
               </ns1:TypeCode>
               <ns1:AdjustmentDateTime>
                  <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/ns0:AuthorizationDateTime"/>
               </ns1:AdjustmentDateTime>
               <ns1:ReasonCode>
                  <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/ns0:Custom/corereceivedpaymentcust:ReasonForRequest"/>
               </ns1:ReasonCode>
               <xsl:if test="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/ns0:AuthorizationAmount">
                  <ns1:Amount>
                     <xsl:if test="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/ns0:AuthorizationAmount/@currencyCode">
                        <xsl:attribute name="currencyCode">
                           <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/ns0:AuthorizationAmount/@currencyCode"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/ns0:AuthorizationAmount"/>
                  </ns1:Amount>
               </xsl:if>
               <ns1:Custom>
                  <coreaccountbalanceadjustmentcust:MSISDN>
                     <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/ns0:Custom/corereceivedpaymentcust:MSISDN"/>
                  </coreaccountbalanceadjustmentcust:MSISDN>
                  <coreaccountbalanceadjustmentcust:TYPECODE>
                     <xsl:value-of select="dvm:lookupValue('oramds:/apps/AIAMetaData/dvm/ADJUSTMENT_TYPE.dvm','SEBL_01',/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/ns0:Custom/corereceivedpaymentcust:Type,'COMMON',true())"/>
                  </coreaccountbalanceadjustmentcust:TYPECODE>
                  <coreaccountbalanceadjustmentcust:TYPE>
                     <xsl:value-of select="dvm:lookupValue('oramds:/apps/AIAMetaData/dvm/ADJUSTMENT_TYPE.dvm','SEBL_01',/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/ns0:Custom/corereceivedpaymentcust:Type,'COMMON',true())"/>
                  </coreaccountbalanceadjustmentcust:TYPE>
                  <coreaccountbalanceadjustmentcust:GROUPACCOUNTID>
                     <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/ns0:Custom/corereceivedpaymentcust:VFQAccountNumber"/>
                  </coreaccountbalanceadjustmentcust:GROUPACCOUNTID>
                  <coreaccountbalanceadjustmentcust:SERVICE_NUM>
                     <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/ns0:Custom/corereceivedpaymentcust:MSISDN"/>
                  </coreaccountbalanceadjustmentcust:SERVICE_NUM>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ID='BRM_01'">
                     <coreaccountbalanceadjustmentcust:PaymentId>
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/ns0:Custom/corereceivedpaymentcust:BillNo"/>
                     </coreaccountbalanceadjustmentcust:PaymentId>
                  </xsl:if>
                  <xsl:if test="/ns0:CreateReceivedPaymentEBM/corecom:EBMHeader/corecom:Sender/corecom:ID='SEBL_01'">
                     <coreaccountbalanceadjustmentcust:PaymentId>
                        <xsl:value-of select="/ns0:CreateReceivedPaymentEBM/ns0:DataArea/ns0:CreateReceivedPayment/ns0:Custom/corereceivedpaymentcust:PaymentId"/>
                     </coreaccountbalanceadjustmentcust:PaymentId>
                  </xsl:if>
               </ns1:Custom>
            </ns1:CreateAccountBalanceAdjustmentList>
         </ns1:DataArea>
      </ns1:CreateAccountBalanceAdjustmentListEBM>
   </xsl:template>
</xsl:stylesheet>
