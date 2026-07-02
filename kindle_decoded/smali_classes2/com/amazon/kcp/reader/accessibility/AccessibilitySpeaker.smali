.class public Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;
.super Ljava/lang/Object;
.source "AccessibilitySpeaker.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private bufferedTtsStrings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/foundation/ICallback;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final delayedTtsStrings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private initialized:Z

.field private final listeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/foundation/ICallback;",
            ">;"
        }
    .end annotation
.end field

.field private volatile shouldInitializeListener:Z

.field private final tts:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->initialized:Z

    .line 37
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->delayedTtsStrings:Ljava/util/Set;

    .line 39
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->listeners:Ljava/util/Map;

    .line 45
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->shouldInitializeListener:Z

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->bufferedTtsStrings:Ljava/util/Map;

    .line 49
    new-instance v1, Landroid/speech/tts/TextToSpeech;

    invoke-direct {v1, p1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->tts:Landroid/speech/tts/TextToSpeech;

    .line 50
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->shouldInitializeListener:Z

    if-eqz v1, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->initListener()V

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->context:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->updateSpeechRate()V

    const-string/jumbo v1, "tts_default_rate"

    .line 58
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v2, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$1;-><init>(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;Landroid/os/Handler;)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->updateSpeechRate()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 29
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;)Ljava/util/Map;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->listeners:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;)Ljava/util/Set;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->delayedTtsStrings:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;Ljava/lang/String;Lcom/amazon/foundation/ICallback;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speak(Ljava/lang/String;Lcom/amazon/foundation/ICallback;)V

    return-void
.end method

.method private clearPendingUtterances()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->bufferedTtsStrings:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 254
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->delayedTtsStrings:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method private initListener()V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->tts:Landroid/speech/tts/TextToSpeech;

    new-instance v1, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$2;-><init>(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;)V

    invoke-virtual {v0, v1}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceProgressListener(Landroid/speech/tts/UtteranceProgressListener;)I

    const/4 v0, 0x0

    .line 125
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->shouldInitializeListener:Z

    return-void
.end method

.method private speak(Ljava/lang/String;Lcom/amazon/foundation/ICallback;)V
    .locals 2

    .line 136
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->initialized:Z

    if-nez v0, :cond_1

    .line 140
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->bufferedTtsStrings:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 143
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->listeners:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "utteranceId"

    .line 147
    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->tts:Landroid/speech/tts/TextToSpeech;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1, p2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    :goto_0
    return-void
.end method

.method private updateSpeechRate()V
    .locals 2

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "tts_default_rate"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    goto :goto_1

    .line 75
    :catch_0
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->TAG:Ljava/lang/String;

    const-string v1, "Null pointer exception when getting Android TTS rate, using our default TTS rate"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :catch_1
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->TAG:Ljava/lang/String;

    const-string v1, "Could not find the default Android TTS rate, using our default TTS rate"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 77
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v1, v0}, Landroid/speech/tts/TextToSpeech;->setSpeechRate(F)I

    return-void
.end method


# virtual methods
.method public getTtsEngineName()Ljava/lang/String;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->getDefaultEngine()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isInternalTtsEngineSpeaking()Z
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->isSpeaking()Z

    move-result v0

    return v0
.end method

.method public isLanguageSupported(Ljava/util/Locale;)Z
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    return v0
.end method

.method public onInit(I)V
    .locals 3

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 83
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->initialized:Z

    .line 84
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->bufferedTtsStrings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->bufferedTtsStrings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/foundation/ICallback;

    invoke-direct {p0, v2, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speak(Ljava/lang/String;Lcom/amazon/foundation/ICallback;)V

    goto :goto_0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->bufferedTtsStrings:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->bufferedTtsStrings:Ljava/util/Map;

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->tts:Landroid/speech/tts/TextToSpeech;

    if-eqz v0, :cond_2

    .line 95
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->initListener()V

    goto :goto_1

    .line 97
    :cond_2
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->shouldInitializeListener:Z

    goto :goto_1

    .line 100
    :cond_3
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AccessibilitySpeaker was initialized with a status other than SUCCESS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setLanguage(Ljava/util/Locale;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0, p1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I

    return-void
.end method

.method public speakDelayed(Ljava/lang/String;ILcom/amazon/foundation/ICallback;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->delayedTtsStrings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 166
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$3;

    invoke-direct {v1, p0, p1, p3}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$3;-><init>(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;Ljava/lang/String;Lcom/amazon/foundation/ICallback;)V

    int-to-long p1, p2

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V
    .locals 2

    .line 187
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    if-eqz p1, :cond_3

    .line 196
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    goto :goto_0

    .line 202
    :cond_2
    invoke-virtual {p2, p1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :cond_3
    :goto_0
    if-nez p1, :cond_4

    const-string p1, "null"

    goto :goto_1

    .line 197
    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 198
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t read out "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " via AccessibilityEvent"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public speakViaTalkbackDelayed(Ljava/lang/CharSequence;Landroid/view/View;I)V
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->delayedTtsStrings:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker$4;-><init>(Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;Ljava/lang/CharSequence;Landroid/view/View;)V

    int-to-long p1, p3

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->tts:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {v0}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->listeners:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 240
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->clearPendingUtterances()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
