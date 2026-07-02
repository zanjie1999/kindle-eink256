.class public final Lcom/audible/mobile/headset/HeadsetReceiver;
.super Lcom/audible/mobile/framework/BaseGlobalBroadcastReceiverRegistrationSupport;
.source "HeadsetReceiver.java"


# static fields
.field private static final EXTRA_NAME:Ljava/lang/String; = "name"

.field private static final EXTRA_STATE:Ljava/lang/String; = "state"

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final player:Lcom/audible/mobile/player/Player;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/headset/HeadsetReceiver;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/headset/HeadsetReceiver;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/player/Player;)V
    .locals 4

    .line 38
    const-class v0, Lcom/audible/playersdk/headset/HeadsetPolicy;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    const-string v3, "android.media.AUDIO_BECOMING_NOISY"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/audible/mobile/framework/BaseGlobalBroadcastReceiverRegistrationSupport;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    .line 40
    iput-object p2, p0, Lcom/audible/mobile/headset/HeadsetReceiver;->player:Lcom/audible/mobile/player/Player;

    .line 41
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object p1

    .line 42
    invoke-virtual {p1, v0}, Lcom/audible/mobile/framework/ComponentRegistry;->hasComponent(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 43
    sget-object p2, Lcom/audible/mobile/headset/HeadsetReceiver;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "No HeadsetPolicy set.  Registering default implementation."

    invoke-interface {p2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 44
    new-instance p2, Lcom/audible/mobile/headset/policy/HeadsetPolicyImpl;

    invoke-direct {p2}, Lcom/audible/mobile/headset/policy/HeadsetPolicyImpl;-><init>()V

    invoke-virtual {p1, v0, p2}, Lcom/audible/mobile/framework/ComponentRegistry;->registerComponent(Ljava/lang/Class;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private notifyStateChange(Lcom/audible/playersdk/headset/HeadsetPolicy;Lcom/audible/playersdk/headset/HeadsetPolicy$State;)V
    .locals 0

    .line 93
    invoke-interface {p1, p2}, Lcom/audible/playersdk/headset/HeadsetPolicy;->setNewHeadsetState(Lcom/audible/playersdk/headset/HeadsetPolicy$State;)V

    .line 95
    invoke-interface {p1}, Lcom/audible/playersdk/headset/HeadsetPolicy;->shouldPausePlayback()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/audible/mobile/headset/HeadsetReceiver;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {p2}, Lcom/audible/mobile/player/Player;->isPlayWhenReady()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 96
    sget-object p1, Lcom/audible/mobile/headset/HeadsetReceiver;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Pausing playback due to headset event"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/audible/mobile/headset/HeadsetReceiver;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {p1}, Lcom/audible/mobile/player/Player;->pause()V

    goto :goto_0

    .line 98
    :cond_0
    invoke-interface {p1}, Lcom/audible/playersdk/headset/HeadsetPolicy;->shouldStartPlayback()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 99
    sget-object p1, Lcom/audible/mobile/headset/HeadsetReceiver;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Starting playback due to headset event"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcom/audible/mobile/headset/HeadsetReceiver;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {p1}, Lcom/audible/mobile/player/Player;->start()V

    :cond_1
    :goto_0
    return-void
.end method

.method private transitionStateOnStreamChange()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/audible/mobile/headset/HeadsetReceiver;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->isPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/audible/mobile/headset/HeadsetReceiver;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->pause()V

    .line 115
    iget-object v0, p0, Lcom/audible/mobile/headset/HeadsetReceiver;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {v0}, Lcom/audible/mobile/player/Player;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getInstance(Landroid/content/Context;)Lcom/audible/mobile/framework/ComponentRegistry;

    move-result-object p1

    const-class v1, Lcom/audible/playersdk/headset/HeadsetPolicy;

    invoke-virtual {p1, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/playersdk/headset/HeadsetPolicy;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget-object p1, Lcom/audible/mobile/headset/HeadsetReceiver;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Dropping the initial sticky broadcast of ACTION_HEADSET_PLUG"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->PLUGGED_WITH_MICROPHONE:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    .line 62
    invoke-virtual {v0}, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->getValue()I

    move-result v0

    const-string v1, "state"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->PLUGGED_WITH_MICROPHONE:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    .line 61
    invoke-static {v0, v1}, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->fromValue(ILcom/audible/playersdk/headset/HeadsetPolicy$State;)Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    move-result-object v0

    const-string v1, "name"

    .line 63
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 65
    sget-object v1, Lcom/audible/mobile/headset/HeadsetReceiver;->LOGGER:Lorg/slf4j/Logger;

    sget-object v2, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Headset plug event occurred. New state: {}, headset name: {}"

    invoke-interface {v1, v2, v4, v3, p2}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 66
    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/headset/HeadsetReceiver;->notifyStateChange(Lcom/audible/playersdk/headset/HeadsetPolicy;Lcom/audible/playersdk/headset/HeadsetPolicy$State;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/high16 v0, -0x80000000

    const-string v1, "android.bluetooth.profile.extra.STATE"

    .line 68
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 69
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    .line 70
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x2

    const-string v3, "Headset plug event occurred. New state: {}, device name: {}"

    if-ne v1, v2, :cond_2

    .line 72
    invoke-direct {p0}, Lcom/audible/mobile/headset/HeadsetReceiver;->transitionStateOnStreamChange()V

    .line 73
    sget-object v0, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->PLUGGED_WITHOUT_MICROPHONE:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    .line 74
    sget-object v1, Lcom/audible/mobile/headset/HeadsetReceiver;->LOGGER:Lorg/slf4j/Logger;

    sget-object v2, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, p2}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/headset/HeadsetReceiver;->notifyStateChange(Lcom/audible/playersdk/headset/HeadsetPolicy;Lcom/audible/playersdk/headset/HeadsetPolicy$State;)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 79
    sget-object v0, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->UNPLUGGED:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    .line 80
    sget-object v1, Lcom/audible/mobile/headset/HeadsetReceiver;->LOGGER:Lorg/slf4j/Logger;

    sget-object v2, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4, p2}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 81
    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/headset/HeadsetReceiver;->notifyStateChange(Lcom/audible/playersdk/headset/HeadsetPolicy;Lcom/audible/playersdk/headset/HeadsetPolicy$State;)V

    goto :goto_0

    :cond_3
    const-string p2, "android.media.AUDIO_BECOMING_NOISY"

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 85
    sget-object p2, Lcom/audible/playersdk/headset/HeadsetPolicy$State;->UNPLUGGED:Lcom/audible/playersdk/headset/HeadsetPolicy$State;

    .line 86
    sget-object v0, Lcom/audible/mobile/headset/HeadsetReceiver;->LOGGER:Lorg/slf4j/Logger;

    sget-object v1, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;->PII_MARKER:Lorg/slf4j/Marker;

    const-string v2, "ACTION_AUDIO_BECOMING_NOISY event is detected, update headset state"

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Lorg/slf4j/Marker;Ljava/lang/String;)V

    .line 87
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/headset/HeadsetReceiver;->notifyStateChange(Lcom/audible/playersdk/headset/HeadsetPolicy;Lcom/audible/playersdk/headset/HeadsetPolicy$State;)V

    :cond_4
    :goto_0
    return-void
.end method
