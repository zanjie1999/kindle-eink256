.class public Lcom/amazon/whispersync/client/metrics/transport/OAuthRequestSigner;
.super Ljava/lang/Object;
.source "OAuthRequestSigner.java"

# interfaces
.implements Lamazon/whispersync/communication/authentication/RequestSigner;


# instance fields
.field private mOAuthHelper:Lcom/amazon/whispersync/client/metrics/transport/OAuthHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validateRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public setOAuthHelper(Lcom/amazon/whispersync/client/metrics/transport/OAuthHelper;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/transport/OAuthRequestSigner;->mOAuthHelper:Lcom/amazon/whispersync/client/metrics/transport/OAuthHelper;

    return-void
.end method

.method public signRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    .line 27
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/client/metrics/transport/OAuthRequestSigner;->validateRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V

    .line 28
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/transport/OAuthRequestSigner;->mOAuthHelper:Lcom/amazon/whispersync/client/metrics/transport/OAuthHelper;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/transport/OAuthRequestSigner;->mOAuthHelper:Lcom/amazon/whispersync/client/metrics/transport/OAuthHelper;

    invoke-interface {v0}, Lcom/amazon/whispersync/client/metrics/transport/OAuthHelper;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "x-amz-access-token"

    .line 32
    invoke-virtual {p1, v1, v0}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OAuth helper is set to null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 34
    new-instance v0, Lamazon/whispersync/communication/MissingCredentialsException;

    const-string v1, "Exception while retrieving access token"

    invoke-direct {v0, v1, p1}, Lamazon/whispersync/communication/MissingCredentialsException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

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

    .line 55
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/client/metrics/transport/OAuthRequestSigner;->signRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V

    return-void

    .line 53
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "OAuthRequestSigner does not support client-provided RequestContext"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
