.class public interface abstract Lcom/amazon/whispersync/communication/IGatewayConnectivity;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/communication/IGatewayConnectivity$Stub;
    }
.end annotation


# virtual methods
.method public abstract getGatewayConnectionState()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
