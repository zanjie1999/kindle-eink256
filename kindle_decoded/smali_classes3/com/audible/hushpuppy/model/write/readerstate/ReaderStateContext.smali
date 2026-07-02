.class public final Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;
.super Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;
.source "ReaderStateContext.java"

# interfaces
.implements Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext<",
        "Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;",
        ">;",
        "Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;"
    }
.end annotation


# instance fields
.field private final fullPlayerState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

.field private final immersionReadingState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

.field private final kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final lockScreenState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

.field private final outsideApplicationState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

.field private final outsideBookState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;-><init>()V

    const-string v0, "kindleReaderSdk can\'t be null."

    .line 35
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 39
    new-instance p1, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;

    invoke-direct {p1, p0}, Lcom/audible/hushpuppy/model/write/readerstate/FullPlayerState;-><init>(Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;->fullPlayerState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    .line 40
    new-instance p1, Lcom/audible/hushpuppy/model/write/readerstate/InsideBookState;

    invoke-direct {p1, p0}, Lcom/audible/hushpuppy/model/write/readerstate/InsideBookState;-><init>(Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;->immersionReadingState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    .line 41
    new-instance p1, Lcom/audible/hushpuppy/model/write/readerstate/LockScreenState;

    invoke-direct {p1, p0}, Lcom/audible/hushpuppy/model/write/readerstate/LockScreenState;-><init>(Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;->lockScreenState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    .line 42
    new-instance p1, Lcom/audible/hushpuppy/model/write/readerstate/OutsideBookState;

    invoke-direct {p1, p0}, Lcom/audible/hushpuppy/model/write/readerstate/OutsideBookState;-><init>(Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;->outsideBookState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    .line 43
    new-instance p1, Lcom/audible/hushpuppy/model/write/readerstate/OutsideApplicationState;

    invoke-direct {p1, p0}, Lcom/audible/hushpuppy/model/write/readerstate/OutsideApplicationState;-><init>(Lcom/audible/hushpuppy/model/write/readerstate/IReaderStateContext;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;->outsideApplicationState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    .line 45
    iget-object p1, p0, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;->outsideBookState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    iput-object p1, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public applicationBackgrounded()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Application is backgrounded"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;->applicationBackgrounded()V

    return-void
.end method

.method public applicationForegrounded()V
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Application is foregrounded"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;->applicationForegrounded()V

    return-void
.end method

.method public deviceUnlocked()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Device is unlocked."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;->deviceUnlocked()V

    return-void
.end method

.method public getBookReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderModeHandler()Lcom/amazon/kindle/krx/reader/IReaderModeHandler;

    move-result-object v1

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/reader/IReaderModeHandler;->getReaderMode(Ljava/lang/String;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v0

    return-object v0
.end method

.method public getFullPlayerState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;->fullPlayerState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    return-object v0
.end method

.method public getInsideBookState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;->immersionReadingState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    return-object v0
.end method

.method public getLockScreenState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;->lockScreenState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    return-object v0
.end method

.method public getOutsideApplicationState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;->outsideApplicationState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    return-object v0
.end method

.method public getOutsideBookState()Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/readerstate/ReaderStateContext;->outsideBookState:Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    return-object v0
.end method

.method public readerActivityBackgrounded()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Reader activity is backgrounded."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;->readerActivityBackgrounded()V

    return-void
.end method

.method public readerActivityForegrounded()V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Reader activity is foregrounded."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;->readerActivityForegrounded()V

    return-void
.end method

.method public screenOff()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Screen is off."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;->screenOff()V

    return-void
.end method

.method public switchToInsideBookMode()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Switch to other reader mode."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;->switchToInsideBookMode()V

    return-void
.end method

.method public switchToPlayerMode()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->logger:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Switch to Audible player mode."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 140
    iget-object v0, p0, Lcom/audible/hushpuppy/model/write/AbstractObservableStateContext;->currentState:Ljava/lang/Object;

    check-cast v0, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;

    invoke-interface {v0}, Lcom/audible/hushpuppy/model/write/readerstate/IReaderState;->switchToPlayerMode()V

    return-void
.end method
