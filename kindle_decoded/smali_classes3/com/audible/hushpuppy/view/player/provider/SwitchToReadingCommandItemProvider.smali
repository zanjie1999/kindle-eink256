.class public Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;
.super Ljava/lang/Object;
.source "SwitchToReadingCommandItemProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/providers/IProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/krx/providers/IProvider<",
        "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;"
    }
.end annotation


# instance fields
.field private final audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

.field private final inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private switchToReadingCommandItem:Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 34
    iput-object p2, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 35
    iput-object p3, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;->inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    return-void
.end method


# virtual methods
.method public disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    return-void
.end method

.method public enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 53
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerActionBarWidgetItemProvider(Lcom/amazon/kindle/krx/providers/IProvider;)V

    return-void
.end method

.method public get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ")",
            "Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {p1}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->AUDIBLE_PLAYER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;->switchToReadingCommandItem:Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;

    if-nez p1, :cond_1

    .line 46
    new-instance p1, Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;->inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    invoke-direct {p1, v0, v1, v2}, Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;->switchToReadingCommandItem:Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;->switchToReadingCommandItem:Lcom/audible/hushpuppy/view/actionbar/SwitchToReadingCommandItem;

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/player/provider/SwitchToReadingCommandItemProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    move-result-object p1

    return-object p1
.end method
