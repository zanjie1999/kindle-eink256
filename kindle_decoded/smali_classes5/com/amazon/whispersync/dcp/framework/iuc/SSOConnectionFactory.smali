.class public Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory;
.super Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory;
.source "SSOConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory$Factory;
    }
.end annotation


# instance fields
.field private final mAuthenticationType:Lcom/amazon/whispersync/dcp/sso/AuthenticationType;

.field private final mDcpAccountManager:Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;

.field private mSSOAuthenticationMethodAbstractFactory:Lcom/amazon/whispersync/dcp/framework/SSOAuthenticationMethodAbstractFactory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/amazon/whispersync/dcp/sso/AuthenticationType;Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;)V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 66
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory;->mDcpAccountManager:Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;

    .line 68
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory;->mAuthenticationType:Lcom/amazon/whispersync/dcp/sso/AuthenticationType;

    return-void
.end method


# virtual methods
.method public openConnection(Ljava/net/URL;)Ljava/net/URLConnection;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory;->mDcpAccountManager:Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;

    check-cast v0, Lcom/amazon/whispersync/dcp/framework/auth/SSOAccountManager;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/auth/SSOAccountManager;->getAmazonAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory;->mSSOAuthenticationMethodAbstractFactory:Lcom/amazon/whispersync/dcp/framework/SSOAuthenticationMethodAbstractFactory;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/dcp/framework/SSOAuthenticationMethodAbstractFactory;->create(Landroid/accounts/Account;)Lcom/amazon/whispersync/dcp/sso/AuthenticationMethodFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/SSOConnectionFactory;->mAuthenticationType:Lcom/amazon/whispersync/dcp/sso/AuthenticationType;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/sso/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/whispersync/dcp/sso/AuthenticationType;)Lcom/amazon/whispersync/dcp/sso/AuthenticationMethod;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/whispersync/dcp/sso/AuthenticatedURLConnection;->openConnection(Ljava/net/URL;Lcom/amazon/whispersync/dcp/sso/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method
