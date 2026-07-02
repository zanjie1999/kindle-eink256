.class public Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;
.super Ljava/lang/Object;
.source "MetricsHttpRequestSigner.java"

# interfaces
.implements Lamazon/whispersync/communication/authentication/RequestSigner;


# instance fields
.field private final mAdditionalHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNextRequestSigner:Lamazon/whispersync/communication/authentication/RequestSigner;


# direct methods
.method public constructor <init>(Ljava/util/Map;Lamazon/whispersync/communication/authentication/RequestSigner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lamazon/whispersync/communication/authentication/RequestSigner;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;->mNextRequestSigner:Lamazon/whispersync/communication/authentication/RequestSigner;

    .line 30
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;->mAdditionalHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getNextRequestSigner()Lamazon/whispersync/communication/authentication/RequestSigner;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;->mNextRequestSigner:Lamazon/whispersync/communication/authentication/RequestSigner;

    return-object v0
.end method

.method public setNextRequestSigner(Lamazon/whispersync/communication/authentication/RequestSigner;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;->mNextRequestSigner:Lamazon/whispersync/communication/authentication/RequestSigner;

    return-void
.end method

.method public signRequest(Lorg/apache/http/client/methods/HttpRequestBase;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p0, p1, v0}, Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;->signRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/authentication/RequestContext;)V

    return-void
.end method

.method public signRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/authentication/RequestContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/authentication/SigningException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;->mAdditionalHeaders:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lorg/apache/http/client/methods/HttpRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/client/metrics/transport/MetricsHttpRequestSigner;->mNextRequestSigner:Lamazon/whispersync/communication/authentication/RequestSigner;

    if-eqz v0, :cond_1

    .line 54
    invoke-interface {v0, p1, p2}, Lamazon/whispersync/communication/authentication/RequestSigner;->signRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/authentication/RequestContext;)V

    :cond_1
    return-void
.end method
