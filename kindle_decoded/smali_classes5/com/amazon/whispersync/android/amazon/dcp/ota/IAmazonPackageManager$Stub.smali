.class public abstract Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageManager$Stub;
.super Landroid/os/Binder;
.source "IAmazonPackageManager.java"

# interfaces
.implements Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.whispersync.android.amazon.dcp.ota.IAmazonPackageManager"

.field static final TRANSACTION_clearApplicationUserData:I = 0x4

.field static final TRANSACTION_deleteApplicationCacheFiles:I = 0x3

.field static final TRANSACTION_deletePackage:I = 0x2

.field static final TRANSACTION_installPackage:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.whispersync.android.amazon.dcp.ota.IAmazonPackageManager"

    .line 18
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.whispersync.android.amazon.dcp.ota.IAmazonPackageManager"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    instance-of v1, v0, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageManager;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageManager;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.amazon.whispersync.android.amazon.dcp.ota.IAmazonPackageManager"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 100
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 45
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 91
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver;

    move-result-object p2

    .line 96
    invoke-interface {p0, p1, p2}, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageManager;->clearApplicationUserData(Ljava/lang/String;Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver;)V

    return v1

    .line 81
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver;

    move-result-object p2

    .line 86
    invoke-interface {p0, p1, p2}, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageManager;->deleteApplicationCacheFiles(Ljava/lang/String;Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver;)V

    return v1

    .line 69
    :cond_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDeleteObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDeleteObserver;

    move-result-object p3

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 76
    invoke-interface {p0, p1, p3, p2}, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageManager;->deletePackage(Ljava/lang/String;Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDeleteObserver;I)V

    return v1

    .line 50
    :cond_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 53
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 59
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p3

    invoke-static {p3}, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageInstallObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageInstallObserver;

    move-result-object p3

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 64
    invoke-interface {p0, p1, p3, p4, p2}, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageManager;->installPackage(Landroid/net/Uri;Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageInstallObserver;ILjava/lang/String;)V

    return v1
.end method
