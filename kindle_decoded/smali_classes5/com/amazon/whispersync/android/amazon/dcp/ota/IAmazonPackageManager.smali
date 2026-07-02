.class public interface abstract Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageManager;
.super Ljava/lang/Object;
.source "IAmazonPackageManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract clearApplicationUserData(Ljava/lang/String;Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deleteApplicationCacheFiles(Ljava/lang/String;Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract deletePackage(Ljava/lang/String;Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDeleteObserver;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract installPackage(Landroid/net/Uri;Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageInstallObserver;ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
