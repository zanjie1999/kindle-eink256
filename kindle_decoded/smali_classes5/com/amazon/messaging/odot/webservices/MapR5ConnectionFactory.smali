.class public Lcom/amazon/messaging/odot/webservices/MapR5ConnectionFactory;
.super Ljava/lang/Object;
.source "MapR5ConnectionFactory.java"

# interfaces
.implements Lcom/amazon/messaging/odot/webservices/ExternalConnectionFactory;


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAuthenticationMethodAbstractFactory:Lcom/amazon/messaging/odot/webservices/AuthenticationMethodAbstractFactory;

.field private mAuthenticationType:Lcom/amazon/identity/auth/device/api/AuthenticationType;


# direct methods
.method public constructor <init>(Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;->getAccountId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/messaging/odot/webservices/MapR5ConnectionFactory;->mAccount:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthMethod;->getDcpAuthType()Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    move-result-object p1

    sget-object v0, Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;->ADPAuthenticator:Lcom/amazon/messaging/odot/webservices/auth/DcpAuthType;

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/amazon/identity/auth/device/api/AuthenticationType;->ADPAuthenticator:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/amazon/identity/auth/device/api/AuthenticationType;->OAuth:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    :goto_0
    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/MapR5ConnectionFactory;->mAuthenticationType:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    .line 30
    new-instance p1, Lcom/amazon/messaging/odot/webservices/AuthenticationMethodAbstractFactory;

    invoke-direct {p1, p2}, Lcom/amazon/messaging/odot/webservices/AuthenticationMethodAbstractFactory;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/messaging/odot/webservices/MapR5ConnectionFactory;->mAuthenticationMethodAbstractFactory:Lcom/amazon/messaging/odot/webservices/AuthenticationMethodAbstractFactory;

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

    .line 35
    iget-object v0, p0, Lcom/amazon/messaging/odot/webservices/MapR5ConnectionFactory;->mAuthenticationMethodAbstractFactory:Lcom/amazon/messaging/odot/webservices/AuthenticationMethodAbstractFactory;

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/MapR5ConnectionFactory;->mAccount:Ljava/lang/String;

    .line 36
    invoke-virtual {v0, v1}, Lcom/amazon/messaging/odot/webservices/AuthenticationMethodAbstractFactory;->create(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/messaging/odot/webservices/MapR5ConnectionFactory;->mAuthenticationType:Lcom/amazon/identity/auth/device/api/AuthenticationType;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;->newAuthenticationMethod(Lcom/amazon/identity/auth/device/api/AuthenticationType;)Lcom/amazon/identity/auth/device/api/AuthenticationMethod;

    move-result-object v0

    .line 35
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/api/AuthenticatedURLConnection;->openConnection(Ljava/net/URL;Lcom/amazon/identity/auth/device/api/AuthenticationMethod;)Ljava/net/HttpURLConnection;

    move-result-object p1

    return-object p1
.end method
