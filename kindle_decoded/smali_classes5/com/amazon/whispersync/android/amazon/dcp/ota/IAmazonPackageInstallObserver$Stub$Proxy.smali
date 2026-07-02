.class Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageInstallObserver$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAmazonPackageInstallObserver.java"

# interfaces
.implements Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageInstallObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageInstallObserver$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageInstallObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageInstallObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.amazon.whispersync.android.amazon.dcp.ota.IAmazonPackageInstallObserver"

    return-object v0
.end method

.method public packageInstalled(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 78
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.amazon.whispersync.android.amazon.dcp.ota.IAmazonPackageInstallObserver"

    .line 80
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object p1, p0, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageInstallObserver$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-interface {p1, v1, v0, p2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method
