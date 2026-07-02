.class public interface abstract Lcom/amazon/whispersync/communication/HttpRequestResponseConverter;
.super Ljava/lang/Object;
.source "HttpRequestResponseConverter.java"


# virtual methods
.method public abstract convertMessageToRequest(Lamazon/whispersync/communication/Message;)Lorg/apache/http/client/methods/HttpRequestBase;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/communication/ProtocolException;
        }
    .end annotation
.end method

.method public abstract convertMessageToResponse(Lamazon/whispersync/communication/Message;)Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/communication/ProtocolException;
        }
    .end annotation
.end method

.method public abstract convertRequestToMessage(Lorg/apache/http/HttpRequest;)Lamazon/whispersync/communication/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract convertResponseToMessage(Lorg/apache/http/HttpResponse;)Lamazon/whispersync/communication/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/communication/ProtocolException;
        }
    .end annotation
.end method
