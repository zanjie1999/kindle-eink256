.class public Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/dagger/modules/AuthModule;
.super Ljava/lang/Object;
.source "AuthModule.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public providesAccessTokenProvider(Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/identity/auth/device/api/TokenManagement;Ljava/lang/String;)Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;
    .locals 1

    .line 36
    new-instance v0, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/whisperjoin/devicesetupserviceandroidclient/identity/MapAccessTokenProvider;-><init>(Lcom/amazon/identity/auth/device/api/MAPAccountManager;Lcom/amazon/identity/auth/device/api/TokenManagement;Ljava/lang/String;)V

    return-object v0
.end method

.method public providesMapAccountManager(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPAccountManager;
    .locals 1

    .line 21
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public providesTokenKeys(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/identity/auth/device/api/TokenKeys;->getAccessTokenKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public providesTokenManagement(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/TokenManagement;
    .locals 1

    .line 26
    new-instance v0, Lcom/amazon/identity/auth/device/api/TokenManagement;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/TokenManagement;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
