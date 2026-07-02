.class public abstract Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver$Stub;
.super Landroid/os/Binder;
.source "IAmazonPackageDataObserver.java"

# interfaces
.implements Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.whispersync.android.amazon.dcp.ota.IAmazonPackageDataObserver"

.field static final TRANSACTION_onRemoveCompleted:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.whispersync.android.amazon.dcp.ota.IAmazonPackageDataObserver"

    .line 15
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.whispersync.android.amazon.dcp.ota.IAmazonPackageDataObserver"

    .line 26
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 27
    instance-of v1, v0, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver;

    return-object v0

    .line 30
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.amazon.whispersync.android.amazon.dcp.ota.IAmazonPackageDataObserver"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 56
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 47
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 52
    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/amazon/whispersync/android/amazon/dcp/ota/IAmazonPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V

    return v1
.end method
