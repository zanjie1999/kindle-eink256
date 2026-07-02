.class public abstract Lcom/amazon/whispersync/communication/IConnection$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/amazon/whispersync/communication/IConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/IConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/communication/IConnection$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.whispersync.communication.IConnection"

.field static final TRANSACTION_isValidConnection:I = 0x4

.field static final TRANSACTION_release:I = 0x3

.field static final TRANSACTION_sendMessage:I = 0x1

.field static final TRANSACTION_sendRequest:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.whispersync.communication.IConnection"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/communication/IConnection;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.whispersync.communication.IConnection"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/amazon/whispersync/communication/IConnection;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/amazon/whispersync/communication/IConnection;

    return-object v0

    :cond_1
    new-instance v0, Lcom/amazon/whispersync/communication/IConnection$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/communication/IConnection$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "com.amazon.whispersync.communication.IConnection"

    const/4 v3, 0x1

    if-eq p1, v3, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/whispersync/communication/IConnection;->isValidConnection()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v3

    :cond_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/whispersync/communication/IConnection;->release()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v3

    :cond_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/amazon/whispersync/communication/MessageEnvelope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/communication/MessageEnvelope;

    :cond_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/communication/IResponseHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/communication/IResponseHandler;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Lcom/amazon/whispersync/communication/IConnection;->sendRequest(Lcom/amazon/whispersync/communication/MessageEnvelope;Lcom/amazon/whispersync/communication/IResponseHandler;)Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v3}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v3

    :cond_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/amazon/whispersync/communication/MessageEnvelope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/amazon/whispersync/communication/MessageEnvelope;

    :cond_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, v1, p1}, Lcom/amazon/whispersync/communication/IConnection;->sendMessage(Lcom/amazon/whispersync/communication/MessageEnvelope;I)Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_8

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v3}, Lcom/amazon/whispersync/communication/ErrorCodeWithDataPointsEnvelope;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v3
.end method
