.class public interface abstract Lamazon/whispersync/communication/ResponseHandler;
.super Ljava/lang/Object;
.source "ResponseHandler.java"


# virtual methods
.method public abstract onError(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/RequestFailedException;)V
.end method

.method public abstract onResponse(Lamazon/whispersync/communication/identity/EndpointIdentity;Lorg/apache/http/HttpResponse;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lamazon/whispersync/communication/identity/EndpointIdentity;",
            "Lorg/apache/http/HttpResponse;",
            "I",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPoint;",
            ">;)V"
        }
    .end annotation
.end method
