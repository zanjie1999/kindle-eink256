.class public abstract Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback$Stub;
.super Landroid/os/Binder;
.source "ProvisioningWorkflowEventCallback.java"

# interfaces
.implements Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.whisperjoin.deviceprovisioningservice.ProvisioningWorkflowEventCallback"

.field static final TRANSACTION_onComplete:I = 0x1

.field static final TRANSACTION_onError:I = 0x3

.field static final TRANSACTION_onNext:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.whisperjoin.deviceprovisioningservice.ProvisioningWorkflowEventCallback"

    .line 14
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.whisperjoin.deviceprovisioningservice.ProvisioningWorkflowEventCallback"

    .line 25
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    instance-of v1, v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;

    if-eqz v1, :cond_1

    .line 27
    check-cast v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;

    return-object v0

    .line 29
    :cond_1
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v1, "com.amazon.whisperjoin.deviceprovisioningservice.ProvisioningWorkflowEventCallback"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 42
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 65
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 72
    invoke-interface {p0, p1, p4, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;->onError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 54
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 58
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-interface {p0, p1, p2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;->onNext(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 47
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-interface {p0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/ProvisioningWorkflowEventCallback;->onComplete()V

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
