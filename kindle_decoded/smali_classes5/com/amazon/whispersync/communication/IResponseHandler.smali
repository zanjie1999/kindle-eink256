.class public interface abstract Lcom/amazon/whispersync/communication/IResponseHandler;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/communication/IResponseHandler$Stub;
    }
.end annotation


# virtual methods
.method public abstract onResponse(Lcom/amazon/whispersync/communication/MessageEnvelope;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/communication/MessageEnvelope;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/client/metrics/DataPointEnvelope;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
