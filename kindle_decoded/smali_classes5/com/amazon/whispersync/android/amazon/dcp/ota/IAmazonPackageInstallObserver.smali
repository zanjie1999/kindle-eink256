.class public interface abstract Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageInstallObserver;
.super Ljava/lang/Object;
.source "IAmazonPackageInstallObserver.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageInstallObserver$Stub;
    }
.end annotation


# virtual methods
.method public abstract packageInstalled(Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
