.class public Lcom/amazon/whispersync/dcp/framework/auth/MapR5AccountManager;
.super Ljava/lang/Object;
.source "MapR5AccountManager.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;


# instance fields
.field private mMAPAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mMapConnectionFactoryFactory:Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mMapHelpers:Lcom/amazon/whispersync/dcp/framework/auth/MapHelpers;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


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

    .line 29
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/auth/MapR5AccountManager;->mMAPAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConnectionFactory(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/auth/MapR5AccountManager;->getConnectionFactory(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionFactory(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/auth/MapR5AccountManager;->mMapConnectionFactoryFactory:Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory$Factory;

    invoke-virtual {v0, p1, p0}, Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory$Factory;->create(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;)Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory;

    move-result-object p1

    return-object p1
.end method

.method public getPrimaryAccount()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/auth/MapR5AccountManager;->mMAPAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/auth/MapR5AccountManager;->mMapHelpers:Lcom/amazon/whispersync/dcp/framework/auth/MapHelpers;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/auth/MapR5AccountManager;->getAccount()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/auth/MapHelpers;->getToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isDeviceRegistered()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/auth/MapR5AccountManager;->mMAPAccountManager:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->isDeviceRegistered()Z

    move-result v0

    return v0
.end method
