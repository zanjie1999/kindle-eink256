.class public abstract Lcom/amazon/whispersync/communication/ICommunicationService$Stub;
.super Landroid/os/Binder;

# interfaces
.implements Lcom/amazon/whispersync/communication/ICommunicationService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/communication/ICommunicationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/communication/ICommunicationService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.whispersync.communication.ICommunicationService"

.field static final TRANSACTION_acquireConnection:I = 0x1

.field static final TRANSACTION_acquireConnectionEx:I = 0x8

.field static final TRANSACTION_deregisterMessageHandler:I = 0x3

.field static final TRANSACTION_getGatewayConnectivity:I = 0x9

.field static final TRANSACTION_getIdentityResolver:I = 0x6

.field static final TRANSACTION_isInitialized:I = 0x7

.field static final TRANSACTION_registerMessageHandler:I = 0x2

.field static final TRANSACTION_routeMessage:I = 0x4

.field static final TRANSACTION_routeMessageFragment:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.whispersync.communication.ICommunicationService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/communication/ICommunicationService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.whispersync.communication.ICommunicationService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/amazon/whispersync/communication/ICommunicationService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/amazon/whispersync/communication/ICommunicationService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/amazon/whispersync/communication/ICommunicationService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/communication/ICommunicationService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const-string v1, "com.amazon.whispersync.communication.ICommunicationService"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/communication/IConnectionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/communication/IConnectionListener;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/amazon/whispersync/communication/ICommunicationService;->getGatewayConnectivity(Lcom/amazon/whispersync/communication/IConnectionListener;)Lcom/amazon/whispersync/communication/IGatewayConnectivity;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;

    move-object v4, p1

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/amazon/whispersync/communication/ParcelablePolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/communication/ParcelablePolicy;

    move-object v5, p1

    goto :goto_1

    :cond_2
    move-object v5, v0

    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/communication/IConnectionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/communication/IConnectionListener;

    move-result-object v7

    new-instance p1, Lcom/amazon/whispersync/communication/ParcelableStatus;

    invoke-direct {p1}, Lcom/amazon/whispersync/communication/ParcelableStatus;-><init>()V

    move-object v3, p0

    move-object v8, p1

    invoke-interface/range {v3 .. v8}, Lcom/amazon/whispersync/communication/ICommunicationService;->acquireConnectionEx(Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;Lcom/amazon/whispersync/communication/ParcelablePolicy;Ljava/lang/String;Lcom/amazon/whispersync/communication/IConnectionListener;Lcom/amazon/whispersync/communication/ParcelableStatus;)Lcom/amazon/whispersync/communication/IConnection;

    move-result-object p2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p3, v2}, Lcom/amazon/whispersync/communication/ParcelableStatus;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/whispersync/communication/ICommunicationService;->isInitialized()Z

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/whispersync/communication/ICommunicationService;->getIdentityResolver()Lcom/amazon/whispersync/communication/ir/IIdentityResolver;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v2

    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;

    move-object v4, p1

    goto :goto_2

    :cond_5
    move-object v4, v0

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/amazon/whispersync/communication/MessageEnvelope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/whispersync/communication/MessageEnvelope;

    :cond_6
    move-object v6, v0

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    const/4 p1, 0x0

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    move-object v3, p0

    invoke-interface/range {v3 .. v8}, Lcom/amazon/whispersync/communication/ICommunicationService;->routeMessageFragment(Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;ILcom/amazon/whispersync/communication/MessageEnvelope;ZI)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    sget-object p1, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;

    goto :goto_4

    :cond_8
    move-object p1, v0

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_9

    sget-object p4, Lcom/amazon/whispersync/communication/MessageEnvelope;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/amazon/whispersync/communication/MessageEnvelope;

    :cond_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-interface {p0, p1, v0, p2}, Lcom/amazon/whispersync/communication/ICommunicationService;->routeMessage(Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;Lcom/amazon/whispersync/communication/MessageEnvelope;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/amazon/whispersync/communication/ICommunicationService;->deregisterMessageHandler(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/whispersync/communication/IMessageHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/communication/IMessageHandler;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/amazon/whispersync/communication/ICommunicationService;->registerMessageHandler(ILcom/amazon/whispersync/communication/IMessageHandler;)I

    move-result p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;

    goto :goto_5

    :cond_a
    move-object p1, v0

    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b

    sget-object p4, Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy;

    goto :goto_6

    :cond_b
    move-object p4, v0

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/whispersync/communication/IConnectionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/communication/IConnectionListener;

    move-result-object p2

    new-instance v1, Lcom/amazon/whispersync/communication/ParcelableStatus;

    invoke-direct {v1}, Lcom/amazon/whispersync/communication/ParcelableStatus;-><init>()V

    invoke-interface {p0, p1, p4, p2, v1}, Lcom/amazon/whispersync/communication/ICommunicationService;->acquireConnection(Lcom/amazon/whispersync/communication/ParcelableEndpointIdentity;Lcom/amazon/whispersync/communication/ParcelableConnectionPolicy;Lcom/amazon/whispersync/communication/IConnectionListener;Lcom/amazon/whispersync/communication/ParcelableStatus;)Lcom/amazon/whispersync/communication/IConnection;

    move-result-object p1

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_c

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v1, p3, v2}, Lcom/amazon/whispersync/communication/ParcelableStatus;->writeToParcel(Landroid/os/Parcel;I)V

    return v2

    :cond_d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
