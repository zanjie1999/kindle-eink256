.class public Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;
.super Ljava/lang/Object;
.source "AmazonWebserviceCaller.java"

# interfaces
.implements Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCaller;


# instance fields
.field private mAuthFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

.field private mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->mAuthFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    .line 20
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 21
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_0

    .line 27
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->mAuthFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    :cond_0
    return-void
.end method

.method private initializeWebserviceCall(Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 75
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCall;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCall;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCall;
    .locals 0

    .line 17
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;)Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;

    move-result-object p1

    return-object p1
.end method

.method public createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;
    .locals 2

    .line 63
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;

    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getAuthenticationRequired()Z

    move-result v1

    invoke-direct {v0, p2, p3, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;Z)V

    .line 66
    new-instance p2, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;

    iget-object p3, p0, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->mAuthFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    invoke-direct {p2, p1, v0, p3}, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;)V

    .line 67
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->initializeWebserviceCall(Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;)V

    return-object p2
.end method

.method public createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;
    .locals 1

    .line 55
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;

    invoke-direct {v0, p2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;

    move-result-object p1

    return-object p1
.end method

.method public createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;)Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;
    .locals 2

    .line 44
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->mAuthFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;)V

    .line 45
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->initializeWebserviceCall(Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCall;)V

    return-object v0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AmazonWebserviceCaller;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method
