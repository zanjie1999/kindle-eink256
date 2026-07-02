.class public Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;
.super Ljava/lang/Object;
.source "StandaloneTextToSpeech.java"


# instance fields
.field private bookReader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

.field private layoutEventListener:Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

.field private readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech$1;-><init>(Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->layoutEventListener:Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    .line 21
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    new-instance v1, Lcom/amazon/kcp/reader/ReaderTtsBookBridge;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/amazon/kcp/reader/ReaderTtsBookBridge;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;-><init>(Lcom/amazon/kindle/contentprovider/TtsBookBridge;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->bookReader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    .line 22
    iput-object p2, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 23
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->layoutEventListener:Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->registerLayoutEventListener(Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;Z)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->handleOverlayVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->handleActivityPaused()V

    return-void
.end method

.method private handleActivityPaused()V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->isBookReaderSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 71
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->bookReader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->stop()V

    :cond_0
    return-void
.end method

.method private handleOverlayVisibilityChanged(Z)V
    .locals 1

    .line 62
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->isBookReaderSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 64
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->bookReader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->stop()V

    :cond_0
    return-void
.end method

.method public static isAccessibilityEnabled()Z
    .locals 1

    .line 27
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public isBookReaderSpeaking()Z
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->bookReader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->isSpeaking()Z

    move-result v0

    return v0
.end method

.method public startSpeaking()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->bookReader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->startSpeaking()V

    return-void
.end method

.method public stopSpeaking()V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/StandaloneTextToSpeech;->bookReader:Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/AndroidBookReader;->stop()V

    return-void
.end method
