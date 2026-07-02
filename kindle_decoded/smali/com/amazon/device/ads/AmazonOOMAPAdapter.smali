.class Lcom/amazon/device/ads/AmazonOOMAPAdapter;
.super Ljava/lang/Object;
.source "AmazonOOMAPAdapter.java"

# interfaces
.implements Lcom/amazon/device/ads/AuthenticationPlatformAdapter;


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "AmazonOOMAPAdapter"


# instance fields
.field private context:Landroid/content/Context;

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    sget-object v1, Lcom/amazon/device/ads/AmazonOOMAPAdapter;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AmazonOOMAPAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 4

    .line 45
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v1, p0, Lcom/amazon/device/ads/AmazonOOMAPAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 50
    iget-object v1, p0, Lcom/amazon/device/ads/AmazonOOMAPAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const-string v0, "Exception caught when trying to retrieve the user\'s account: %s"

    invoke-virtual {v1, v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/amazon/device/ads/AmazonOOMAPAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "No Amazon account found"

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getPreferredMarketplace()Ljava/lang/String;
    .locals 5

    .line 72
    invoke-virtual {p0}, Lcom/amazon/device/ads/AmazonOOMAPAdapter;->getAccountName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 81
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;

    move-result-object v2

    const-string v3, "PFM"

    .line 82
    const-class v4, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore$GetAttributeOptions;

    invoke-static {v4}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v1, v4}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->getAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Ljava/util/EnumSet;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 86
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/CustomerAttributeStore;->getValueOrAttributeDefault(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 91
    iget-object v2, p0, Lcom/amazon/device/ads/AmazonOOMAPAdapter;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 92
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    const-string v0, "Exception caught when trying to retrieve the user\'s preferred marketplace. Most issues can be remedied by upgrading to MAP R5. Exception message: %s"

    .line 91
    invoke-virtual {v2, v0, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-object v1
.end method

.method public makeAuthenticatedWebRequest(Ljava/lang/String;)Lcom/amazon/device/ads/WebRequest;
    .locals 2

    .line 63
    new-instance v0, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 64
    sget-object p1, Lcom/amazon/identity/auth/device/api/AuthenticationType;->OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object p1

    .line 66
    new-instance v0, Lcom/amazon/device/ads/AmazonOOAuthenticatedWebRequest;

    invoke-direct {v0, p1}, Lcom/amazon/device/ads/AmazonOOAuthenticatedWebRequest;-><init>(Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)V

    return-object v0
.end method

.method public setContext(Landroid/content/Context;)Lcom/amazon/device/ads/AmazonOOMAPAdapter;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/device/ads/AmazonOOMAPAdapter;->context:Landroid/content/Context;

    return-object p0
.end method

.method public bridge synthetic setContext(Landroid/content/Context;)Lcom/amazon/device/ads/AuthenticationPlatformAdapter;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AmazonOOMAPAdapter;->setContext(Landroid/content/Context;)Lcom/amazon/device/ads/AmazonOOMAPAdapter;

    return-object p0
.end method
