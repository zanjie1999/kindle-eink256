.class public abstract Lcom/audible/mobile/player/PlayerEventListener$Stub;
.super Landroid/os/Binder;
.source "PlayerEventListener.java"

# interfaces
.implements Lcom/audible/mobile/player/PlayerEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/player/PlayerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.audible.mobile.player.PlayerEventListener"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.audible.mobile.player.PlayerEventListener"

    .line 18
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/audible/mobile/player/PlayerEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.audible.mobile.player.PlayerEventListener"

    .line 29
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 30
    instance-of v1, v0, Lcom/audible/mobile/player/PlayerEventListener;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Lcom/audible/mobile/player/PlayerEventListener;

    return-object v0

    .line 33
    :cond_1
    new-instance v0, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/audible/mobile/player/PlayerEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const/4 v1, 0x1

    const-string v2, "com.audible.mobile.player.PlayerEventListener"

    if-eq p1, v0, :cond_a

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 277
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 263
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    .line 266
    sget-object p1, Lcom/audible/mobile/player/PlayerStatusSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/audible/mobile/player/PlayerStatusSnapshot;

    .line 271
    :cond_0
    invoke-interface {p0, v0}, Lcom/audible/mobile/player/PlayerEventListener;->onReady(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    .line 272
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 242
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 245
    sget-object p1, Lcom/audible/mobile/player/AudioDataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/player/AudioDataSource;

    goto :goto_0

    :cond_1
    move-object p1, v0

    .line 251
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_2

    .line 252
    sget-object p4, Lcom/audible/mobile/player/AuthorizationErrorSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/audible/mobile/player/AuthorizationErrorSource;

    .line 257
    :cond_2
    invoke-interface {p0, p1, v0}, Lcom/audible/mobile/player/PlayerEventListener;->onLicenseFailure(Lcom/audible/mobile/player/AudioDataSource;Lcom/audible/mobile/player/AuthorizationErrorSource;)V

    .line 258
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 235
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-interface {p0}, Lcom/audible/mobile/player/PlayerEventListener;->onLicenseAcquired()V

    .line 237
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 228
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-interface {p0}, Lcom/audible/mobile/player/PlayerEventListener;->onBuffering()V

    .line 230
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 219
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 222
    invoke-interface {p0, p1}, Lcom/audible/mobile/player/PlayerEventListener;->onMaxAvailableTimeUpdate(I)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 208
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 213
    invoke-interface {p0, p1, p2}, Lcom/audible/mobile/player/PlayerEventListener;->onBufferingUpdate(II)V

    .line 214
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 197
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 201
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    .line 202
    invoke-interface {p0, p1, p2}, Lcom/audible/mobile/player/PlayerEventListener;->onVolumeChanged(FF)V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 176
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    .line 179
    sget-object p1, Lcom/audible/mobile/player/NarrationSpeed;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/player/NarrationSpeed;

    goto :goto_1

    :cond_3
    move-object p1, v0

    .line 185
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_4

    .line 186
    sget-object p4, Lcom/audible/mobile/player/NarrationSpeed;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/audible/mobile/player/NarrationSpeed;

    .line 191
    :cond_4
    invoke-interface {p0, p1, v0}, Lcom/audible/mobile/player/PlayerEventListener;->onTempoChanged(Lcom/audible/mobile/player/NarrationSpeed;Lcom/audible/mobile/player/NarrationSpeed;)V

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 165
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 170
    invoke-interface {p0, p1, p2}, Lcom/audible/mobile/player/PlayerEventListener;->onError(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 151
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    .line 154
    sget-object p1, Lcom/audible/mobile/player/AudioDataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/audible/mobile/player/AudioDataSource;

    .line 159
    :cond_5
    invoke-interface {p0, v0}, Lcom/audible/mobile/player/PlayerEventListener;->onReset(Lcom/audible/mobile/player/AudioDataSource;)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 137
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    .line 140
    sget-object p1, Lcom/audible/mobile/player/AudioDataSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/audible/mobile/player/AudioDataSource;

    .line 145
    :cond_6
    invoke-interface {p0, v0}, Lcom/audible/mobile/player/PlayerEventListener;->onCompletion(Lcom/audible/mobile/player/AudioDataSource;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 130
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-interface {p0}, Lcom/audible/mobile/player/PlayerEventListener;->onSeekComplete()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 123
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-interface {p0}, Lcom/audible/mobile/player/PlayerEventListener;->onDestroy()V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 116
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-interface {p0}, Lcom/audible/mobile/player/PlayerEventListener;->onStop()V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 109
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-interface {p0}, Lcom/audible/mobile/player/PlayerEventListener;->onPause()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 102
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-interface {p0}, Lcom/audible/mobile/player/PlayerEventListener;->onPlay()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 93
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 96
    invoke-interface {p0, p1}, Lcom/audible/mobile/player/PlayerEventListener;->onPlaybackPositionChange(I)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 79
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_7

    .line 82
    sget-object p1, Lcom/audible/mobile/player/PlayerStatusSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/audible/mobile/player/PlayerStatusSnapshot;

    .line 87
    :cond_7
    invoke-interface {p0, v0}, Lcom/audible/mobile/player/PlayerEventListener;->onContentUpdated(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    .line 88
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 65
    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_8

    .line 68
    sget-object p1, Lcom/audible/mobile/player/PlayerStatusSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/audible/mobile/player/PlayerStatusSnapshot;

    .line 73
    :cond_8
    invoke-interface {p0, v0}, Lcom/audible/mobile/player/PlayerEventListener;->onNewContent(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 51
    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_9

    .line 54
    sget-object p1, Lcom/audible/mobile/player/PlayerStatusSnapshot;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lcom/audible/mobile/player/PlayerStatusSnapshot;

    .line 59
    :cond_9
    invoke-interface {p0, v0}, Lcom/audible/mobile/player/PlayerEventListener;->onListenerRegistered(Lcom/audible/mobile/player/PlayerStatusSnapshot;)V

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 46
    :cond_a
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
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
