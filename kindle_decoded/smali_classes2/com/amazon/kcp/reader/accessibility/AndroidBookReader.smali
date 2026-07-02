.class public Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;
.super Ljava/lang/Object;
.source "AndroidBookReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;
    }
.end annotation


# static fields
.field private static final DEFAULT_START_DELAY:I

.field private static final NAV_LISTENER:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;

.field private static NAV_LISTENER_REGISTERED:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mainHandler:Landroid/os/Handler;

.field private pageFinishedCallback:Lcom/amazon/foundation/ICallback;

.field private pageFlippedByBookReader:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private ttsBookBridge:Lcom/amazon/kindle/contentprovider/TtsBookBridge;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->NAV_LISTENER:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;

    const/4 v0, 0x0

    .line 34
    sput-boolean v0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->NAV_LISTENER_REGISTERED:Z

    .line 48
    const-class v0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/contentprovider/TtsBookBridge;)V
    .locals 1

    const/4 v0, 0x1

    .line 52
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;-><init>(Lcom/amazon/kindle/contentprovider/TtsBookBridge;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/contentprovider/TtsBookBridge;Z)V
    .locals 2

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->mainHandler:Landroid/os/Handler;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->pageFlippedByBookReader:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 42
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$1;-><init>(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->pageFinishedCallback:Lcom/amazon/foundation/ICallback;

    .line 56
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->ttsBookBridge:Lcom/amazon/kindle/contentprovider/TtsBookBridge;

    .line 57
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 59
    sget-boolean p2, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->NAV_LISTENER_REGISTERED:Z

    if-nez p2, :cond_0

    .line 61
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->NAV_LISTENER:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->registerReaderNavigationListener(Lcom/amazon/kindle/krx/reader/IReaderNavigationListener;)V

    const/4 p1, 0x1

    .line 62
    sput-boolean p1, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->NAV_LISTENER_REGISTERED:Z

    .line 65
    :cond_0
    sget-object p1, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->NAV_LISTENER:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;

    invoke-virtual {p1, p0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;->setActiveBookReader(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->onPageFinished()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->pageFlippedByBookReader:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;)Lcom/amazon/kindle/contentprovider/TtsBookBridge;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->ttsBookBridge:Lcom/amazon/kindle/contentprovider/TtsBookBridge;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;Lcom/amazon/kindle/contentprovider/TtsBookBridge;)Lcom/amazon/kindle/contentprovider/TtsBookBridge;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->ttsBookBridge:Lcom/amazon/kindle/contentprovider/TtsBookBridge;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->speakCurrentPage(I)V

    return-void
.end method

.method private onPageFinished()V
    .locals 3

    .line 104
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->ttsBookBridge:Lcom/amazon/kindle/contentprovider/TtsBookBridge;

    invoke-interface {v0}, Lcom/amazon/kindle/contentprovider/TtsBookBridge;->isNextPageAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$2;-><init>(Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;)V

    .line 112
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 113
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 117
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TtsPageTurn"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private speakCurrentPage(I)V
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->ttsBookBridge:Lcom/amazon/kindle/contentprovider/TtsBookBridge;

    invoke-interface {v0}, Lcom/amazon/kindle/contentprovider/TtsBookBridge;->getPageStartPosition()I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->ttsBookBridge:Lcom/amazon/kindle/contentprovider/TtsBookBridge;

    invoke-interface {v1}, Lcom/amazon/kindle/contentprovider/TtsBookBridge;->getPageEndPosition()I

    move-result v1

    .line 97
    iget-object v2, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->ttsBookBridge:Lcom/amazon/kindle/contentprovider/TtsBookBridge;

    invoke-interface {v2, v0, v1}, Lcom/amazon/kindle/contentprovider/TtsBookBridge;->getTextBetweenPositions(II)Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->pageFinishedCallback:Lcom/amazon/foundation/ICallback;

    invoke-virtual {v1, v0, p1, v2}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakDelayed(Ljava/lang/String;ILcom/amazon/foundation/ICallback;)V

    return-void
.end method

.method private startProviderReading()V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    .line 170
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getAccessibilityProviders()Ljava/util/Collection;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    .line 174
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;

    .line 175
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;->startReadingBook(Lcom/amazon/kindle/krx/content/IBook;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getTTSNavigationListener()Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
    .locals 1

    .line 73
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->NAV_LISTENER:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader$AndroidBookReaderNavigationEventListener;

    return-object v0
.end method

.method public isSpeaking()Z
    .locals 1

    .line 91
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->isInternalTtsEngineSpeaking()Z

    move-result v0

    return v0
.end method

.method public shouldStartTTS()Z
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_1

    .line 149
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getAccessibilityProviders()Ljava/util/Collection;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    .line 153
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;

    .line 154
    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/accessibility/IAccessibilityProvider;->isReadingBook(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public startSpeaking()V
    .locals 5

    .line 125
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->shouldStartTTS()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->ttsBookBridge:Lcom/amazon/kindle/contentprovider/TtsBookBridge;

    invoke-interface {v0}, Lcom/amazon/kindle/contentprovider/TtsBookBridge;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    .line 127
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    .line 129
    new-instance v1, Ljava/util/Locale;

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 132
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->isLanguageSupported(Ljava/util/Locale;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->setLanguage(Ljava/util/Locale;)V

    .line 135
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->speakCurrentPage(I)V

    goto :goto_0

    .line 138
    :cond_1
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->startProviderReading()V

    :cond_2
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 1

    .line 82
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->stop()V

    return-void
.end method
