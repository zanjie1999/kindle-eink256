.class public final Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;
.super Ljava/lang/Object;
.source "RemoteLicenseReleaseApiClientHelper.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IAuthenticationManager;)V
    .locals 1

    const-string v0, "authenticationManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    .line 41
    const-class p1, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Utils.getTag(RemoteLicen\u2026ClientHelper::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final buildGetInvalidDownloadsContentInputParamValue(Ljava/util/List;)Lorg/json/JSONArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 84
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 86
    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 87
    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v2

    const-string v3, "downloadedItem.asin"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 88
    invoke-interface {v1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getParentAsin()Ljava/lang/String;

    move-result-object v1

    .line 87
    invoke-virtual {p0, v2, v3, v1}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;->getContentInputJSONObject$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public final getContentInputJSONObject$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    const-string v0, "asin"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "id"

    .line 97
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    sget-object p1, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest;->Companion:Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest$Companion;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest$Companion;->getContentTypeMap()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p2, "type"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "pid"

    .line 99
    invoke-virtual {v0, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public final getEndpoint$LibraryModule_release()Ljava/lang/String;
    .locals 3

    .line 106
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const-string v1, "prod.us-east-1.library-relay.kindle.amazon.dev"

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/RemoteLicenseReleaseDebugUtils;->isRemoteLicenseReleaseGammaEndpointsDebugFlagEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "gamma.us-east-1.library-relay.kindle.amazon.dev"

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;->TAG:Ljava/lang/String;

    const-string v2, "Get regional endpoint"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p0}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;->getMarketplace$LibraryModule_release()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    sget-object v2, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "prod.us-west-2.library-relay.kindle.amazon.dev"

    goto :goto_0

    :pswitch_1
    const-string v1, "prod.eu-west-1.library-relay.kindle.amazon.dev"

    :goto_0
    :pswitch_2
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final getMarketplace$LibraryModule_release()Lcom/amazon/kcp/application/Marketplace;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;->authenticationManager:Lcom/amazon/kcp/application/IAuthenticationManager;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    const-string v1, "Marketplace.getInstance(\u2026Key.PFM), Marketplace.US)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getURLForGetConsumptionsRequest(Lcom/amazon/kindle/content/ContentMetadata;)Ljava/lang/String;
    .locals 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;->getEndpoint$LibraryModule_release()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getDeviceConsumptionsRequestURL(Ljava/lang/String;)Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v1

    const-string v2, "KindleWebServiceURLs.get\u2026RequestURL(getEndpoint())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "contentInput"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;->parseAndBuildGetConsumptionsURLInput$LibraryModule_release(Lcom/amazon/kindle/content/ContentMetadata;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "proxyServiceURL.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getURLForGetInvalidDownloadsRequest(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "downloadedItems"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {p0}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;->getEndpoint$LibraryModule_release()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getRemoveInvalidDownloadsRequestURL(Ljava/lang/String;)Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v1

    const-string v2, "KindleWebServiceURLs.get\u2026RequestURL(getEndpoint())"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "contentInput"

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;->buildGetInvalidDownloadsContentInputParamValue(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    .line 77
    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "proxyServiceURL.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final getURLForRemoveConsumptionsRequest()Ljava/lang/String;
    .locals 2

    .line 67
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getRemoveConsumptionsRequestURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    const-string v1, "KindleWebServiceURLs.get\u2026eConsumptionsRequestURL()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KindleWebServiceURLs.get\u2026tionsRequestURL().fullURL"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final parseAndBuildGetConsumptionsURLInput$LibraryModule_release(Lcom/amazon/kindle/content/ContentMetadata;)Lorg/json/JSONArray;
    .locals 3

    const-string v0, "content"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 58
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content.asin"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, v2, p1}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseApiClientHelper;->getContentInputJSONObject$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    return-object v0
.end method
