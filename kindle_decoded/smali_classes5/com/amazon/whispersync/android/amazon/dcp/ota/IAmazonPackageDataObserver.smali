.class public interface abstract Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver;
.super Ljava/lang/Object;
.source "IAmazonPackageDataObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract onRemoveCompleted(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
