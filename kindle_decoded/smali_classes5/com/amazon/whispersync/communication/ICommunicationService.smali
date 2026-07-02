.class public interface abstract Lcom/amazon/whispersync/communication/ICommunicationService;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/communication/ICommunicationService$Stub;
    }
.end annotation


# virtual methods
.method public abstract acquireConnection(Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy;Lcom/amazon/whispersync/communication/IConnectionListener;Lcom/amazon/whispersync/communication/ParcelableStatus;)Lcom/amazon/whispersync/communication/IConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract acquireConnectionEx(Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;Lcom/amazon/whispersync/communication/ParcelablePolicy;Ljava/lang/String;Lcom/amazon/whispersync/communication/IConnectionListener;Lcom/amazon/whispersync/communication/ParcelableStatus;)Lcom/amazon/whispersync/communication/IConnection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deregisterMessageHandler(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getGatewayConnectivity(Lcom/amazon/whispersync/communication/IConnectionListener;)Lcom/amazon/whispersync/communication/IGatewayConnectivity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getIdentityResolver()Lcom/amazon/whispersync/communication/ir/IIdentityResolver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract isInitialized()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerMessageHandler(ILcom/amazon/whispersync/communication/IMessageHandler;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract routeMessage(Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;Lcom/amazon/whispersync/communication/MessageEnvelope;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract routeMessageFragment(Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;ILcom/amazon/whispersync/communication/MessageEnvelope;ZI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
