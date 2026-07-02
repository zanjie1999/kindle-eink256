.class public Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;
.super Ljava/lang/Object;
.source "AmazonWebserviceCaller.java"

# interfaces
.implements Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCaller;


# instance fields
.field private mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private mRequestSigner:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;

.field private mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->mRequestSigner:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;

    .line 14
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 15
    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz p1, :cond_0

    .line 21
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;-><init>(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/ITokenAuthProvider;)V

    iput-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->mRequestSigner:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;

    :cond_0
    return-void
.end method

.method private initializeWebserviceCall(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void
.end method


# virtual methods
.method public createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;
    .locals 2

    .line 67
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;

    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getAuthenticationRequired()Z

    move-result v1

    invoke-direct {v0, p2, p3, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;Z)V

    .line 70
    new-instance p2, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;

    iget-object p3, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->mRequestSigner:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;

    invoke-direct {p2, p1, v0, p3}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;)V

    .line 71
    invoke-direct {p0, p2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->initializeWebserviceCall(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;)V

    return-object p2
.end method

.method public createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;
    .locals 1

    .line 59
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;

    invoke-direct {v0, p2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;

    move-result-object p1

    return-object p1
.end method

.method public createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;
    .locals 2

    .line 48
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;

    iget-object v1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->mRequestSigner:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;)V

    .line 49
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->initializeWebserviceCall(Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;)V

    return-object v0
.end method

.method public bridge synthetic createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCall;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCall;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCall;
    .locals 0

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCall;

    move-result-object p1

    return-object p1
.end method

.method public getUsingLegacyAuthentication()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->mRequestSigner:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;

    invoke-virtual {v0}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->getUseLegacyAuthentication()Z

    move-result v0

    return v0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->mHostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-void
.end method

.method public setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->mSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-void
.end method

.method public setUsingLegacyAuthentication(Z)V
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/AmazonWebserviceCaller;->mRequestSigner:Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/RequestSigner;->setUseLegacyAuthentication(Z)V

    return-void
.end method
