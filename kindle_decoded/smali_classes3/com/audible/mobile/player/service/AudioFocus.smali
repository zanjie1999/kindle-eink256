.class public Lcom/audible/mobile/player/service/AudioFocus;
.super Ljava/lang/Object;
.source "AudioFocus.java"


# static fields
.field private static final DEFAULT_AUDIO_FOCUS_OPTION:Lcom/audible/mobile/player/service/AudioFocusOptions;

.field private static final DUCK_MESSAGE:I = 0x2103

.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final WAIT_FOR_DUCK_EVENTS_MILLIS:I = 0x7d0


# instance fields
.field private final audioManagerCompat:Lcom/audible/mobile/player/service/AudioManagerCompat;

.field private final hadAcquiredAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final handler:Landroid/os/Handler;

.field private final hasAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final hasAudioFocusLossDuck:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final hasAudioFocusLossTrasnsient:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final listener:Lcom/audible/mobile/player/service/AudioFocusEventListener;

.field private final onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final preferenceStore:Lcom/audible/mobile/preferences/PreferenceStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/mobile/preferences/AudiblePreferenceKey;",
            ">;"
        }
    .end annotation
.end field

.field private final resumeVolume:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/player/service/AudioFocus;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/audible/mobile/player/service/AudioFocus;->LOGGER:Lorg/slf4j/Logger;

    .line 36
    sget-object v0, Lcom/audible/mobile/player/service/AudioFocusOptions;->PAUSE_WHEN_LOSS_CAN_DUCK:Lcom/audible/mobile/player/service/AudioFocusOptions;

    sput-object v0, Lcom/audible/mobile/player/service/AudioFocus;->DEFAULT_AUDIO_FOCUS_OPTION:Lcom/audible/mobile/player/service/AudioFocusOptions;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/player/service/AudioFocusEventListener;)V
    .locals 1

    .line 100
    new-instance v0, Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;

    invoke-direct {v0, p1}, Lcom/audible/mobile/preferences/AudibleAndroidPreferencesStore;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/audible/mobile/player/service/AudioFocus;-><init>(Landroid/content/Context;Lcom/audible/mobile/player/service/AudioFocusEventListener;Lcom/audible/mobile/preferences/PreferenceStore;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/player/service/AudioFocusEventListener;Lcom/audible/mobile/preferences/PreferenceStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/audible/mobile/player/service/AudioFocusEventListener;",
            "Lcom/audible/mobile/preferences/PreferenceStore<",
            "Lcom/audible/mobile/preferences/AudiblePreferenceKey;",
            ">;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocusLossDuck:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocusLossTrasnsient:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 55
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/mobile/player/service/AudioFocus;->resumeVolume:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/audible/mobile/player/service/AudioFocus;->hadAcquiredAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 77
    new-instance v0, Lcom/audible/mobile/player/service/AudioFocus$1;

    invoke-direct {v0, p0}, Lcom/audible/mobile/player/service/AudioFocus$1;-><init>(Lcom/audible/mobile/player/service/AudioFocus;)V

    iput-object v0, p0, Lcom/audible/mobile/player/service/AudioFocus;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 84
    new-instance v0, Lcom/audible/mobile/player/service/AudioFocus$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/audible/mobile/player/service/AudioFocus$2;-><init>(Lcom/audible/mobile/player/service/AudioFocus;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/audible/mobile/player/service/AudioFocus;->handler:Landroid/os/Handler;

    .line 113
    new-instance v0, Lcom/audible/mobile/player/service/AudioManagerCompat;

    invoke-static {p1}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-direct {v0, p1}, Lcom/audible/mobile/player/service/AudioManagerCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/audible/mobile/player/service/AudioFocus;->audioManagerCompat:Lcom/audible/mobile/player/service/AudioManagerCompat;

    .line 114
    invoke-static {p2}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p2, Lcom/audible/mobile/player/service/AudioFocusEventListener;

    iput-object p2, p0, Lcom/audible/mobile/player/service/AudioFocus;->listener:Lcom/audible/mobile/player/service/AudioFocusEventListener;

    .line 115
    invoke-static {p3}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lcom/audible/mobile/preferences/PreferenceStore;

    iput-object p3, p0, Lcom/audible/mobile/player/service/AudioFocus;->preferenceStore:Lcom/audible/mobile/preferences/PreferenceStore;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/player/service/AudioFocus;)Lcom/audible/mobile/player/service/AudioFocusEventListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/audible/mobile/player/service/AudioFocus;->listener:Lcom/audible/mobile/player/service/AudioFocusEventListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/mobile/player/service/AudioFocus;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocusLossDuck:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private getAudioFocusTypeString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, -0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unhandled focus event - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "AUDIOFOCUS_GAIN"

    return-object p1

    :cond_1
    const-string p1, "AUDIOFOCUS_LOSS"

    return-object p1

    :cond_2
    const-string p1, "AUDIOFOCUS_LOSS_TRANSIENT"

    return-object p1

    :cond_3
    const-string p1, "AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    return-object p1
.end method


# virtual methods
.method public abandonAudioFocus()I
    .locals 3

    .line 125
    sget-object v0, Lcom/audible/mobile/player/service/AudioFocus;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Requesting abandon audio focus from AudioManager"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/audible/mobile/player/service/AudioFocus;->audioManagerCompat:Lcom/audible/mobile/player/service/AudioManagerCompat;

    iget-object v1, p0, Lcom/audible/mobile/player/service/AudioFocus;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/player/service/AudioManagerCompat;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 133
    iget-object v1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hadAcquiredAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 135
    :cond_0
    sget-object v1, Lcom/audible/mobile/player/service/AudioFocus;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "AudioManager denied abandon audio focus request"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return v0
.end method

.method public doNotRestartPlaybackOnAudioFocusGain()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/audible/mobile/player/service/AudioFocus;->hadAcquiredAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    sget-object v0, Lcom/audible/mobile/player/service/AudioFocus;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Our audio focus has been temporarily lost. Informing our listener that we must stop playback..."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/audible/mobile/player/service/AudioFocus;->listener:Lcom/audible/mobile/player/service/AudioFocusEventListener;

    invoke-interface {v0}, Lcom/audible/mobile/player/service/AudioFocusEventListener;->onMustStopPlayback()V

    goto :goto_0

    .line 196
    :cond_0
    sget-object v0, Lcom/audible/mobile/player/service/AudioFocus;->LOGGER:Lorg/slf4j/Logger;

    iget-object v1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iget-object v2, p0, Lcom/audible/mobile/player/service/AudioFocus;->hadAcquiredAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Audio focus {}, value before last loss {}. Ignoring do not restart event"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public hasAudioFocus()Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected onAudioFocusChange(I)V
    .locals 4

    .line 203
    sget-object v0, Lcom/audible/mobile/player/service/AudioFocus;->LOGGER:Lorg/slf4j/Logger;

    invoke-direct {p0, p1}, Lcom/audible/mobile/player/service/AudioFocus;->getAudioFocusTypeString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Received audio focus change event {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, -0x3

    const/16 v1, 0x2103

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v0, :cond_5

    const/4 v0, -0x2

    if-eq p1, v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_0

    goto/16 :goto_0

    .line 242
    :cond_0
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 243
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->resumeVolume:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 248
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocusLossDuck:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 249
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->listener:Lcom/audible/mobile/player/service/AudioFocusEventListener;

    invoke-interface {p1}, Lcom/audible/mobile/player/service/AudioFocusEventListener;->onRestoreVolumeRequired()V

    return-void

    .line 253
    :cond_1
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocusLossDuck:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 254
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 255
    :cond_2
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocusLossTrasnsient:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 256
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->listener:Lcom/audible/mobile/player/service/AudioFocusEventListener;

    invoke-interface {p1}, Lcom/audible/mobile/player/service/AudioFocusEventListener;->onMayResumePlayback()V

    goto :goto_0

    .line 208
    :cond_3
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 209
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocusLossDuck:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 210
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocusLossTrasnsient:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 212
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->listener:Lcom/audible/mobile/player/service/AudioFocusEventListener;

    invoke-interface {p1}, Lcom/audible/mobile/player/service/AudioFocusEventListener;->onMustStopPlayback()V

    .line 213
    invoke-virtual {p0}, Lcom/audible/mobile/player/service/AudioFocus;->abandonAudioFocus()I

    goto :goto_0

    .line 234
    :cond_4
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocusLossDuck:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 235
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 237
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocusLossTrasnsient:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 238
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->listener:Lcom/audible/mobile/player/service/AudioFocusEventListener;

    invoke-interface {p1}, Lcom/audible/mobile/player/service/AudioFocusEventListener;->onMustPausePlayback()V

    goto :goto_0

    .line 217
    :cond_5
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 218
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 219
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocusLossDuck:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 220
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocusLossTrasnsient:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 222
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->preferenceStore:Lcom/audible/mobile/preferences/PreferenceStore;

    sget-object v0, Lcom/audible/mobile/preferences/AudiblePreferenceKey;->AUDIO_FOCUS_DUCKING:Lcom/audible/mobile/preferences/AudiblePreferenceKey;

    sget-object v1, Lcom/audible/mobile/player/service/AudioFocus;->DEFAULT_AUDIO_FOCUS_OPTION:Lcom/audible/mobile/player/service/AudioFocusOptions;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/audible/mobile/preferences/PreferenceStore;->getString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 223
    sget-object v0, Lcom/audible/mobile/player/service/AudioFocus;->DEFAULT_AUDIO_FOCUS_OPTION:Lcom/audible/mobile/player/service/AudioFocusOptions;

    invoke-static {p1, v0}, Lcom/audible/mobile/player/service/AudioFocusOptions;->fromValue(Ljava/lang/String;Lcom/audible/mobile/player/service/AudioFocusOptions;)Lcom/audible/mobile/player/service/AudioFocusOptions;

    move-result-object p1

    sget-object v0, Lcom/audible/mobile/player/service/AudioFocusOptions;->DUCK_WHEN_LOSS_CAN_DUCK:Lcom/audible/mobile/player/service/AudioFocusOptions;

    if-ne p1, v0, :cond_6

    .line 225
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->listener:Lcom/audible/mobile/player/service/AudioFocusEventListener;

    invoke-interface {p1}, Lcom/audible/mobile/player/service/AudioFocusEventListener;->onDuckVolumeRequired()V

    .line 226
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->resumeVolume:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 228
    :cond_6
    iget-object p1, p0, Lcom/audible/mobile/player/service/AudioFocus;->listener:Lcom/audible/mobile/player/service/AudioFocusEventListener;

    invoke-interface {p1}, Lcom/audible/mobile/player/service/AudioFocusEventListener;->onMustPausePlayback()V

    :cond_7
    :goto_0
    return-void
.end method

.method public requestAudioFocus()I
    .locals 3

    .line 150
    sget-object v0, Lcom/audible/mobile/player/service/AudioFocus;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Requesting audio focus from AudioManager"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/audible/mobile/player/service/AudioFocus;->audioManagerCompat:Lcom/audible/mobile/player/service/AudioManagerCompat;

    iget-object v1, p0, Lcom/audible/mobile/player/service/AudioFocus;->onAudioFocusChangeListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Lcom/audible/mobile/player/service/AudioManagerCompat;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 156
    iget-object v2, p0, Lcom/audible/mobile/player/service/AudioFocus;->hasAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 157
    iget-object v2, p0, Lcom/audible/mobile/player/service/AudioFocus;->hadAcquiredAudioFocus:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    .line 159
    :cond_0
    sget-object v1, Lcom/audible/mobile/player/service/AudioFocus;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "AudioManager denied audio focus request"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return v0
.end method
