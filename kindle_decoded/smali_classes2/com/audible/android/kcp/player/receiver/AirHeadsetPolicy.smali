.class public Lcom/audible/android/kcp/player/receiver/AirHeadsetPolicy;
.super Ljava/lang/Object;
.source "AirHeadsetPolicy.java"

# interfaces
.implements Lcom/audible/playersdk/headset/HeadsetPolicy;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/audible/android/kcp/player/receiver/AirHeadsetPolicy;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getIntent(Lcom/audible/android/kcp/player/receiver/PlayerAction;Lcom/audible/android/kcp/util/BroadcastSource;)Landroid/content/Intent;
    .locals 2

    .line 50
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/audible/android/kcp/player/receiver/AirHeadsetPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/audible/android/kcp/player/receiver/PlayerAction;->getActionString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    sget-object p1, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->SOURCE:Lcom/audible/android/kcp/util/BroadcastReceiverExtra;

    invoke-virtual {p1}, Lcom/audible/android/kcp/util/BroadcastReceiverExtra;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method public setNewHeadsetState(Lcom/audible/playersdk/headset/HeadsetPolicy$State;)V
    .locals 2

    .line 28
    sget-object v0, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->UNPLUGGED:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    if-ne p1, v0, :cond_0

    .line 31
    iget-object p1, p0, Lcom/audible/android/kcp/player/receiver/AirHeadsetPolicy;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/audible/android/kcp/player/receiver/PlayerAction;->PAUSE:Lcom/audible/android/kcp/player/receiver/PlayerAction;

    sget-object v1, Lcom/audible/android/kcp/util/BroadcastSource;->HEADSET_UNPLUGGED:Lcom/audible/android/kcp/util/BroadcastSource;

    invoke-direct {p0, v0, v1}, Lcom/audible/android/kcp/player/receiver/AirHeadsetPolicy;->getIntent(Lcom/audible/android/kcp/player/receiver/PlayerAction;Lcom/audible/android/kcp/util/BroadcastSource;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public shouldPausePlayback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public shouldStartPlayback()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
