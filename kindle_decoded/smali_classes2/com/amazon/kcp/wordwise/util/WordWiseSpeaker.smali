.class public Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "WordWiseSpeaker.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static instance:Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;


# instance fields
.field private isSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ttsEngine:Landroid/speech/tts/TextToSpeech;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->instance:Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    .line 24
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->isSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->ttsEngine:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;)Landroid/speech/tts/TextToSpeech;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->ttsEngine:Landroid/speech/tts/TextToSpeech;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->instance:Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;

    invoke-direct {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;-><init>()V

    sput-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->instance:Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;

    .line 36
    :cond_0
    sget-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->instance:Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;

    return-object v0
.end method


# virtual methods
.method public isSupported()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->isSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 3

    .line 98
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->isSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 99
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->ttsEngine:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_0

    .line 101
    :try_start_0
    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->stop()I

    .line 102
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->ttsEngine:Landroid/speech/tts/TextToSpeech;

    invoke-virtual {p1}, Landroid/speech/tts/TextToSpeech;->shutdown()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 104
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->TAG:Ljava/lang/String;

    const-string v2, "Failed to close/shutdown TTS engine"

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 107
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->ttsEngine:Landroid/speech/tts/TextToSpeech;

    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 87
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->isSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 88
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 89
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p0}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;)V

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->ttsEngine:Landroid/speech/tts/TextToSpeech;

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Landroid/speech/tts/TextToSpeech;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "com.google.android.tts"

    invoke-direct {v0, p1, p0, v1}, Landroid/speech/tts/TextToSpeech;-><init>(Landroid/content/Context;Landroid/speech/tts/TextToSpeech$OnInitListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->ttsEngine:Landroid/speech/tts/TextToSpeech;

    :goto_0
    return-void
.end method

.method public onInit(I)V
    .locals 3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 70
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->ttsEngine:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 72
    :try_start_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Landroid/speech/tts/TextToSpeech;->isLanguageAvailable(Ljava/util/Locale;)I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 74
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->isSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 75
    invoke-virtual {p0}, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->isSupported()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->ttsEngine:Landroid/speech/tts/TextToSpeech;

    if-eqz p1, :cond_2

    .line 76
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->ttsEngine:Landroid/speech/tts/TextToSpeech;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Landroid/speech/tts/TextToSpeech;->setLanguage(Ljava/util/Locale;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 79
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->isSupported:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 80
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set TTS language; disabling speaker"

    invoke-interface {v0, v1, v2, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public speak(Ljava/lang/String;)V
    .locals 2

    .line 48
    invoke-virtual {p0}, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 50
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAsyncTaskExecutor()Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker$1;-><init>(Lcom/amazon/kcp/wordwise/util/WordWiseSpeaker;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IAsyncTaskExecutor;->postOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
