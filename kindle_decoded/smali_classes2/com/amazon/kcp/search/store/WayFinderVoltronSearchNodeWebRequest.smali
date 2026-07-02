.class public Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest;
.super Lcom/amazon/kcp/search/store/SearchNodeWebRequest;
.source "WayFinderVoltronSearchNodeWebRequest.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest$Companion;
    }
.end annotation


# static fields
.field private static final AMZN:Ljava/lang/String; = "AMZN"

.field private static final ANDROID:Ljava/lang/String; = "Android"

.field public static final Companion:Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest$Companion;

.field private static final DEVICE_NAME_SMARTPHONE:Ljava/lang/String; = "SmartPhone"

.field private static final DEVICE_NAME_TABLET:Ljava/lang/String; = "Tablet"

.field private static final KINDLE_PORTION_USER_AGENT:Ljava/lang/String; = "/Kindle "

.field private static final KSTORE_HEADER_KEY:Ljava/lang/String; = "x-amzn-kstore"

.field private static final SEARCH:Ljava/lang/String; = "eBookSearch"

.field private static final USER_AGENT_HEADER_KEY:Ljava/lang/String; = "User-Agent"

.field private static final USER_AGENT_PROPERTY_KEY:Ljava/lang/String; = "http.agent"

.field private static final VOLTRON_CID_HEADER_KEY:Ljava/lang/String; = "voltron-client-id"

.field private static final VOLTRON_CID_HEADER_VALUE:Ljava/lang/String; = "kindle-wayfinder"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest;->Companion:Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZLjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct/range {p0 .. p6}, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;-><init>(Ljava/lang/String;IIZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private final getKStoreString()Ljava/lang/String;
    .locals 3

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    const-string v2, "AndroidApplicationController.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAppVersionNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getUserAgentString()Ljava/lang/String;
    .locals 8

    .line 74
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    const-string v1, "DeviceInformationProviderFactory.getProvider()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getOsVersion()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const-string v1, "AndroidApplicationController.getInstance()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getVersionString()Ljava/lang/String;

    move-result-object v5

    .line 79
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 80
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->app_name_full:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v0, "Utils.getFactory().conte\u2026g(R.string.app_name_full)"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest;->Companion:Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest$Companion;

    const-string v1, "deviceTypeId"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest$Companion;->getDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 84
    sget-object v2, Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest;->Companion:Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest$Companion;

    invoke-virtual/range {v2 .. v7}, Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest$Companion;->buildUserAgentString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http.agent"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getUrl(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;
    .locals 1

    const-string v0, "marketplace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;

    invoke-virtual {v0}, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->isWayFinderPreProdEndpointEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->getPreProdPageHostOverride(Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getWayFinderSearchPreProdURL(Lcom/amazon/kcp/application/Marketplace;Ljava/lang/String;)Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object p1

    const-string v0, "KindleWebServiceURLs.get\u2026ostOverride(marketplace))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_0
    invoke-static {p1}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getWayFinderSearchURL(Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object p1

    const-string v0, "KindleWebServiceURLs.get\u2026derSearchURL(marketplace)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method

.method protected setHeaders(Lcom/amazon/kindle/webservices/WebserviceURL;)V
    .locals 1

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-super {p0, p1}, Lcom/amazon/kcp/search/store/SearchNodeWebRequest;->setHeaders(Lcom/amazon/kindle/webservices/WebserviceURL;)V

    const-string/jumbo p1, "voltron-client-id"

    const-string v0, "kindle-wayfinder"

    .line 45
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 51
    invoke-direct {p0}, Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest;->getKStoreString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "x-amzn-kstore"

    .line 49
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 55
    invoke-direct {p0}, Lcom/amazon/kcp/search/store/WayFinderVoltronSearchNodeWebRequest;->getUserAgentString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "User-Agent"

    .line 53
    invoke-virtual {p0, v0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method
