.class public interface abstract Lcom/amazon/whispersync/dcp/ota/ISideloadCallback;
.super Ljava/lang/Object;
.source "ISideloadCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/ota/ISideloadCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onSideloadFound(Lcom/amazon/whispersync/dcp/ota/Sideload;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSideloadLost()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
