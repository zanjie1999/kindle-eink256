.class Lcom/amazon/device/ads/AdWebViewClient;
.super Landroid/webkit/WebViewClient;
.source "AdWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;,
        Lcom/amazon/device/ads/AdWebViewClient$DefaultExecutor;,
        Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;,
        Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;

.field protected static final intentSchemes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected static redirectHosts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

.field private final androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

.field private final bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

.field private final context:Landroid/content/Context;

.field private listener:Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

.field private resourceList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final urlExecutors:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final webUtils:Lcom/amazon/device/ads/WebUtils2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-class v0, Lcom/amazon/device/ads/AdWebViewClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdWebViewClient;->LOGTAG:Ljava/lang/String;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AdWebViewClient;->intentSchemes:Ljava/util/HashSet;

    const-string/jumbo v1, "tel"

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lcom/amazon/device/ads/AdWebViewClient;->intentSchemes:Ljava/util/HashSet;

    const-string/jumbo v1, "voicemail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lcom/amazon/device/ads/AdWebViewClient;->intentSchemes:Ljava/util/HashSet;

    const-string/jumbo v1, "sms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lcom/amazon/device/ads/AdWebViewClient;->intentSchemes:Ljava/util/HashSet;

    const-string/jumbo v1, "mailto"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lcom/amazon/device/ads/AdWebViewClient;->intentSchemes:Ljava/util/HashSet;

    const-string v1, "geo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/amazon/device/ads/AdWebViewClient;->intentSchemes:Ljava/util/HashSet;

    const-string v1, "google.streetview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/AdWebViewClient;->redirectHosts:Ljava/util/Set;

    const-string v1, "aax-us-east.amazon-adsystem.com"

    .line 72
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lcom/amazon/device/ads/AdWebViewClient;->redirectHosts:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/amazon/device/ads/AdWebViewClient;->redirectHosts:Ljava/util/Set;

    const-string v1, "aax-beta.integ.amazon.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/amazon/device/ads/AdWebViewClient;->redirectHosts:Ljava/util/Set;

    const-string/jumbo v1, "pda-bes.amazon.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/amazon/device/ads/AdWebViewClient;->redirectHosts:Ljava/util/Set;

    const-string v1, "d16g-cornerstone-bes.integ.amazon.com"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSDKBridgeList;Lcom/amazon/device/ads/AdControlAccessor;Lcom/amazon/device/ads/WebUtils2;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AndroidBuildInfo;)V
    .locals 1

    .line 93
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 66
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient;->resourceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 94
    iput-object p1, p0, Lcom/amazon/device/ads/AdWebViewClient;->context:Landroid/content/Context;

    .line 95
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/device/ads/AdWebViewClient;->urlExecutors:Ljava/util/HashMap;

    .line 96
    iput-object p2, p0, Lcom/amazon/device/ads/AdWebViewClient;->bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    .line 97
    iput-object p3, p0, Lcom/amazon/device/ads/AdWebViewClient;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    .line 98
    iput-object p4, p0, Lcom/amazon/device/ads/AdWebViewClient;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    .line 99
    iput-object p5, p0, Lcom/amazon/device/ads/AdWebViewClient;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 100
    sget-object p1, Lcom/amazon/device/ads/AdWebViewClient;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p5, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdWebViewClient;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 101
    iput-object p6, p0, Lcom/amazon/device/ads/AdWebViewClient;->androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    .line 102
    invoke-direct {p0}, Lcom/amazon/device/ads/AdWebViewClient;->setupUrlExecutors()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AdWebViewClient;)Lcom/amazon/device/ads/AdControlAccessor;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/device/ads/AdWebViewClient;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/device/ads/AdWebViewClient;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkResources()Z
    .locals 5

    .line 233
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient;->resourceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 235
    invoke-static {}, Lcom/amazon/device/ads/BridgeSelector;->getInstance()Lcom/amazon/device/ads/BridgeSelector;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/amazon/device/ads/BridgeSelector;->getBridgeFactoriesForResourceLoad(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v2

    .line 236
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 238
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/device/ads/AdSDKBridgeFactory;

    .line 240
    iget-object v4, p0, Lcom/amazon/device/ads/AdWebViewClient;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-interface {v3, v4}, Lcom/amazon/device/ads/AdSDKBridgeFactory;->createAdSDKBridge(Lcom/amazon/device/ads/AdControlAccessor;)Lcom/amazon/device/ads/AdSDKBridge;

    move-result-object v3

    .line 241
    iget-object v4, p0, Lcom/amazon/device/ads/AdWebViewClient;->bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-virtual {v4, v3}, Lcom/amazon/device/ads/AdSDKBridgeList;->contains(Lcom/amazon/device/ads/AdSDKBridge;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x1

    .line 244
    iget-object v4, p0, Lcom/amazon/device/ads/AdWebViewClient;->bridgeList:Lcom/amazon/device/ads/AdSDKBridgeList;

    invoke-virtual {v4, v3}, Lcom/amazon/device/ads/AdSDKBridgeList;->addBridge(Lcom/amazon/device/ads/AdSDKBridge;)V

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 251
    new-instance v0, Lcom/amazon/device/ads/AdWebViewClient$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdWebViewClient$1;-><init>(Lcom/amazon/device/ads/AdWebViewClient;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeOnMainThread(Ljava/lang/Runnable;)V

    :cond_3
    return v1
.end method

.method private setupUrlExecutors()V
    .locals 6

    .line 112
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient;->urlExecutors:Ljava/util/HashMap;

    new-instance v1, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;

    iget-object v2, p0, Lcom/amazon/device/ads/AdWebViewClient;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/amazon/device/ads/AdWebViewClient;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    new-instance v4, Lcom/amazon/device/ads/AmazonDeviceLauncher;

    invoke-direct {v4}, Lcom/amazon/device/ads/AmazonDeviceLauncher;-><init>()V

    iget-object v5, p0, Lcom/amazon/device/ads/AdWebViewClient;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/amazon/device/ads/AdWebViewClient$AmazonMobileExecutor;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AmazonDeviceLauncher;Lcom/amazon/device/ads/WebUtils2;)V

    const-string v2, "amazonmobile"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Lcom/amazon/device/ads/AdWebViewClient$DefaultExecutor;

    iget-object v1, p0, Lcom/amazon/device/ads/AdWebViewClient;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/device/ads/AdWebViewClient$DefaultExecutor;-><init>(Landroid/content/Context;)V

    .line 114
    sget-object v1, Lcom/amazon/device/ads/AdWebViewClient;->intentSchemes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 116
    invoke-virtual {p0, v2, v0}, Lcom/amazon/device/ads/AdWebViewClient;->putUrlExecutor(Ljava/lang/String;Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected getScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebUtils2;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected interpretScheme(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    const-string v1, "about"

    .line 182
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "about:blank"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/AdWebViewClient;->urlExecutors:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient;->urlExecutors:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;

    invoke-interface {p2, p1}, Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;->execute(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/amazon/device/ads/AdWebViewClient;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p2, v2, v0

    const-string p2, "Scheme %s unrecognized. Launching as intent."

    invoke-virtual {v1, p2, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 193
    iget-object p2, p0, Lcom/amazon/device/ads/AdWebViewClient;->webUtils:Lcom/amazon/device/ads/WebUtils2;

    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient;->context:Landroid/content/Context;

    invoke-virtual {p2, p1, v0}, Lcom/amazon/device/ads/WebUtils2;->launchActivityForIntentLink(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method

.method isHoneycombVersion()Z
    .locals 3

    .line 265
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient;->androidBuildInfo:Lcom/amazon/device/ads/AndroidBuildInfo;

    const/16 v1, 0xb

    const/16 v2, 0xd

    invoke-static {v0, v1, v2}, Lcom/amazon/device/ads/AndroidTargetUtils;->isBetweenAndroidAPIs(Lcom/amazon/device/ads/AndroidBuildInfo;II)Z

    move-result v0

    return v0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient;->resourceList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "Loading resource: %s"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 227
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient;->listener:Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;

    invoke-interface {v0, p1, p2}, Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "Page Finished %s"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 210
    invoke-direct {p0}, Lcom/amazon/device/ads/AdWebViewClient;->checkResources()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient;->listener:Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;

    if-nez v0, :cond_1

    .line 216
    iget-object p1, p0, Lcom/amazon/device/ads/AdWebViewClient;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string p2, "Call to onPageFinished() ignored because listener is null."

    invoke-virtual {p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    return-void

    .line 219
    :cond_1
    invoke-interface {v0, p1, p2}, Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 202
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 203
    iget-object p3, p0, Lcom/amazon/device/ads/AdWebViewClient;->listener:Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;

    invoke-interface {p3, p1, p2}, Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const-string v2, "Error: %s"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient;->listener:Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openUrl(Ljava/lang/String;)Z
    .locals 3

    .line 146
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/amazon/device/ads/AdWebViewClient;->redirectHosts:Ljava/util/Set;

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdWebViewClient;->isHoneycombVersion()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 154
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdWebViewClient;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/amazon/device/ads/AdWebViewClient;->interpretScheme(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public putUrlExecutor(Ljava/lang/String;Lcom/amazon/device/ads/AdWebViewClient$UrlExecutor;)V
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/device/ads/AdWebViewClient;->urlExecutors:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setListener(Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/amazon/device/ads/AdWebViewClient;->listener:Lcom/amazon/device/ads/AdWebViewClient$AdWebViewClientListener;

    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 141
    invoke-virtual {p0, p2}, Lcom/amazon/device/ads/AdWebViewClient;->openUrl(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
