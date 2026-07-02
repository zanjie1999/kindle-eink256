.class public interface abstract Lamazon/whispersync/communication/rmr/RmrResponseHandler;
.super Ljava/lang/Object;
.source "RmrResponseHandler.java"


# virtual methods
.method public abstract onError(Lamazon/whispersync/communication/rmr/RmrRequest;Lamazon/whispersync/communication/rmr/RmrResponseException;)V
.end method

.method public abstract onFinish(Lamazon/whispersync/communication/rmr/RmrRequest;)V
.end method

.method public abstract onResponse(Lamazon/whispersync/communication/rmr/RmrRequest;Lamazon/whispersync/communication/Message;)V
.end method

.method public abstract onStart(Lamazon/whispersync/communication/rmr/RmrRequest;)V
.end method
