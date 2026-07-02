.class public interface abstract Lcom/amazon/kindle/cms/ipc/AppCallback;
.super Ljava/lang/Object;
.source "AppCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/ipc/AppCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract execute(Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract executeEx(Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Lcom/amazon/kindle/cms/ipc/VerbExtrasInfo;)[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract notifyAction(Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sync(Lcom/amazon/kindle/cms/ipc/CMSServiceCalls;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
