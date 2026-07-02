.class public final Lcom/audible/android/kcp/AiRAudiobookSwitcher;
.super Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;
.source "AiRAudiobookSwitcher.java"


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final mReaderModeHandler:Lcom/amazon/kindle/krx/reader/IReaderModeHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/android/kcp/AiRAudiobookSwitcher;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/android/kcp/AiRAudiobookSwitcher;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;)V

    .line 42
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/android/kcp/AiRAudiobookSwitcher;->mReaderModeHandler:Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    return-void
.end method

.method private getEbookIdFromModel()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->mHushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getLastOpenedEBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->mHushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->getLastOpenedEBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private switchTo(Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)Z
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->mkindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 96
    sget-object p1, Lcom/audible/android/kcp/AiRAudiobookSwitcher;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v0, "Reader current book is null, can\'t switch player!"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/audible/android/kcp/AiRAudiobookSwitcher;->mReaderModeHandler:Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0, p1}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->setReaderMode(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)V

    .line 103
    iget-object p1, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->mkindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshSeekBar()V

    .line 105
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->closePanels()V

    .line 106
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshReaderActionButtons()V

    .line 107
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->refreshReaderPanels()V

    .line 108
    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->performPostReaderModeSwitchActions()V

    const/4 p1, 0x1

    return p1
.end method

.method private switchToAudiobookFromOutsideReader()Z
    .locals 4

    .line 123
    invoke-direct {p0}, Lcom/audible/android/kcp/AiRAudiobookSwitcher;->getEbookIdFromModel()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->mkindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 132
    sget-object v2, Lcom/audible/android/kcp/AiRAudiobookSwitcher;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v3, "Launch player from outside Reader"

    invoke-interface {v2, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 135
    iget-object v2, p0, Lcom/audible/android/kcp/AiRAudiobookSwitcher;->mReaderModeHandler:Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    sget-object v3, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-interface {v2, v0, v3}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->setReaderMode(Ljava/lang/String;Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)V

    .line 138
    iget-object v2, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->mkindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/audible/android/kcp/util/IntentUtil;->getPlayerOpenIntent(Ljava/lang/String;Lcom/amazon/kindle/krx/application/IApplicationManager;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v0, 0x1

    return v0

    .line 126
    :cond_1
    :goto_0
    sget-object v1, Lcom/audible/android/kcp/AiRAudiobookSwitcher;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to launch player, NULL or empty ebook id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public hasStore()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public switchToAudiobook()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->mHushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isEbookOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-direct {p0, v0}, Lcom/audible/android/kcp/AiRAudiobookSwitcher;->switchTo(Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)Z

    move-result v0

    return v0

    .line 56
    :cond_0
    invoke-direct {p0}, Lcom/audible/android/kcp/AiRAudiobookSwitcher;->switchToAudiobookFromOutsideReader()Z

    move-result v0

    return v0
.end method

.method public switchToEBook()Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->mHushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isEbookOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    invoke-direct {p0, v0}, Lcom/audible/android/kcp/AiRAudiobookSwitcher;->switchTo(Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;)Z

    move-result v0

    return v0

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/audible/android/kcp/AiRAudiobookSwitcher;->switchToAudiobookFromOutsideReader()Z

    move-result v0

    return v0
.end method
