.class public interface abstract Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDeleteObserver;
.super Ljava/lang/Object;
.source "IAmazonPackageDeleteObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDeleteObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract packageDeleted(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
