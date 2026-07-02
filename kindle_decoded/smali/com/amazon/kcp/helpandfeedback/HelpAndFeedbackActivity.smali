.class public Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;
.super Lcom/amazon/kcp/redding/ReddingActivity;
.source "HelpAndFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;
    }
.end annotation


# static fields
.field private static final PAYMENT_DISABLED_STORE:Ljava/lang/String; = "com.android.vending"

.field private static final RETURN_BREADCRUMB_VALUE:Ljava/lang/String; = "dts_cantilever_return_a_kindle_book"

.field private static final TAG:Ljava/lang/String;

.field private static final THANKYOU:Ljava/lang/String; = "thankyou"

.field private static final THANK_YOU_FEEDBACK:Ljava/lang/String; = "thankyoufeedback"

.field private static final THANK_YOU_PHONE:Ljava/lang/String; = "thankyouphone"

.field protected static final THEME_DARK:Ljava/lang/String; = "dark"

.field protected static final THEME_LIGHT:Ljava/lang/String; = "light"

.field private static allowAllUrls:Z

.field private static endpointOverride:Ljava/lang/String;

.field private static forceReleaseMode:Z


# instance fields
.field private final errorHandler:Lcom/amazon/kcp/helpandfeedback/HelpWebErrorHandler;

.field private sslErrorHandler:Lcom/amazon/kcp/application/WebViewSSLErrorHandler;

.field private webView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    const-class v0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 116
    sput-boolean v0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->forceReleaseMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/amazon/kcp/redding/ReddingActivity;-><init>()V

    .line 111
    const-class v0, Lcom/amazon/kcp/helpandfeedback/HelpWebErrorHandler;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/helpandfeedback/HelpWebErrorHandler;

    iput-object v0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->errorHandler:Lcom/amazon/kcp/helpandfeedback/HelpWebErrorHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;)Lcom/amazon/kcp/application/WebViewSSLErrorHandler;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->sslErrorHandler:Lcom/amazon/kcp/application/WebViewSSLErrorHandler;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 83
    sget-object v0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;)Lcom/amazon/kcp/helpandfeedback/HelpWebErrorHandler;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->errorHandler:Lcom/amazon/kcp/helpandfeedback/HelpWebErrorHandler;

    return-object p0
.end method

.method static synthetic access$300(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 83
    invoke-static {p0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->getConnectivity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->webView:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;Ljava/lang/String;)Z
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->isUrlAllowed(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->disableBackButton()V

    return-void
.end method

.method static synthetic access$700(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->uploadLogs(Ljava/lang/String;)V

    return-void
.end method

.method private addMapData(Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 434
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 435
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->getNameValueJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private disableBackButton()V
    .locals 2

    .line 300
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 302
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method private getAmznAppInfoCookie(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 414
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "com.android.vending"

    if-eq p1, v0, :cond_0

    const-string p1, "amazon"

    goto :goto_0

    :cond_0
    const-string p1, "google-play"

    .line 420
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fireos"

    goto :goto_1

    :cond_1
    const-string v0, "android"

    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string p1, "amzn-app-info=name=kindle&os=%s&store=%s"

    .line 425
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCantileverEndpoint(Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    .line 463
    sget-object v0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->endpointOverride:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getCantileverEndpoint(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCantileverTheme()Ljava/lang/String;
    .locals 3

    .line 381
    invoke-static {}, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->isLandingV2InTreatment()Z

    move-result v0

    const-string v1, "dark"

    if-eqz v0, :cond_0

    return-object v1

    .line 385
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    .line 387
    :goto_0
    sget-object v2, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v2, :cond_2

    const-string v1, "light"

    :cond_2
    return-object v1
.end method

.method private static getConnectivity(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "connectivity"

    .line 454
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    .line 455
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 456
    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getCookieUrl()Ljava/lang/String;
    .locals 8

    .line 468
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    .line 469
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    .line 470
    invoke-static {v0}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder;->getProdEndpointBase(Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 473
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 474
    invoke-virtual {v3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2f

    .line 476
    invoke-virtual {v4, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    if-lez v5, :cond_0

    add-int/2addr v5, v2

    .line 477
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 478
    :cond_0
    new-instance v5, Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3}, Ljava/net/URL;->getPort()I

    move-result v3

    invoke-direct {v5, v6, v7, v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 479
    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    .line 481
    sget-object v4, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->TAG:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    const-string v1, "Error extracting cookie url from endpoint : %s"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private getFeedbackCookie(Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;)Ljava/lang/String;
    .locals 4

    .line 395
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 396
    invoke-static {}, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->getOEMInformation()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->addMapData(Lorg/json/JSONArray;Ljava/util/Map;)V

    .line 397
    invoke-static {}, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->getStorageData()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->addMapData(Lorg/json/JSONArray;Ljava/util/Map;)V

    .line 398
    invoke-static {p0}, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->getScreenData(Landroid/app/Activity;)Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->addMapData(Lorg/json/JSONArray;Ljava/util/Map;)V

    .line 399
    invoke-virtual {p1}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getReturnHeaderFlag()Ljava/util/Map;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->addMapData(Lorg/json/JSONArray;Ljava/util/Map;)V

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "feedback cookie JSON: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 403
    :try_start_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 405
    sget-object v1, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in encoding feedback cookie string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static getIntent(Landroid/content/Context;Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;)Landroid/content/Intent;
    .locals 2

    .line 152
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    invoke-virtual {p1}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "cantileverMode"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private getIsDeleteFromLibraryCookie(Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;)Z
    .locals 1

    .line 391
    invoke-virtual {p1}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RETURN"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private getNameValueJson(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    .line 441
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "name"

    .line 443
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string/jumbo v1, "value"

    .line 444
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 446
    :catch_0
    sget-object v1, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const-string p1, "Unexpected error in generating JSON for name: %s , value: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private getOsName()Ljava/lang/String;
    .locals 1

    .line 371
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "FireOS"

    goto :goto_0

    :cond_0
    const-string v0, "Android"

    :goto_0
    return-object v0
.end method

.method public static getStartBetaFeedbackIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$BetaFeedback;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$BetaFeedback;

    invoke-virtual {p0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "cantileverMode"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getStartMainIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 136
    invoke-static {}, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->isLandingV2InTreatment()Z

    move-result p0

    const-string v1, "cantileverMode"

    if-eqz p0, :cond_0

    .line 137
    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleHelpV2;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleHelpV2;

    invoke-virtual {p0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 139
    :cond_0
    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleMain;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$KindleMain;

    invoke-virtual {p0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method public static getStartReturnIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 179
    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Return;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Return;

    invoke-virtual {p0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "cantileverMode"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "asin"

    .line 180
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "orderId"

    .line 181
    invoke-virtual {v0, p0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static getStartTTSIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 192
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 193
    sget-object p0, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Tts;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Tts;

    invoke-virtual {p0}, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "cantileverMode"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private isUrlAllowed(Ljava/lang/String;)Z
    .locals 1

    .line 487
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->allowAllUrls:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 491
    invoke-static {p1}, Lcom/amazon/kcp/store/DomainPermissions;->fromUrl(Ljava/lang/String;)Lcom/amazon/kcp/store/DomainPermissions;

    move-result-object p1

    .line 492
    invoke-virtual {p1}, Lcom/amazon/kcp/store/DomainPermissions;->isWebviewAllowed()Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private reportLeaveCantileverMetric()V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "thankyou"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "HelpAndFeedback"

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "CantileverCloseAfterThankYou"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 285
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v2, "CantileverCancelled"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setCantileverCookies(Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;)V
    .locals 11

    .line 307
    invoke-virtual {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->getAppController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 308
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getDeviceInformationProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v1

    .line 309
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v2, v3}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v2

    .line 310
    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v2, v3}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v2

    .line 311
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->isBetaApp()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 312
    sget-boolean v4, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->forceReleaseMode:Z

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    :cond_0
    const-string v4, ""

    const-wide/16 v5, 0x0

    .line 318
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 319
    iget-object v4, v7, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 320
    invoke-static {v7}, Landroidx/core/content/pm/PackageInfoCompat;->getLongVersionCode(Landroid/content/pm/PackageInfo;)J

    move-result-wide v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    .line 322
    sget-object v8, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->TAG:Ljava/lang/String;

    const-string v9, "Unable to retrieve android:versionCode and android:versionName"

    invoke-static {v8, v9, v7}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    aput-object v4, v8, v3

    .line 326
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v8, v5

    const-string v4, "%s_%d"

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, " "

    const-string v8, "_"

    invoke-virtual {v4, v6, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 328
    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0x12

    new-array v8, v8, [Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "appName="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "appVersionCode="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "osVersion="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v7

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "osName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-direct {p0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->getOsName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceSerialNumber="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v3

    const/4 v3, 0x6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deviceType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v3

    const/4 v1, 0x7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "manufacturer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    const/16 v1, 0x8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connectivity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-static {p0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->getConnectivity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    const/16 v1, 0x9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "appMarketplace="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    const/16 v1, 0xa

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "displayLocale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    const/16 v1, 0xb

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "theme="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-direct {p0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->getCantileverTheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v1

    const/16 v1, 0xc

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBeta="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v8, v1

    const/16 v0, 0xd

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEarlyAccessBuild="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/16 v0, 0xe

    const-string v1, "isChatSupported=true"

    aput-object v1, v8, v0

    const/16 v0, 0xf

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feedback="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-direct {p0, p1}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->getFeedbackCookie(Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v0

    const/16 v0, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDeleteFromLibrary="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-direct {p0, p1}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->getIsDeleteFromLibraryCookie(Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v0

    const/16 p1, 0x11

    const-string/jumbo v0, "serviceName=KindleCantilever"

    aput-object v0, v8, p1

    .line 329
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 349
    sget-object p1, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "clientName=KindleForAndroid"

    .line 350
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string p1, "clientName=KindleForAndroidCN"

    .line 352
    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    :goto_1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    .line 355
    invoke-direct {p0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->getCookieUrl()Ljava/lang/String;

    move-result-object v0

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cookie url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 358
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 359
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 361
    :cond_2
    invoke-virtual {p1, v0, v2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method private uploadLogs(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    .line 593
    sget-object p1, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->TAG:Ljava/lang/String;

    const-string v0, "Unable to send logs as dtsSessionId is null"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v1, "HelpAndFeedback"

    const-string v2, "CantileverLogUploadError"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    return-void

    .line 598
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getSendLogsWithAuthenticationURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 600
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CS"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ":DTSSID"

    .line 601
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":CS:SYSLOG:PUSH"

    .line 602
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 603
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?key="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    new-instance v1, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$1;-><init>(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;Ljava/lang/String;)V

    .line 619
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "X-Upload-Tag"

    .line 620
    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    invoke-static {v1, v0}, Lcom/amazon/kcp/log/LogUtils;->uploadLogs(Lcom/amazon/kindle/webservices/IWebRequest;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "thankyou"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_1

    .line 292
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->reportLeaveCantileverMetric()V

    .line 293
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onBackPressed()V

    :goto_1
    return-void
.end method

.method public onConnectivityChanged(Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 632
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->errorHandler:Lcom/amazon/kcp/helpandfeedback/HelpWebErrorHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 633
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$2;-><init>(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 199
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "cantileverMode"

    .line 200
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 201
    invoke-static {v1}, Lcom/amazon/kcp/helpandfeedback/CantileverEndpointBuilder;->getCantileverWorkFlow(Ljava/lang/String;)Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;

    move-result-object v2

    const-string v3, "asin"

    .line 202
    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "orderId"

    .line 203
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "isChatRedirect"

    .line 204
    invoke-virtual {v0, v6, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "On Create:isChatRedirect: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "On Create:cantileverMode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "On Create:asin: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "On Create:orderId: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v1, 0x1

    .line 209
    invoke-static {v1}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 210
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v6

    const-string v7, "HelpAndFeedback"

    const-string v8, "CantileverStart"

    invoke-virtual {v6, v7, v8}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-direct {p0, v2}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->setCantileverCookies(Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;)V

    .line 212
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 213
    sget p1, Lcom/amazon/kindle/librarymodule/R$layout;->help_and_feedback_screen:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 215
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->cantilever_toolbar:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    .line 216
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 218
    sget p1, Lcom/amazon/kindle/librarymodule/R$id;->web_view:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->webView:Landroid/webkit/WebView;

    .line 219
    new-instance p1, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;

    const-class v6, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p1, v5, v6, p0}, Lcom/amazon/kcp/application/WebViewSSLErrorHandler;-><init>(ZLjava/lang/String;Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->sslErrorHandler:Lcom/amazon/kcp/application/WebViewSSLErrorHandler;

    .line 220
    iget-object p1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 221
    invoke-static {}, Lcom/amazon/kcp/helpandfeedback/CantileverUtils;->isForumsInTreatment()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 222
    iget-object p1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;

    invoke-direct {v1, p0, p0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity$CantileverWebViewClient;-><init>(Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;Landroid/app/Activity;)V

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 225
    iget-object p1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 226
    iget-object p1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->errorHandler:Lcom/amazon/kcp/helpandfeedback/HelpWebErrorHandler;

    if-eqz p1, :cond_1

    .line 227
    iget-object v1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->webView:Landroid/webkit/WebView;

    sget-object v6, Lcom/amazon/kcp/helpandfeedback/WebViewState$Initialize;->INSTANCE:Lcom/amazon/kcp/helpandfeedback/WebViewState$Initialize;

    invoke-interface {p1, v1, v6}, Lcom/amazon/kcp/helpandfeedback/HelpWebErrorHandler;->updateWebViewState(Landroid/webkit/WebView;Lcom/amazon/kcp/helpandfeedback/WebViewState;)V

    .line 232
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {p1, v5}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 234
    new-instance p1, Lcom/amazon/kcp/library/LibraryActionBarHelper;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/library/LibraryActionBarHelper;-><init>(Landroid/app/Activity;)V

    .line 237
    instance-of v1, v2, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$Return;

    if-eqz v1, :cond_3

    .line 238
    invoke-static {}, Lcom/amazon/kcp/debug/DeleteBooksFromAccountDebugUtils;->shouldShowPermanentlyDeleteString()Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->cantilever_return_title_t2:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->cantilever_return_title:I

    goto :goto_0

    .line 239
    :cond_3
    instance-of v1, v2, Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow$BetaFeedback;

    if-eqz v1, :cond_4

    .line 240
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->beta_feedback_title:I

    goto :goto_0

    .line 242
    :cond_4
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->help_and_feedback_title:I

    .line 244
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kcp/library/LibraryActionBarHelper;->setDisplayHomeAsUpEnabled()V

    .line 245
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amazon/kcp/library/LibraryActionBarHelper;->setActionBarTitle(Ljava/lang/String;)V

    .line 247
    invoke-direct {p0, v2, v3, v4, v0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->getCantileverEndpoint(Lcom/amazon/kcp/helpandfeedback/CantileverWorkFlow;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 248
    sget-object v0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->webView:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 260
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 261
    sget v1, Lcom/amazon/kindle/librarymodule/R$menu;->help_and_feedback_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 254
    invoke-super {p0}, Lcom/amazon/kcp/redding/ReddingActivity;->onDestroy()V

    .line 255
    iget-object v0, p0, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->webView:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 267
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const v2, 0x102002c

    if-ne v0, v2, :cond_0

    .line 269
    invoke-virtual {p0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->onBackPressed()V

    return v1

    .line 271
    :cond_0
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->menuitem_close:I

    if-ne v0, v2, :cond_1

    .line 272
    invoke-direct {p0}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->reportLeaveCantileverMetric()V

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v1

    .line 277
    :cond_1
    invoke-super {p0, p1}, Lcom/amazon/kcp/redding/ReddingActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public setAmznAppInfoCookie(Landroid/content/Context;Lokhttp3/HttpUrl;Landroid/webkit/CookieManager;)V
    .locals 2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lokhttp3/HttpUrl;->topPrivateDomain()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 430
    invoke-direct {p0, p1}, Lcom/amazon/kcp/helpandfeedback/HelpAndFeedbackActivity;->getAmznAppInfoCookie(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p2, p1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
