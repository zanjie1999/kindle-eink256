.class public interface abstract Lcom/amazon/whispersync/communication/IConnection;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/communication/IConnection$Stub;
    }
.end annotation


# virtual methods
.method public abstract isValidConnection()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract release()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendMessage(Lcom/amazon/whispersync/communication/MessageEnvelope;I)Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendRequest(Lcom/amazon/whispersync/communication/MessageEnvelope;Lcom/amazon/whispersync/communication/IResponseHandler;)Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
