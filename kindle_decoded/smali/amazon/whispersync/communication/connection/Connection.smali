.class public interface abstract Lamazon/whispersync/communication/connection/Connection;
.super Ljava/lang/Object;
.source "Connection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lamazon/whispersync/communication/connection/Connection$ConnectionListener;
    }
.end annotation


# virtual methods
.method public abstract getConnectionState()I
.end method

.method public abstract release()V
.end method

.method public abstract sendMessage(Lamazon/whispersync/communication/Message;ILcom/amazon/whispersync/client/metrics/MetricEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/connection/TransmissionFailedException;,
            Lamazon/whispersync/communication/connection/IllegalConnectionStateException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation
.end method

.method public abstract sendRequest(Lorg/apache/http/client/methods/HttpRequestBase;Lamazon/whispersync/communication/ResponseHandler;Lcom/amazon/whispersync/client/metrics/MetricEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/connection/TransmissionFailedException;,
            Lamazon/whispersync/communication/connection/IllegalConnectionStateException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation
.end method
