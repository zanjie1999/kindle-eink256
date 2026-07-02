.class public final Lcom/audible/playersdk/headset/HeadsetPolicyHandler;
.super Landroid/content/BroadcastReceiver;
.source "HeadsetPolicyHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/playersdk/headset/HeadsetPolicyHandler$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/audible/playersdk/headset/HeadsetPolicyHandler$Companion;

.field private static final EXTRA_NAME:Ljava/lang/String; = "name"

.field private static final EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final context:Landroid/content/Context;

.field private final headsetPolicy:Lcom/audible/playersdk/headset/HeadsetPolicy;

.field private final player:Lsharedsdk/AudiblePlayer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/audible/playersdk/headset/HeadsetPolicyHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->Companion:Lcom/audible/playersdk/headset/HeadsetPolicyHandler$Companion;

    .line 133
    const-class v0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "LoggerFactory.getLogger(\u2026olicyHandler::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lsharedsdk/AudiblePlayer;Lcom/audible/playersdk/headset/HeadsetPolicy;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "player"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsetPolicy"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->player:Lsharedsdk/AudiblePlayer;

    iput-object p3, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->headsetPolicy:Lcom/audible/playersdk/headset/HeadsetPolicy;

    return-void
.end method

.method private final notifyStateChange(Lcom/audible/playersdk/headset/HeadsetPolicy;Lcom/audible/playersdk/headset/HeadsetPolicy$State;)V
    .locals 0

    .line 107
    invoke-interface {p1, p2}, Lcom/audible/playersdk/headset/HeadsetPolicy;->setNewHeadsetState(Lcom/audible/playersdk/headset/HeadsetPolicy$State;)V

    .line 109
    invoke-interface {p1}, Lcom/audible/playersdk/headset/HeadsetPolicy;->shouldPausePlayback()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->player:Lsharedsdk/AudiblePlayer;

    invoke-interface {p2}, Lsharedsdk/AudiblePlayerCommon;->getPlayWhenReady()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 110
    sget-object p1, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Pausing playback due to headset event"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->player:Lsharedsdk/AudiblePlayer;

    invoke-interface {p1}, Lsharedsdk/AudiblePlayerCommon;->pause()V

    goto :goto_0

    .line 112
    :cond_0
    invoke-interface {p1}, Lcom/audible/playersdk/headset/HeadsetPolicy;->shouldStartPlayback()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 113
    sget-object p1, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Starting playback due to headset event"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->player:Lsharedsdk/AudiblePlayer;

    invoke-interface {p1}, Lsharedsdk/AudiblePlayerCommon;->play()V

    :cond_1
    :goto_0
    return-void
.end method

.method private final transitionStateOnStreamChange()V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->player:Lsharedsdk/AudiblePlayer;

    invoke-interface {v0}, Lsharedsdk/AudiblePlayerCommon;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->player:Lsharedsdk/AudiblePlayer;

    invoke-interface {v0}, Lsharedsdk/AudiblePlayerCommon;->pause()V

    .line 128
    iget-object v0, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->player:Lsharedsdk/AudiblePlayer;

    invoke-interface {v0}, Lsharedsdk/AudiblePlayerCommon;->play()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->context:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public final enable()V
    .locals 2

    .line 30
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.media.AUDIO_BECOMING_NOISY"

    .line 33
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 34
    iget-object v1, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->context:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->context:Landroid/content/Context;

    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.HEADSET_PLUG"

    .line 43
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 45
    sget-object p1, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Dropping the initial sticky broadcast of ACTION_HEADSET_PLUG"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 48
    :cond_0
    sget-object p1, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->Companion:Lcom/audible/playersdk/headset/HeadsetPolicy$State$Companion;

    .line 51
    sget-object v0, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->PLUGGED_WITH_MICROPHONE:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    invoke-virtual {v0}, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->getValue()I

    move-result v0

    const-string v1, "state"

    .line 49
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 52
    sget-object v1, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->PLUGGED_WITH_MICROPHONE:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    .line 48
    invoke-virtual {p1, v0, v1}, Lcom/audible/playersdk/headset/HeadsetPolicy$State$Companion;->fromValue(ILcom/audible/playersdk/headset/HeadsetPolicy$State;)Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    move-result-object p1

    const-string v0, "name"

    .line 55
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 56
    sget-object v0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->LOGGER:Lorg/slf4j/Logger;

    .line 58
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Headset plug event occurred. New state: {}, headset name: {}"

    .line 56
    invoke-interface {v0, v2, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 61
    iget-object p2, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->headsetPolicy:Lcom/audible/playersdk/headset/HeadsetPolicy;

    invoke-direct {p0, p2, p1}, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->notifyStateChange(Lcom/audible/playersdk/headset/HeadsetPolicy;Lcom/audible/playersdk/headset/HeadsetPolicy$State;)V

    goto :goto_0

    :cond_1
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 62
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/high16 p1, -0x80000000

    const-string v0, "android.bluetooth.profile.extra.STATE"

    .line 63
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 67
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 72
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    .line 71
    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x2

    const-string v2, "Headset plug event occurred. New state: {}, device name: {}"

    if-ne v0, v1, :cond_2

    .line 74
    invoke-direct {p0}, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->transitionStateOnStreamChange()V

    .line 76
    sget-object p1, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->PLUGGED_WITHOUT_MICROPHONE:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    .line 77
    sget-object v0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->LOGGER:Lorg/slf4j/Logger;

    .line 79
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-interface {v0, v2, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 82
    iget-object p2, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->headsetPolicy:Lcom/audible/playersdk/headset/HeadsetPolicy;

    invoke-direct {p0, p2, p1}, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->notifyStateChange(Lcom/audible/playersdk/headset/HeadsetPolicy;Lcom/audible/playersdk/headset/HeadsetPolicy$State;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    .line 85
    sget-object p1, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->UNPLUGGED:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    .line 86
    sget-object v0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->LOGGER:Lorg/slf4j/Logger;

    .line 88
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-interface {v0, v2, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    iget-object p2, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->headsetPolicy:Lcom/audible/playersdk/headset/HeadsetPolicy;

    invoke-direct {p0, p2, p1}, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->notifyStateChange(Lcom/audible/playersdk/headset/HeadsetPolicy;Lcom/audible/playersdk/headset/HeadsetPolicy$State;)V

    goto :goto_0

    :cond_3
    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    .line 94
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 95
    sget-object p1, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->UNPLUGGED:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    .line 96
    sget-object p2, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "ACTION_AUDIO_BECOMING_NOISY event is detected, update headset state"

    invoke-interface {p2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->headsetPolicy:Lcom/audible/playersdk/headset/HeadsetPolicy;

    invoke-direct {p0, p2, p1}, Lcom/audible/playersdk/headset/HeadsetPolicyHandler;->notifyStateChange(Lcom/audible/playersdk/headset/HeadsetPolicy;Lcom/audible/playersdk/headset/HeadsetPolicy$State;)V

    :cond_4
    :goto_0
    return-void
.end method
