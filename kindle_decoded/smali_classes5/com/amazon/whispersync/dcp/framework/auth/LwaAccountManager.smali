.class public Lcom/amazon/whispersync/dcp/framework/auth/LwaAccountManager;
.super Ljava/lang/Object;
.source "LwaAccountManager.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;


# instance fields
.field private mAmazonAuthorizationManager:Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mLwaConnectionFactoryFactory:Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mLwaHelpers:Lcom/amazon/whispersync/dcp/framework/auth/LwaHelpers;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mScopes:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getConnectionFactory(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/auth/LwaAccountManager;->getConnectionFactory(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionFactory(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/auth/LwaAccountManager;->mLwaConnectionFactoryFactory:Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory$Factory;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;->getAccountId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p0}, Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory$Factory;->create(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;)Lcom/amazon/whispersync/dcp/framework/iuc/LwaConnectionFactory;

    move-result-object p1

    return-object p1
.end method

.method public getPrimaryAccount()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented for LWA"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/auth/LwaAccountManager;->mLwaHelpers:Lcom/amazon/whispersync/dcp/framework/auth/LwaHelpers;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/auth/LwaAccountManager;->mAmazonAuthorizationManager:Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/auth/LwaAccountManager;->mScopes:[Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/whispersync/dcp/framework/auth/LwaHelpers;->getToken(Lcom/amazon/identity/auth/device/authorization/api/AmazonAuthorizationManager;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeviceRegistered()Z
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented for LWA"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setScopes([Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/auth/LwaAccountManager;->mScopes:[Ljava/lang/String;

    return-void
.end method
