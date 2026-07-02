.class public Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory;
.super Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory;
.source "MapR5ConnectionFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory$Factory;
    }
.end annotation


# instance fields
.field private final mAccount:Ljava/lang/String;

.field private mAuthenticationMethodAbstractFactory:Lcom/amazon/whispersync/dcp/framework/AuthenticationMethodAbstractFactory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private final mAuthenticationType:Lcom/amazon/identity/auth/device/api/AuthenticationType;

.field private final mDcpAccountManager:Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;Lcom/amazon/identity/auth/device/api/AuthenticationType;)V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 53
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/iuc/AuthenticatedConnectionFactory;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory;->mAccount:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory;->mDcpAccountManager:Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;

    .line 56
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory;->mAuthenticationType:Lcom/amazon/identity/auth/device/api/AuthenticationType;

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

    .line 62
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory;->mAuthenticationMethodAbstractFactory:Lcom/amazon/whispersync/dcp/framework/AuthenticationMethodAbstractFactory;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory;->mAccount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/dcp/framework/AuthenticationMethodAbstractFactory;->create(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/iuc/MapR5ConnectionFactory;->mAuthenticationType:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->openConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method
