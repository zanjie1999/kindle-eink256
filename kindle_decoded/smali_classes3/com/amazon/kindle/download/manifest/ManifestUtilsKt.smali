.class public final Lcom/amazon/kindle/download/manifest/ManifestUtilsKt;
.super Ljava/lang/Object;
.source "ManifestUtils.kt"


# static fields
.field private static final TAG:Ljava/lang/String; = "ManifestUtils"


# direct methods
.method public static final getManifestRequestHeaders(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Ljava/util/Map;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "requestParams"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "krlDownloadFacade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 180
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getAmazonLocaleCode()Ljava/lang/String;

    move-result-object v1

    const-string v2, "krlDownloadFacade.amazonLocaleCode"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Accept-Language"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-static {p1}, Lcom/amazon/kindle/services/download/DownloadUtils;->getTransportMethod(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "DownloadUtils.getTranspo\u2026Method(krlDownloadFacade)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "X-ADP-Transport"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getPlatformSoftwareVersion()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 188
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "1145307300"

    const-string v4, "Requesting KRF4 content as device is incompatible with KRF5"

    const-string v5, "ManifestUtils"

    if-nez v2, :cond_3

    .line 190
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isYJSupportedOnDevice()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 193
    :cond_2
    invoke-static {v5, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v3

    :goto_2
    const-string v2, "if (krlDownloadFacade.is\u2026ING_YJ_DOWNLOAD\n        }"

    .line 190
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "X-ADP-SW"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getInternalVersionNumber()J

    move-result-wide v1

    const-wide/16 v6, -0x1

    cmp-long v8, v1, v6

    if-eqz v8, :cond_4

    .line 200
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_7

    .line 203
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->isYJSupportedOnDevice()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v3, v1

    goto :goto_4

    .line 206
    :cond_5
    invoke-static {v5, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v1, "X-ADP-APP-SW"

    .line 203
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Accept"

    const-string v2, "application/json"

    .line 215
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "x-amzn-accept-type"

    const-string v2, "application/x.amzn.digital.deliverymanifest@1.0"

    .line 218
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "EEE, d MMM yyyy HH:mm:ss z"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 222
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    const-string v3, "GMT"

    .line 223
    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 224
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "dateFormat.format(date)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "Date"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X-ADP-AttemptCount"

    const-string v3, "1"

    .line 227
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getCorrelationId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "X-ADP-CorrelationId"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->isUserInitiated()Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p0, "ArchivedItems"

    goto :goto_5

    :cond_6
    const-string p0, "ServerInstruction"

    :goto_5
    const-string v1, "X-ADP-Reason"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "X-Amzn-RequestId"

    .line 245
    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    sget-object p0, Lcom/amazon/kindle/services/authentication/TokenKey;->COR:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p1, p0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getAuthenticationToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "krlDownloadFacade.getAut\u2026cationToken(TokenKey.COR)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "X-ADP-COR"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    sget-object p0, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {p1, p0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getAuthenticationToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "krlDownloadFacade.getAut\u2026cationToken(TokenKey.PFM)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "X-ADP-PFM"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-interface {p1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getXadpAppId()Ljava/lang/String;

    move-result-object p0

    const-string p1, "krlDownloadFacade.xadpAppId"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "X-ADP-App-Id"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "download request headers : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0

    :cond_7
    const-string p0, "Our software version is invalid"

    .line 210
    invoke-static {v5, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    const-string p1, "Collections.emptyMap()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getRequestURL(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/webservices/IDynamicConfigManager;J)Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 3

    const-string v0, "bookID"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pfm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dynamicConfigManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/download/manifest/ManifestContentType;->getTypeForBookType(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kindle/download/manifest/ManifestContentType;

    move-result-object v0

    const-string v1, "ManifestContentType.getT\u2026eForBookType(bookID.type)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/ManifestContentType;->getTypeString()Ljava/lang/String;

    move-result-object v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/delivery/manifest/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IBookID;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p0

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_SAMPLE:Lcom/amazon/kcp/library/models/BookType;

    if-ne p0, v1, :cond_0

    .line 113
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "sampling=Sample"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/debug/DeliveryServiceDebugUtils;->isUsingSingleCF(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "url.singlecf"

    goto :goto_0

    :cond_1
    const-string p0, "url.mds"

    .line 122
    :goto_0
    invoke-interface {p2, p0}, Lcom/amazon/kindle/webservices/IDynamicConfigManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 123
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Manifest Delivery endpoint is: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    invoke-static {}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->isSupportedVoucherVersionsManifestEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 128
    :try_start_0
    new-instance p1, Ljava/net/URI;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-static {p1}, Lcom/amazon/kindle/download/assets/AssetDownloadRequestUtilsKt;->appendSupportedVoucherVersions(Ljava/net/URI;)Ljava/net/URI;

    move-result-object p1

    .line 130
    new-instance p2, Lcom/amazon/kindle/webservices/WebserviceURL;

    invoke-static {p1}, Lcom/amazon/kindle/services/download/URI_ExtensionsKt;->getPathAndQuery(Ljava/net/URI;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 132
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failing to construct URI by given string: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    :cond_2
    new-instance p1, Lcom/amazon/kindle/webservices/WebserviceURL;

    invoke-direct {p1, p0, v0, p3, p4}, Lcom/amazon/kindle/webservices/WebserviceURL;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    return-object p1
.end method

.method public static synthetic getRequestURL$default(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/webservices/IDynamicConfigManager;JILjava/lang/Object;)Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const-wide/32 p3, 0x2bf20

    .line 108
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/amazon/kindle/download/manifest/ManifestUtilsKt;->getRequestURL(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/webservices/IDynamicConfigManager;J)Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object p0

    return-object p0
.end method

.method public static final isRequestToadEligible(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)Z
    .locals 4

    const-string v0, "params"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getTodoProperties()Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 142
    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->getUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-nez v3, :cond_2

    .line 143
    invoke-virtual {v0}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->getUrlContext()Ljava/lang/String;

    move-result-object p0

    const-string v0, "delivery.manifest"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 148
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p0

    sget-object v0, Lcom/amazon/kindle/download/manifest/ManifestUtilsKt$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    if-eq p0, v2, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x1

    :goto_2
    return v1
.end method

.method public static final parseMDSForbiddenError(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)Lcom/amazon/kindle/download/manifest/ParsingResult;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
            ")",
            "Lcom/amazon/kindle/download/manifest/ParsingResult<",
            "Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    const-string v0, "title"

    const-string v1, "json"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "referenceDescriber"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    new-instance v1, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;

    invoke-direct {v1}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;-><init>()V

    .line 269
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->setAll(Lcom/amazon/kindle/webservices/IWebRequestErrorDescriber;)V

    .line 273
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "message"

    .line 275
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "link"

    .line 279
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    if-eqz p1, :cond_0

    :try_start_1
    const-string v3, "url"

    .line 280
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "it.getString(\"url\")"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 281
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "it.getString(\"title\")"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p1, v3

    .line 284
    :goto_0
    invoke-virtual {v1, p0}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->setErrorTitle(Ljava/lang/String;)V

    .line 285
    invoke-virtual {v1, v3}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->setErrorLink(Ljava/lang/String;)V

    .line 286
    invoke-virtual {v1, p1}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->setErrorDisplayButtonTag(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v1, v2}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->setErrorMessage(Ljava/lang/String;)V

    .line 288
    sget-object p0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    invoke-virtual {v1, p0}, Lcom/amazon/kindle/webservices/WebRequestErrorDescriber;->setError(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    .line 290
    new-instance p0, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;

    invoke-direct {p0, v1}, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "ManifestUtils"

    const-string v0, "Exception thrown while attempting to parse the manifest forbidden error"

    .line 292
    invoke-static {p1, v0, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 296
    new-instance p1, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;-><init>(Ljava/lang/Object;)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method public static final parseManifestToGroup(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/download/manifest/ManifestSerializer;Lcom/amazon/kindle/services/download/IAssetGroupFactory;)Lcom/amazon/kindle/download/manifest/ParsingResult;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/model/content/IBookID;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/download/manifest/ManifestSerializer;",
            "Lcom/amazon/kindle/services/download/IAssetGroupFactory;",
            ")",
            "Lcom/amazon/kindle/download/manifest/ParsingResult<",
            "Lcom/amazon/kindle/services/download/IAssetGroup;",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation

    const-string v0, "manifestString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parser"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupFactory"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 64
    invoke-interface {p3, p0}, Lcom/amazon/kindle/download/manifest/ManifestSerializer;->serialize(Ljava/lang/String;)Lcom/amazon/kindle/download/manifest/ParsingResult;

    move-result-object p0

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 68
    instance-of p3, p0, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;

    if-eqz p3, :cond_0

    .line 69
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Manifest JSON parsing took "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    new-instance p3, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;

    check-cast p0, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/download/manifest/MDSManifest;

    invoke-interface {p4, p0, p1, p2}, Lcom/amazon/kindle/services/download/IAssetGroupFactory;->create(Lcom/amazon/kindle/download/manifest/MDSManifest;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IAssetGroup;

    move-result-object p0

    invoke-direct {p3, p0}, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;-><init>(Ljava/lang/Object;)V

    move-object p0, p3

    goto :goto_0

    .line 73
    :cond_0
    instance-of p1, p0, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;

    if-eqz p1, :cond_1

    .line 74
    move-object p1, p0

    check-cast p1, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;

    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;->getException()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    const-string p2, "ManifestUtils"

    const-string p3, "Manifest JSON parsing failed due to error"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0

    .line 75
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0
.end method

.method public static final parseManifestToGroup(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;)Lcom/amazon/kindle/services/download/IAssetGroup;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1, v0}, Lcom/amazon/kindle/download/manifest/ManifestUtilsKt;->parseManifestToGroup$default(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;ILjava/lang/Object;)Lcom/amazon/kindle/services/download/IAssetGroup;

    move-result-object p0

    return-object p0
.end method

.method public static final parseManifestToGroup(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IAssetGroup;
    .locals 5

    const-string v0, "manifestString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    const-class v0, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 90
    sget-object v2, Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;->INSTANCE:Lcom/amazon/kindle/download/manifest/OrgDotJsonManifestSerializer;

    new-instance v3, Lcom/amazon/kindle/download/assets/AssetGroupFactory;

    const-string v4, "facade"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getFileConnectionFactory()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v0

    const-string v4, "facade.fileConnectionFactory"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, v0}, Lcom/amazon/kindle/download/assets/AssetGroupFactory;-><init>(Lcom/amazon/kindle/io/IFileConnectionFactory;)V

    .line 88
    invoke-static {p0, p1, p2, v2, v3}, Lcom/amazon/kindle/download/manifest/ManifestUtilsKt;->parseManifestToGroup(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/download/manifest/ManifestSerializer;Lcom/amazon/kindle/services/download/IAssetGroupFactory;)Lcom/amazon/kindle/download/manifest/ParsingResult;

    move-result-object p0

    .line 93
    instance-of p1, p0, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;

    if-eqz p1, :cond_0

    .line 94
    check-cast p0, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;

    invoke-virtual {p0}, Lcom/amazon/kindle/download/manifest/ParsingResult$Success;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/services/download/IAssetGroup;

    move-object v1, p0

    goto :goto_0

    .line 96
    :cond_0
    instance-of p0, p0, Lcom/amazon/kindle/download/manifest/ParsingResult$Failure;

    if-eqz p0, :cond_1

    goto :goto_0

    .line 97
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static synthetic parseManifestToGroup$default(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;ILjava/lang/Object;)Lcom/amazon/kindle/services/download/IAssetGroup;
    .locals 0

    and-int/lit8 p3, p3, 0x4

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 86
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/amazon/kindle/download/manifest/ManifestUtilsKt;->parseManifestToGroup(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)Lcom/amazon/kindle/services/download/IAssetGroup;

    move-result-object p0

    return-object p0
.end method
