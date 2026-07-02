.class Lcom/amazon/device/ads/MAPAccountManagerWrapper;
.super Ljava/lang/Object;
.source "MAPAccountManagerWrapper.java"

# interfaces
.implements Lcom/amazon/device/ads/AccountManagerWrapper;


# instance fields
.field private mapAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/amazon/device/ads/MAPAccountManagerWrapper;->mapAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/device/ads/MAPAccountManagerWrapper;->mapAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MAPAccountManagerWrapper;->mapAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
