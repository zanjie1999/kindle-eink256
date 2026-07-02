.class public Lcom/amazon/whispersync/dcp/framework/auth/SSOAccountManager;
.super Ljava/lang/Object;
.source "SSOAccountManager.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;


# instance fields
.field private mAmazonAccountManager:Lcom/amazon/whispersync/dcp/sso/AmazonAccountManager;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mSSOConnectionFactoryFactory:Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory$Factory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/auth/SSOAccountManager;->mAmazonAccountManager:Lcom/amazon/whispersync/dcp/sso/AmazonAccountManager;

    invoke-virtual {p0}, Lcom/amazon/whispersync/dcp/framework/auth/SSOAccountManager;->getAmazonAccount()Landroid/accounts/Account;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/sso/AmazonAccountManager;->getAccountIdentifer(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAmazonAccount()Landroid/accounts/Account;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/auth/SSOAccountManager;->mAmazonAccountManager:Lcom/amazon/whispersync/dcp/sso/AmazonAccountManager;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/sso/AmazonAccountManager;->getAmazonAccount()Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getConnectionFactory(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory;
    .locals 0

    .line 17
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/auth/SSOAccountManager;->getConnectionFactory(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionFactory(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;)Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/auth/SSOAccountManager;->mSSOConnectionFactoryFactory:Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory$Factory;

    invoke-virtual {v0, p1, p0}, Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory$Factory;->create(Lcom/amazon/whispersync/dcp/framework/auth/DcpAuthMethod;Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;)Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory;

    move-result-object p1

    return-object p1
.end method

.method public getPrimaryAccount()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented for SSO"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented for SSO"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDeviceRegistered()Z
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not yet implemented for SSO"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
