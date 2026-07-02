.class public interface abstract Lcom/amazon/whispersync/dcp/ota/IOTAControlService;
.super Ljava/lang/Object;
.source "IOTAControlService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/ota/IOTAControlService$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkForUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/ota/UpdateType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/ota/UpdateManifest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract downloadManifest(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract ensureSideloadCanBeInstalled(Lcom/amazon/whispersync/dcp/ota/Sideload;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getActiveUpdates(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/ota/UpdateType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/ota/UpdateManifest;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLastCheckTimeInMillis()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLastInstallationTime(Ljava/lang/String;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLastOSInstallationTime()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getNextCheckTimeInMillis()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getReasonsNotToInstallUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/dcp/ota/UpdateManifest;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/ota/OTAInstallWaitReason;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract installSideload(Lcom/amazon/whispersync/dcp/ota/Sideload;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract pauseWhenOnMeteredConnection(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract processManifest(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Lcom/amazon/whispersync/dcp/ota/UpdateManifest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerSideloadCallback(Lcom/amazon/whispersync/dcp/ota/ISideloadCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startInstallUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterSideloadCallback(Lcom/amazon/whispersync/dcp/ota/ISideloadCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
