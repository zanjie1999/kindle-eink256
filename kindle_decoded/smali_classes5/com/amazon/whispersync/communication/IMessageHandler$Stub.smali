.class public abstract Lcom/amazon/whispersync/communication/IMessageHandler$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/amazon/whispersync/communication/IMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/IMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/communication/IMessageHandler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.whispersync.communication.IMessageHandler"

.field static final TRANSACTION_onMessage:I = 0x1

.field static final TRANSACTION_onMessageFragment:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.whispersync.communication.IMessageHandler"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/communication/IMessageHandler;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.whispersync.communication.IMessageHandler"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/amazon/whispersync/communication/IMessageHandler;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/amazon/whispersync/communication/IMessageHandler;

    return-object v0

    :cond_1
    new-instance v0, Lcom/amazon/whispersync/communication/IMessageHandler$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/communication/IMessageHandler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.amazon.whispersync.communication.IMessageHandler"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_5

    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;

    goto :goto_0

    :cond_2
    move-object p1, v1

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_3

    sget-object p3, Lcom/amazon/whispersync/communication/MessageEnvelope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p3

    move-object v1, p3

    check-cast v1, Lcom/amazon/whispersync/communication/MessageEnvelope;

    :cond_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    invoke-interface {p0, p1, v1, p3, p2}, Lcom/amazon/whispersync/communication/IMessageHandler;->onMessageFragment(Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;Lcom/amazon/whispersync/communication/MessageEnvelope;IZ)V

    return v2

    :cond_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;

    goto :goto_2

    :cond_6
    move-object p1, v1

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    if-eqz p3, :cond_7

    sget-object p3, Lcom/amazon/whispersync/communication/MessageEnvelope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Lcom/amazon/whispersync/communication/MessageEnvelope;

    :cond_7
    invoke-interface {p0, p1, v1}, Lcom/amazon/whispersync/communication/IMessageHandler;->onMessage(Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;Lcom/amazon/whispersync/communication/MessageEnvelope;)V

    return v2
.end method
