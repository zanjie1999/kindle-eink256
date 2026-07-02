.class public Lcom/amazon/whispersync/communication/authentication/MapAccountManagerWrapperImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/amazon/whispersync/communication/authentication/MapAccountManagerWrapper;


# instance fields
.field private final mAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-direct {v0, p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/whispersync/communication/authentication/MapAccountManagerWrapperImpl;->mAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/MapAccountManagerWrapperImpl;->mAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAccounts()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/MapAccountManagerWrapperImpl;->mAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccounts()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getPrimaryAccount()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/amazon/whispersync/communication/authentication/MapAccountManagerWrapperImpl;->mAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
