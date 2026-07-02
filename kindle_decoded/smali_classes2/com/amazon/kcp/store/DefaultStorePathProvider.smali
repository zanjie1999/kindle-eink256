.class public final Lcom/amazon/kcp/store/DefaultStorePathProvider;
.super Ljava/lang/Object;
.source "DefaultStorePathProvider.kt"

# interfaces
.implements Lcom/amazon/kcp/store/StorePathProvider;


# instance fields
.field private final controller:Lcom/amazon/kcp/application/IAndroidApplicationController;

.field private final deviceInformationProvider:Lcom/amazon/kcp/application/IDeviceInformationProvider;

.field private final objectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

.field private final useVoltronDPEndpointsWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/IAndroidApplicationController;Lcom/amazon/kcp/application/IDeviceInformationProvider;Lcom/amazon/kcp/application/IKindleObjectFactory;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInformationProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "objectFactory"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/store/DefaultStorePathProvider;->controller:Lcom/amazon/kcp/application/IAndroidApplicationController;

    iput-object p2, p0, Lcom/amazon/kcp/store/DefaultStorePathProvider;->deviceInformationProvider:Lcom/amazon/kcp/application/IDeviceInformationProvider;

    iput-object p3, p0, Lcom/amazon/kcp/store/DefaultStorePathProvider;->objectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    .line 54
    new-instance p1, Lcom/amazon/kindle/weblab/OnOffWeblab;

    iget-object p2, p0, Lcom/amazon/kcp/store/DefaultStorePathProvider;->objectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string p3, "SAGA_LSG_USE_VOLTRON_DP_ENDPOINT_KFA_317280"

    invoke-direct {p1, p2, p3}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/store/DefaultStorePathProvider;->useVoltronDPEndpointsWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

    return-void
.end method

.method private final getStoreDomainByPFM()Ljava/lang/String;
    .locals 3

    .line 171
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    .line 173
    new-instance v0, Lcom/amazon/kcp/store/StoreDomainResolver;

    iget-object v1, p0, Lcom/amazon/kcp/store/DefaultStorePathProvider;->objectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/store/StoreDomainResolver;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreDomainResolver;->hostnameForCurrentPfm()Ljava/lang/String;

    move-result-object v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading the store domain from the customer\'s pfm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v0
.end method

.method private final getStoreDomainUrlBuilderWithBaseParams(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/store/DefaultStorePathProvider;->objectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    .line 181
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "context.resources"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 182
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 183
    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->getScreenDensity(Landroid/content/Context;)F

    move-result v0

    .line 185
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isForceIphoneStoreEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/amazon/kcp/application/AmazonDeviceType;->IPHONE:Lcom/amazon/kcp/application/AmazonDeviceType;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/AmazonDeviceType;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/store/DefaultStorePathProvider;->deviceInformationProvider:Lcom/amazon/kcp/application/IDeviceInformationProvider;

    invoke-interface {v3}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v3

    .line 187
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/kcp/store/DefaultStorePathProvider;->getDefaultPath()Landroid/net/Uri$Builder;

    move-result-object v4

    .line 188
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "w"

    invoke-virtual {v4, v5, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 189
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "h"

    invoke-virtual {v2, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 190
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const-string v2, "dpi"

    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "deviceType"

    .line 191
    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 192
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "osv"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 193
    iget-object v1, p0, Lcom/amazon/kcp/store/DefaultStorePathProvider;->deviceInformationProvider:Lcom/amazon/kcp/application/IDeviceInformationProvider;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amazon/kindle/services/authentication/TokenEncryptor;->getEncryptedDSN(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "eid"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 194
    iget-object v1, p0, Lcom/amazon/kcp/store/DefaultStorePathProvider;->objectFactory:Lcom/amazon/kcp/application/IKindleObjectFactory;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssociateInformationProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object v1

    const-string v2, "objectFactory.associateInformationProvider"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tag"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "linkCode"

    const-string v2, "as2"

    .line 195
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/amazon/kcp/store/DefaultStorePathProvider;->controller:Lcom/amazon/kcp/application/IAndroidApplicationController;

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAppVersionNumber()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appv"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 197
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, ""

    :cond_1
    const-string v1, "ref_"

    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "getDefaultPath()\n       \u2026rker)) \"\" else refMarker)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public getBrowseNodePath(Ljava/util/Map;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri$Builder;"
        }
    .end annotation

    const-string v0, "actionParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0, p2}, Lcom/amazon/kcp/store/DefaultStorePathProvider;->getStoreDomainUrlBuilderWithBaseParams(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "browsenode"

    .line 59
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "storeType"

    .line 60
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 62
    sget-object v3, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->LEGACY_STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    invoke-virtual {v3}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 63
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 64
    sget-object v3, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->SEARCH:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    invoke-virtual {v3}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->getPath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "node"

    .line 65
    invoke-virtual {p2, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 69
    :cond_0
    invoke-virtual {p2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 70
    invoke-virtual {p2, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 71
    sget-object p2, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->BROWSE_NODE:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {p2}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object p2

    const-string v2, "action"

    invoke-virtual {p1, v2, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "storeUrlBuilder\n        \u2026WSE_NODE_KEY, browseNode)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getDefaultCookies(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 76
    invoke-static {p1}, Lcom/amazon/kcp/store/StoreUrlBuilder;->getKstoreHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "x-amzn-kstore"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultHeaders(Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 85
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/store/StoreUrlBuilder;->getKstoreHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "x-amzn-kstore"

    invoke-static {v0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public getDefaultPath()Landroid/net/Uri$Builder;
    .locals 3

    .line 92
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/store/StoreDomainUtils;->isStoreDomainOverridden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-static {}, Lcom/amazon/kcp/store/StoreDomainUtils;->getOverriddenStoreDomainUrl()Ljava/lang/String;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Store domain url has been overridden to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 96
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/store/DefaultStorePathProvider;->getStoreDomainByPFM()Ljava/lang/String;

    move-result-object v0

    .line 99
    :goto_0
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "https"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "Uri.Builder().scheme(SEC\u2026authority(storeDomainUrl)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDetailPagePath(Ljava/util/Map;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kcp/store/StoreUrlBuilder$Action;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri$Builder;"
        }
    .end annotation

    const-string v0, "actionParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0, p3}, Lcom/amazon/kcp/store/DefaultStorePathProvider;->getStoreDomainUrlBuilderWithBaseParams(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    const-string v1, "asin"

    .line 106
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "storeType"

    .line 107
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 109
    sget-object v5, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->LEGACY_STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    invoke-virtual {v5}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 110
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/amazon/kcp/store/DefaultStorePathProvider;->useVoltronDPEndpointsWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

    invoke-virtual {v6}, Lcom/amazon/kindle/weblab/OnOffWeblab;->isOn()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 111
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->DETAIL_PAGE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    invoke-virtual {v6}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    :cond_1
    sget-object v6, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->BUY:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    if-ne v6, p2, :cond_2

    const-string v6, "displayedPrice"

    .line 115
    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string v8, "currency"

    .line 116
    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 117
    invoke-virtual {p3, v6, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 118
    invoke-virtual {p3, v8, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 122
    :cond_2
    invoke-virtual {p3, v5}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 123
    invoke-virtual {p1, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 124
    invoke-virtual {p2}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 125
    invoke-virtual {p1, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "storeUrlBuilder\n        \u2026Parameter(ASIN_KEY, asin)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getFeatureDocPath(Ljava/util/Map;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri$Builder;"
        }
    .end annotation

    const-string v0, "actionParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0, p2}, Lcom/amazon/kcp/store/DefaultStorePathProvider;->getStoreDomainUrlBuilderWithBaseParams(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "pushPageId"

    .line 130
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "storeType"

    .line 131
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 133
    sget-object v2, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->LEGACY_STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    invoke-virtual {v2}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->FEATURE_DOC:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p2, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 139
    sget-object v1, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->FEATURE_DOC:Lcom/amazon/kcp/store/StoreUrlBuilder$Action;

    invoke-virtual {v1}, Lcom/amazon/kcp/store/StoreUrlBuilder$Action;->getCode()Ljava/lang/String;

    move-result-object v1

    const-string v3, "action"

    invoke-virtual {p1, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "pageid"

    .line 140
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 143
    :goto_0
    invoke-virtual {p2, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "storeUrlBuilder.path(storePath)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getSeriesDetailPagePath(Ljava/util/Map;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kcp/store/StoreUrlBuilder$Action;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri$Builder;"
        }
    .end annotation

    const-string v0, "actionParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "action"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/kcp/store/StorePathProvider$DefaultImpls;->getSeriesDetailPagePath(Lcom/amazon/kcp/store/StorePathProvider;Ljava/util/Map;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    return-object p1
.end method

.method public getStoreSearchPath(Ljava/util/Map;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri$Builder;"
        }
    .end annotation

    const-string v0, "actionParams"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    invoke-direct {p0, p2}, Lcom/amazon/kcp/store/DefaultStorePathProvider;->getStoreDomainUrlBuilderWithBaseParams(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v0, "keywords"

    .line 148
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "storeType"

    .line 149
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 151
    sget-object v2, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->LEGACY_STORE:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    invoke-virtual {v2}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 153
    sget-object v2, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->SEARCH:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    invoke-virtual {v2}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "query"

    .line 154
    invoke-virtual {p2, v3, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 158
    :cond_0
    invoke-virtual {p2, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 159
    invoke-virtual {p2, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "field-keywords"

    .line 160
    invoke-virtual {p1, p2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "storeUrlBuilder\n        \u2026D_KEYWORDS_KEY, keywords)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getStorefrontPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
    .locals 3

    .line 164
    invoke-direct {p0, p1}, Lcom/amazon/kcp/store/DefaultStorePathProvider;->getStoreDomainUrlBuilderWithBaseParams(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 165
    sget-object v0, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->STOREFRONT:Lcom/amazon/kcp/store/StoreUrlBuilder$Path;

    invoke-virtual {v0}, Lcom/amazon/kcp/store/StoreUrlBuilder$Path;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use Voltron storefront path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    invoke-virtual {p1, v0}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v0, "storeUrlBuilder.path(storePath)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
