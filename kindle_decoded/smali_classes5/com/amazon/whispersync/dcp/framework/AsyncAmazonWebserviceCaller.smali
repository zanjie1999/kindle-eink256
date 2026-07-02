.class public Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCaller;
.super Ljava/lang/Object;
.source "AsyncAmazonWebserviceCaller.java"

# interfaces
.implements Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCaller;


# instance fields
.field private final mAuthMethodFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

.field private mAuthenticationMethodAbstractFactory:Lcom/amazon/whispersync/dcp/framework/AuthenticationMethodAbstractFactory;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field

.field private mDcpAccountManager:Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCaller;->mDcpAccountManager:Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;

    invoke-interface {p1}, Lcom/amazon/whispersync/dcp/framework/auth/DcpAccountManager;->getAccount()Ljava/lang/String;

    move-result-object p1

    .line 29
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCaller;->mAuthenticationMethodAbstractFactory:Lcom/amazon/whispersync/dcp/framework/AuthenticationMethodAbstractFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/AuthenticationMethodAbstractFactory;->create(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCaller;->mAuthMethodFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCaller;->mAuthMethodFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCaller;->mAuthenticationMethodAbstractFactory:Lcom/amazon/whispersync/dcp/framework/AuthenticationMethodAbstractFactory;

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/dcp/framework/AuthenticationMethodAbstractFactory;->create(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCaller;->mAuthMethodFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    return-void
.end method


# virtual methods
.method public bridge synthetic createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCall;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCaller;->createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCall;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCaller;->createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;)Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCall;
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCaller;->createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;)Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;

    move-result-object p1

    return-object p1
.end method

.method public createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;
    .locals 2

    .line 53
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;

    invoke-virtual {p1}, Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;->getAuthenticationRequired()Z

    move-result v1

    invoke-direct {v0, p2, p3, v1}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/StandardAmazonWebServiceCallback;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;Z)V

    .line 55
    new-instance p2, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;

    iget-object p3, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCaller;->mAuthMethodFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    invoke-direct {p2, p1, v0, p3}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;)V

    return-object p2
.end method

.method public createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;
    .locals 1

    .line 63
    new-instance v0, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;

    invoke-direct {v0, p2}, Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/WebResponseParserAdapter;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebResponseParser;)V

    invoke-virtual {p0, p1, v0, p3}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCaller;->createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/Common/IWebResponseParser;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebserviceCallListener;)Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;

    move-result-object p1

    return-object p1
.end method

.method public createCall(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;)Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;
    .locals 2

    .line 45
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCaller;->mAuthMethodFactory:Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/whispersync/dcp/framework/AsyncAmazonWebserviceCall;-><init>(Lcom/amazon/whispersync/AmazonDevice/Common/WebRequest;Lcom/amazon/whispersync/AmazonDevice/DCP/Authentication/IAmazonWebServiceCallback;Lcom/amazon/identity/auth/device/api/AuthenticationMethodFactory;)V

    return-object v0
.end method
