.class Lcom/amazon/whispersync/device/crashmanager/OAuthRequestSigner;
.super Ljava/lang/Object;
.source "OAuthRequestSigner.java"

# interfaces
.implements Lcom/amazon/whispersync/communication/authentication/RequestSigner;


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private mOAuthHelper:Lcom/amazon/whispersync/device/utils/OAuthHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "OAuthRequestSigner"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/OAuthRequestSigner;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/device/utils/OAuthHelper;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/OAuthRequestSigner;->mOAuthHelper:Lcom/amazon/whispersync/device/utils/OAuthHelper;

    return-void
.end method

.method private validateRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public signRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    .line 36
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/device/crashmanager/OAuthRequestSigner;->validateRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/OAuthRequestSigner;->mOAuthHelper:Lcom/amazon/whispersync/device/utils/OAuthHelper;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/utils/OAuthHelper;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v1, "x-amz-access-token"

    .line 41
    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 39
    :cond_0
    new-instance p1, Lamazon/whispersync/communication/MissingCredentialsException;

    const-string v0, "Null access token returned from OAuthHelper."

    invoke-direct {p1, v0}, Lamazon/whispersync/communication/MissingCredentialsException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 43
    new-instance v0, Lamazon/whispersync/communication/authentication/SigningException;

    const-string v1, "Exception while retrieving access token"

    invoke-direct {v0, v1, p1}, Lamazon/whispersync/communication/authentication/SigningException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public signRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/authentication/RequestContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 64
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/device/crashmanager/OAuthRequestSigner;->signRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-void

    .line 62
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "OAuthRequestSigner does not support client-provided RequestContext"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
