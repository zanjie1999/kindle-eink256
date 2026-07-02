.class public abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface$Stub;
.super Landroid/os/Binder;
.source "DeviceProvisioningServiceInterface.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.whisperjoin.deviceprovisioningservice.DeviceProvisioningServiceInterface"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.whisperjoin.deviceprovisioningservice.DeviceProvisioningServiceInterface"

    .line 14
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.whisperjoin.deviceprovisioningservice.DeviceProvisioningServiceInterface"

    .line 25
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    instance-of v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;

    if-eqz v1, :cond_1

    .line 27
    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;

    return-object v0

    .line 29
    :cond_1
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v0, 0x1

    const-string v1, "com.amazon.whisperjoin.deviceprovisioningservice.DeviceProvisioningServiceInterface"

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 98
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 90
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-interface {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;->shutdown()Z

    move-result p1

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 80
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;

    move-result-object p1

    .line 83
    invoke-interface {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;->removeCallback(Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;)Z

    move-result p1

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 85
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 70
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;

    move-result-object p1

    .line 73
    invoke-interface {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;->addCallback(Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;)Z

    move-result p1

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 55
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 58
    sget-object p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 63
    :goto_0
    invoke-interface {p0, p1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;->start(Lcom/amazon/whisperjoin/deviceprovisioningservice/service/ProvisioningServiceConfiguration;)Z

    move-result p1

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 47
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-interface {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/DeviceProvisioningServiceInterface;->isActive()Z

    move-result p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0
.end method
