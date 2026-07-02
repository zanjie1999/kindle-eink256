.class public abstract Lcom/amazon/whispersync/dcp/ota/ISideloadCallback$Stub;
.super Landroid/os/Binder;
.source "ISideloadCallback.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/ota/ISideloadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/ota/ISideloadCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/ota/ISideloadCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.ISideloadCallback"

.field static final TRANSACTION_onSideloadFound:I = 0x1

.field static final TRANSACTION_onSideloadLost:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.whispersync.dcp.ota.ISideloadCallback"

    .line 16
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/dcp/ota/ISideloadCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.whispersync.dcp.ota.ISideloadCallback"

    .line 27
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    instance-of v1, v0, Lcom/amazon/whispersync/dcp/ota/ISideloadCallback;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/amazon/whispersync/dcp/ota/ISideloadCallback;

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/ISideloadCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/ota/ISideloadCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v0, "com.amazon.whispersync.dcp.ota.ISideloadCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 43
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 61
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-interface {p0}, Lcom/amazon/whispersync/dcp/ota/ISideloadCallback;->onSideloadLost()V

    return v1

    .line 48
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 51
    sget-object p1, Lcom/amazon/whispersync/dcp/ota/Sideload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/dcp/ota/Sideload;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 56
    :goto_0
    invoke-interface {p0, p1}, Lcom/amazon/whispersync/dcp/ota/ISideloadCallback;->onSideloadFound(Lcom/amazon/whispersync/dcp/ota/Sideload;)V

    return v1
.end method
