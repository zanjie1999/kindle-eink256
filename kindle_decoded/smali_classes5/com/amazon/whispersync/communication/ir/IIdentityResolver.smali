.class public interface abstract Lcom/amazon/whispersync/communication/ir/IIdentityResolver;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/communication/ir/IIdentityResolver$Stub;
    }
.end annotation


# virtual methods
.method public abstract getEndpointForServiceName(Ljava/lang/String;)Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract resolveServiceEndpoint(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/whispersync/communication/ir/ParcelableIRServiceEndpoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
