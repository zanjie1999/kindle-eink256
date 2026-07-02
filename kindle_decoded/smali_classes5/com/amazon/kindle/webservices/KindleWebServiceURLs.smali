.class public Lcom/amazon/kindle/webservices/KindleWebServiceURLs;
.super Ljava/lang/Object;
.source "KindleWebServiceURLs.java"


# direct methods
.method public static acquireOfferFromAsinServiceURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 4

    .line 174
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/api/bifrost/acquisitions/v1/actions/"

    const-wide/16 v2, 0x7530

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getAnnotationMappingProxyServiceURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 165
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.annotationMappingProxyService"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/1/mapAnonymousAnnotations"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getAppConfigURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 138
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.rec.prod"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/kindle/kcp/redding/app-config.html"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getCountryURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 161
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.country"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/kindle/kcp/redding/get-country.html"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getCustomerBenefitsURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 4

    .line 182
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/ku/api/getCustomerBenefits.html"

    const-wide/16 v2, 0x7530

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getCustomerEmailServiceURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 157
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string v1, "CustomerEmailBaseUrl"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/user/profile"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getDeleteContentRequestURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 4

    .line 190
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/hz/mycd/mobileClient"

    const-wide/16 v2, 0x7530

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getDeviceConsumptionsRequestURL(Ljava/lang/String;)Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 4

    .line 194
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/list-consumptions"

    const-wide/16 v2, 0x7530

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getDeviceCredentialsURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 95
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.firs"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FirsProxy/getDeviceCredentials"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getDownloadBookURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 116
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.cde"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FionaCDEServiceEngine/FSDownloadContent"

    const-wide/32 v3, 0x493e0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getFontDownloadURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 149
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.font.download"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/gp/kindle/kcp/font/?"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getGetAnnotationsURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 74
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.cde"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FionaCDEServiceEngine/getAnnotations"

    const-wide/32 v3, 0x1d4c0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getGetItemsURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 60
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.todo"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FionaTodoListProxy/getItems"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getKindleSpecialOfferURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 218
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string v1, "https://trequartista.amazon.cn"

    const-string v2, "/kfc/kso"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getLunaManifestDownloadURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 81
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.cde"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FionaCDEServiceEngine/getMultimediaMetadata"

    const-wide/32 v3, 0x1d4c0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getOffersForAsinServiceURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 4

    .line 170
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/api/bifrost/offers/batch/v1/"

    const-wide/16 v2, 0x7530

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getRemoveConsumptionsRequestURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 203
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string v1, "https://"

    const-string/jumbo v2, "prod.us-east-1.library-relay.kindle.amazon.dev/remove-consumptions"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getRemoveInvalidDownloadsRequestURL(Ljava/lang/String;)Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 4

    .line 207
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/check-invalid-downloads"

    const-wide/16 v2, 0x7530

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getRemoveTodoURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 67
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.todo"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FionaTodoListProxy/removeItems"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getRevokeOwnershipURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 153
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.revoke.ownership"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/revoke/sample"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getSearchNodeURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 4

    .line 22
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/gp/kindle/kcp/external-service?method=searchNode"

    const-wide/16 v2, 0x7530

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getSearchSuggestionURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 4

    .line 46
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://completion."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/api/2017/suggestions"

    const-wide/16 v2, 0x7530

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getSendLogsURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 109
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.det"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/DeviceEventProxy/DETLogServlet"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getSendLogsWithAuthenticationURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 102
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.det"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/DeviceEventProxy/MessageLogServlet"

    const-wide/32 v3, 0x1d4c0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getSidecarURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 126
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.cde"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FionaCDEServiceEngine/sidecar"

    const-wide/32 v3, 0x1d4c0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getStoreCredentialsURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 88
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.firs"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FirsProxy/getStoreCredentials"

    const-wide/16 v3, 0x7530

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getSyncMetadataURL()Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 5

    .line 53
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    const-string/jumbo v1, "url.todo"

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getUrlOfType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/FionaTodoListProxy/syncMetaData"

    const-wide/32 v3, 0x3a980

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method static getUrlOfType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 211
    invoke-static {}, Lcom/amazon/kindle/webservices/DynamicConfigManager;->getInstance()Lcom/amazon/kindle/webservices/IDynamicConfigManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/webservices/IDynamicConfigManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getWayFinderSearchPreProdURL(Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 3

    .line 36
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/kindle-dbs/kws?pagehostOverride=https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-wide/16 v1, 0x7530

    invoke-direct {v0, p0, p1, v1, v2}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static getWayFinderSearchURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 4

    .line 29
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/kindle-dbs/kws?"

    const-wide/16 v2, 0x7530

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method public static returnOfferForAsinServiceURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 4

    .line 178
    new-instance v0, Lcom/amazon/kindle/webservices/WebserviceURL;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://www."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/Marketplace;->getDomain()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "/api/bifrost/returns/v1/asins/"

    const-wide/16 v2, 0x7530

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method
