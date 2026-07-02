.class public interface abstract Lamazon/whispersync/communication/CommunicationManager;
.super Ljava/lang/Object;
.source "CommunicationManager.java"


# virtual methods
.method public abstract acquireConnectedConnection(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/connection/Policy;Lamazon/whispersync/communication/connection/Connection$ConnectionListener;I)Lamazon/whispersync/communication/connection/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation
.end method

.method public abstract acquireConnection(Lamazon/whispersync/communication/identity/EndpointIdentity;Lamazon/whispersync/communication/connection/Policy;Lamazon/whispersync/communication/connection/Connection$ConnectionListener;)Lamazon/whispersync/communication/connection/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/ConnectionAcquisitionFailedException;,
            Lamazon/whispersync/communication/MissingCredentialsException;
        }
    .end annotation
.end method

.method public abstract deregisterMessageHandler(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/RegistrationFailedException;
        }
    .end annotation
.end method

.method public abstract getIdentityResolver()Lamazon/whispersync/communication/identity/IdentityResolver;
.end method

.method public abstract registerMessageHandler(ILamazon/whispersync/communication/MessageHandler;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lamazon/whispersync/communication/RegistrationFailedException;
        }
    .end annotation
.end method
