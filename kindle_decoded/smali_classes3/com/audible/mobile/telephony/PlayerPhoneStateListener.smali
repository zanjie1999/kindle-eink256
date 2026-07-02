.class public final Lcom/audible/mobile/telephony/PlayerPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "PlayerPhoneStateListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/telephony/PlayerPhoneStateListener$RestartAudioPlayback;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final REWIND_ON_RESUME_MILLIS:I = 0x1388

.field private static final WAIT_BEFORE_RESUME_PLAYBACK_AFTER_PHONE_CALL_MS:I = 0x3e8


# instance fields
.field private final audioManager:Landroid/media/AudioManager;

.field private final player:Lcom/audible/mobile/player/Player;

.field private resumeAfterCall:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private resumePlayingAfterCallTimer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/player/Player;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->resumeAfterCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    new-instance v0, Ljava/util/Timer;

    const-string v1, "resumePlayingAfterCall"

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->resumePlayingAfterCallTimer:Ljava/util/Timer;

    .line 52
    iput-object p2, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->player:Lcom/audible/mobile/player/Player;

    const-string p2, "audio"

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->audioManager:Landroid/media/AudioManager;

    return-void
.end method

.method static synthetic access$100(Lcom/audible/mobile/telephony/PlayerPhoneStateListener;)Lcom/audible/mobile/player/Player;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->player:Lcom/audible/mobile/player/Player;

    return-object p0
.end method

.method static synthetic access$200()Lorg/slf4j/Logger;
    .locals 1

    .line 25
    sget-object v0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->LOGGER:Lorg/slf4j/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lcom/audible/mobile/telephony/PlayerPhoneStateListener;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->resumeAfterCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    if-eq p1, p2, :cond_1

    .line 94
    sget-object p2, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Unknown phone state = {}"

    invoke-interface {p2, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result p1

    .line 65
    sget-object p2, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "TelephonyManager.CALL_STATE_RINGING: ringVolume is {}"

    invoke-interface {p2, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    if-gtz p1, :cond_1

    goto :goto_0

    .line 74
    :cond_1
    sget-object p1, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "TelephonyManager.CALL_STATE_OFFHOOK"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {p1}, Lcom/audible/mobile/player/Player;->isPlayWhenReady()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 78
    sget-object p1, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "Pausing playback for phone call"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->resumeAfterCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    iget-object p1, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->player:Lcom/audible/mobile/player/Player;

    invoke-interface {p1}, Lcom/audible/mobile/player/Player;->pause()V

    goto :goto_0

    .line 86
    :cond_2
    sget-object p1, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->LOGGER:Lorg/slf4j/Logger;

    const-string p2, "TelephonyManager.CALL_STATE_IDLE"

    invoke-interface {p1, p2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 88
    iget-object p1, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->resumeAfterCall:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 89
    iget-object p1, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->resumePlayingAfterCallTimer:Ljava/util/Timer;

    new-instance p2, Lcom/audible/mobile/telephony/PlayerPhoneStateListener$RestartAudioPlayback;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/audible/mobile/telephony/PlayerPhoneStateListener$RestartAudioPlayback;-><init>(Lcom/audible/mobile/telephony/PlayerPhoneStateListener;Lcom/audible/mobile/telephony/PlayerPhoneStateListener$1;)V

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, p2, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/audible/mobile/telephony/PlayerPhoneStateListener;->resumePlayingAfterCallTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
