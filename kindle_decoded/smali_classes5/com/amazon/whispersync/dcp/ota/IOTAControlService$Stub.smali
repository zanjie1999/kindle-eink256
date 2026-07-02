.class public abstract Lcom/amazon/whispersync/dcp/ota/IOTAControlService$Stub;
.super Landroid/os/Binder;
.source "IOTAControlService.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/ota/IOTAControlService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/ota/IOTAControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/ota/IOTAControlService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.amazon.whispersync.dcp.ota.IOTAControlService"

.field static final TRANSACTION_cancelUpdates:I = 0xb

.field static final TRANSACTION_checkForUpdates:I = 0x1

.field static final TRANSACTION_downloadManifest:I = 0x8

.field static final TRANSACTION_ensureSideloadCanBeInstalled:I = 0xe

.field static final TRANSACTION_getActiveUpdates:I = 0x3

.field static final TRANSACTION_getLastCheckTimeInMillis:I = 0x2

.field static final TRANSACTION_getLastInstallationTime:I = 0x6

.field static final TRANSACTION_getLastOSInstallationTime:I = 0x5

.field static final TRANSACTION_getNextCheckTimeInMillis:I = 0x4

.field static final TRANSACTION_getReasonsNotToInstallUpdates:I = 0x9

.field static final TRANSACTION_installSideload:I = 0xf

.field static final TRANSACTION_pauseWhenOnMeteredConnection:I = 0x10

.field static final TRANSACTION_processManifest:I = 0x7

.field static final TRANSACTION_registerSideloadCallback:I = 0xc

.field static final TRANSACTION_startInstallUpdates:I = 0xa

.field static final TRANSACTION_unregisterSideloadCallback:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.amazon.whispersync.dcp.ota.IOTAControlService"

    .line 16
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/dcp/ota/IOTAControlService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.amazon.whispersync.dcp.ota.IOTAControlService"

    .line 27
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    instance-of v1, v0, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/amazon/whispersync/dcp/ota/IOTAControlService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const v0, 0x5f4e5446

    const-string v1, "com.amazon.whispersync.dcp.ota.IOTAControlService"

    const/4 v2, 0x1

    if-eq p1, v0, :cond_a

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 248
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 235
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 237
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 238
    sget-object p1, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

    .line 243
    :cond_0
    invoke-interface {p0, v0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->pauseWhenOnMeteredConnection(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)V

    .line 244
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 220
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    sget-object p1, Lcom/amazon/whispersync/dcp/ota/Sideload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/whispersync/dcp/ota/Sideload;

    .line 228
    :cond_1
    invoke-interface {p0, v0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->installSideload(Lcom/amazon/whispersync/dcp/ota/Sideload;)I

    move-result p1

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 205
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    .line 208
    sget-object p1, Lcom/amazon/whispersync/dcp/ota/Sideload;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/whispersync/dcp/ota/Sideload;

    .line 213
    :cond_2
    invoke-interface {p0, v0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->ensureSideloadCanBeInstalled(Lcom/amazon/whispersync/dcp/ota/Sideload;)I

    move-result p1

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 196
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/ota/ISideloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/dcp/ota/ISideloadCallback;

    move-result-object p1

    .line 199
    invoke-interface {p0, p1}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->unregisterSideloadCallback(Lcom/amazon/whispersync/dcp/ota/ISideloadCallback;)V

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 187
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/ota/ISideloadCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/whispersync/dcp/ota/ISideloadCallback;

    move-result-object p1

    .line 190
    invoke-interface {p0, p1}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->registerSideloadCallback(Lcom/amazon/whispersync/dcp/ota/ISideloadCallback;)V

    .line 191
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 172
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 175
    sget-object p1, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

    .line 180
    :cond_3
    invoke-interface {p0, v0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->cancelUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Z

    move-result p1

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v2

    .line 159
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    .line 162
    sget-object p1, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

    .line 167
    :cond_4
    invoke-interface {p0, v0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->startInstallUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)V

    return v2

    .line 144
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 147
    sget-object p1, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

    .line 152
    :cond_5
    invoke-interface {p0, v0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->getReasonsNotToInstallUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Ljava/util/List;

    move-result-object p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 130
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 133
    sget-object p1, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

    .line 138
    :cond_6
    invoke-interface {p0, v0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->downloadManifest(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)V

    .line 139
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v2

    .line 109
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 112
    sget-object p1, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

    .line 117
    :cond_7
    invoke-interface {p0, v0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->processManifest(Lcom/amazon/whispersync/dcp/ota/UpdateManifest;)Lcom/amazon/whispersync/dcp/ota/UpdateManifest;

    move-result-object p1

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_8

    .line 120
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    invoke-virtual {p1, p3, v2}, Lcom/amazon/whispersync/dcp/ota/UpdateManifest;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_8
    const/4 p1, 0x0

    .line 124
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    .line 99
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-interface {p0, p1}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->getLastInstallationTime(Ljava/lang/String;)J

    move-result-wide p1

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v2

    .line 91
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-interface {p0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->getLastOSInstallationTime()J

    move-result-wide p1

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v2

    .line 83
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-interface {p0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->getNextCheckTimeInMillis()J

    move-result-wide p1

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v2

    .line 73
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    sget-object p1, Lcom/amazon/whispersync/dcp/ota/UpdateType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 76
    invoke-interface {p0, p1}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->getActiveUpdates(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 65
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-interface {p0}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->getLastCheckTimeInMillis()J

    move-result-wide p1

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    invoke-virtual {p3, p1, p2}, Landroid/os/Parcel;->writeLong(J)V

    return v2

    .line 48
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 51
    sget-object p1, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;

    .line 57
    :cond_9
    sget-object p1, Lcom/amazon/whispersync/dcp/ota/UpdateType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    .line 58
    invoke-interface {p0, v0, p1}, Lcom/amazon/whispersync/dcp/ota/IOTAControlService;->checkForUpdates(Lcom/amazon/whispersync/dcp/ota/UpdateCheckReason;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 60
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v2

    .line 43
    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
