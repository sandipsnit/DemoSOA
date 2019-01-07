<?xml version='1.0' encoding='UTF-8'?>
<xsl:stylesheet version="1.0" xmlns:xp20="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.Xpath20" xmlns:bpws="http://schemas.xmlsoap.org/ws/2003/03/business-process/" xmlns:bpel="http://docs.oasis-open.org/wsbpel/2.0/process/executable" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:pymnt="http://xmlns.oracle.com/EnterpriseObjects/Core/EBO/ReceivedPayment/V1" xmlns:bpm="http://xmlns.oracle.com/bpmn20/extensions" xmlns:plnk="http://schemas.xmlsoap.org/ws/2003/05/partner-link/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:ns2="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/Common/V2" xmlns:ora="http://schemas.oracle.com/xpath/extension" xmlns:socket="http://www.oracle.com/XSL/Transform/java/oracle.tip.adapter.socket.ProtocolTranslator" xmlns:client="http://xmlns.oracle.com/Autopayment/ProcessPaymentEBF/ProcessPaymentEBF" xmlns:ns0="http://schemas.xmlsoap.org/ws/2003/03/addressing" xmlns:mhdr="http://www.oracle.com/XSL/Transform/java/oracle.tip.mediator.service.common.functions.MediatorExtnFunction" xmlns:oraext="http://www.oracle.com/XSL/Transform/java/oracle.tip.pc.services.functions.ExtFunc" xmlns:ns1="http://xmlns.oracle.com/EnterpriseObjects/Core/Custom/EBO/ReceivedPayment/V1" xmlns:dvm="http://www.oracle.com/XSL/Transform/java/oracle.tip.dvm.LookupValue" xmlns:hwf="http://xmlns.oracle.com/bpel/workflow/xpath" xmlns:med="http://schemas.oracle.com/mediator/xpath" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ids="http://xmlns.oracle.com/bpel/services/IdentityService/xpath" xmlns:ns5="urn:oasis:names:tc:xacml:2.0:policy:schema:cd:04" xmlns:xdk="http://schemas.oracle.com/bpel/extension/xpath/function/xdk" xmlns:xref="http://www.oracle.com/XSL/Transform/java/oracle.tip.xref.xpath.XRefXPathFunctions" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:ns3="http://xmlns.oracle.com/EnterpriseObjects/Core/Common/V2" xmlns:ns4="urn:oasis:names:tc:xacml:2.0:context:schema:cd:04" xmlns:ldap="http://schemas.oracle.com/xpath/extension/ldap" exclude-result-prefixes="xsi xsl pymnt plnk wsdl ns2 client ns0 ns1 ns5 xsd ns3 ns4 xp20 bpws bpel bpm ora socket mhdr oraext dvm hwf med ids xdk xref ldap">
   <xsl:template match="/">
      <pymnt:QueryReceivedPaymentListResponseEBM>
         <pymnt:DataArea>
            <pymnt:QueryReceivedPaymentListResponse>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/@actionCode">
                  <xsl:attribute name="actionCode">
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/@actionCode"/>
                  </xsl:attribute>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:PaymentMethodCode">
                  <pymnt:PaymentMethodCode>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:PaymentMethodCode/@listID">
                        <xsl:attribute name="listID">
                           <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:PaymentMethodCode/@listID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:PaymentMethodCode/@listAgencyID">
                        <xsl:attribute name="listAgencyID">
                           <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:PaymentMethodCode/@listAgencyID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:PaymentMethodCode/@listVersionID">
                        <xsl:attribute name="listVersionID">
                           <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:PaymentMethodCode/@listVersionID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:PaymentMethodCode"/>
                  </pymnt:PaymentMethodCode>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ExclusiveIndicator">
                  <pymnt:ExclusiveIndicator>
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ExclusiveIndicator"/>
                  </pymnt:ExclusiveIndicator>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:DeclarationRequiredIndicator">
                  <pymnt:DeclarationRequiredIndicator>
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:DeclarationRequiredIndicator"/>
                  </pymnt:DeclarationRequiredIndicator>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:FinalIndicator">
                  <pymnt:FinalIndicator>
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:FinalIndicator"/>
                  </pymnt:FinalIndicator>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:CreationDateTime">
                  <pymnt:CreationDateTime>
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:CreationDateTime"/>
                  </pymnt:CreationDateTime>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:RequestDateTime">
                  <pymnt:RequestDateTime>
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:RequestDateTime"/>
                  </pymnt:RequestDateTime>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ProcessingDateTime">
                  <pymnt:ProcessingDateTime>
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ProcessingDateTime"/>
                  </pymnt:ProcessingDateTime>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:AuthorizationDateTime">
                  <pymnt:AuthorizationDateTime>
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:AuthorizationDateTime"/>
                  </pymnt:AuthorizationDateTime>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ConfirmationNumber">
                  <pymnt:ConfirmationNumber>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ConfirmationNumber/@schemeID">
                        <xsl:attribute name="schemeID">
                           <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ConfirmationNumber/@schemeID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ConfirmationNumber/@schemeAgencyID">
                        <xsl:attribute name="schemeAgencyID">
                           <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ConfirmationNumber/@schemeAgencyID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ConfirmationNumber/@schemeVersionID">
                        <xsl:attribute name="schemeVersionID">
                           <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ConfirmationNumber/@schemeVersionID"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ConfirmationNumber"/>
                  </pymnt:ConfirmationNumber>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:RequestAmount">
                  <pymnt:RequestAmount>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:RequestAmount/@currencyCode">
                        <xsl:attribute name="currencyCode">
                           <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:RequestAmount/@currencyCode"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:RequestAmount"/>
                  </pymnt:RequestAmount>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ConvertedRequestAmount">
                  <pymnt:ConvertedRequestAmount>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ConvertedRequestAmount/@currencyCode">
                        <xsl:attribute name="currencyCode">
                           <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ConvertedRequestAmount/@currencyCode"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:ConvertedRequestAmount"/>
                  </pymnt:ConvertedRequestAmount>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:AuthorizationAmount">
                  <pymnt:AuthorizationAmount>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:AuthorizationAmount/@currencyCode">
                        <xsl:attribute name="currencyCode">
                           <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:AuthorizationAmount/@currencyCode"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:AuthorizationAmount"/>
                  </pymnt:AuthorizationAmount>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:AllocationAmount">
                  <pymnt:AllocationAmount>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:AllocationAmount/@currencyCode">
                        <xsl:attribute name="currencyCode">
                           <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:AllocationAmount/@currencyCode"/>
                        </xsl:attribute>
                     </xsl:if>
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:AllocationAmount"/>
                  </pymnt:AllocationAmount>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:Description">
                  <xsl:for-each select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:Description">
                     <pymnt:Description>
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
                     </pymnt:Description>
                  </xsl:for-each>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:PaymentReceiptDate">
                  <pymnt:PaymentReceiptDate>
                     <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/pymnt:PaymentReceiptDate"/>
                  </pymnt:PaymentReceiptDate>
               </xsl:if>
               <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status">
                  <ns3:Status>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:Code">
                        <ns3:Code>
                           <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:Code/@listID">
                              <xsl:attribute name="listID">
                                 <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:Code/@listID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:Code/@listAgencyID">
                              <xsl:attribute name="listAgencyID">
                                 <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:Code/@listAgencyID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:Code/@listVersionID">
                              <xsl:attribute name="listVersionID">
                                 <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:Code/@listVersionID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:Code"/>
                        </ns3:Code>
                     </xsl:if>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:EffectiveDateTime">
                        <ns3:EffectiveDateTime>
                           <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:EffectiveDateTime"/>
                        </ns3:EffectiveDateTime>
                     </xsl:if>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:EffectiveEndDateTime">
                        <ns3:EffectiveEndDateTime>
                           <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:EffectiveEndDateTime"/>
                        </ns3:EffectiveEndDateTime>
                     </xsl:if>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:ReasonCode">
                        <ns3:ReasonCode>
                           <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:ReasonCode/@listID">
                              <xsl:attribute name="listID">
                                 <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:ReasonCode/@listID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:ReasonCode/@listAgencyID">
                              <xsl:attribute name="listAgencyID">
                                 <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:ReasonCode/@listAgencyID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:ReasonCode/@listVersionID">
                              <xsl:attribute name="listVersionID">
                                 <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:ReasonCode/@listVersionID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:ReasonCode"/>
                        </ns3:ReasonCode>
                     </xsl:if>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:Description">
                        <xsl:for-each select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:Description">
                           <ns3:Description>
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
                           </ns3:Description>
                        </xsl:for-each>
                     </xsl:if>
                     <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:SubStatusCode">
                        <ns3:SubStatusCode>
                           <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:SubStatusCode/@listID">
                              <xsl:attribute name="listID">
                                 <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:SubStatusCode/@listID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:SubStatusCode/@listAgencyID">
                              <xsl:attribute name="listAgencyID">
                                 <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:SubStatusCode/@listAgencyID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:if test="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:SubStatusCode/@listVersionID">
                              <xsl:attribute name="listVersionID">
                                 <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:SubStatusCode/@listVersionID"/>
                              </xsl:attribute>
                           </xsl:if>
                           <xsl:value-of select="/pymnt:CreateReceivedPaymentEBM/pymnt:DataArea/pymnt:CreateReceivedPayment/ns3:Status/ns3:SubStatusCode"/>
                        </ns3:SubStatusCode>
                     </xsl:if>
                  </ns3:Status>
               </xsl:if>
            </pymnt:QueryReceivedPaymentListResponse>
         </pymnt:DataArea>
      </pymnt:QueryReceivedPaymentListResponseEBM>
   </xsl:template>
</xsl:stylesheet>
