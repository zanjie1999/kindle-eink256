.class public Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;
.super Ljava/lang/Object;
.source "UpgradeWithAudioCommandItemProvider.java"

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

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

.field private upgradeWithAudioCommandItem:Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;

.field private final upsellLogic:Lcom/audible/hushpuppy/view/common/UpsellLogic;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/hushpuppy/view/common/UpsellLogic;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 43
    iput-object p5, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 44
    iput-object p2, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 45
    iput-object p3, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    .line 46
    iput-object p4, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->upsellLogic:Lcom/audible/hushpuppy/view/common/UpsellLogic;

    .line 47
    iput-object p6, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    return-void
.end method


# virtual methods
.method public disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    return-void
.end method

.method public enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

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

    .line 54
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    .line 55
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;->isAudiobookStoreEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->upsellLogic:Lcom/audible/hushpuppy/view/common/UpsellLogic;

    .line 56
    invoke-virtual {p1}, Lcom/audible/hushpuppy/view/common/UpsellLogic;->getUpsellState()Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->UPSELL:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->upgradeWithAudioCommandItem:Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;

    if-nez p1, :cond_1

    .line 61
    new-instance p1, Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;

    iget-object v0, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    invoke-direct {p1, v0, v1, v2}, Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;)V

    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->upgradeWithAudioCommandItem:Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->upgradeWithAudioCommandItem:Lcom/audible/hushpuppy/view/actionbar/UpgradeWithAudioCommandItem;

    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/player/provider/UpgradeWithAudioCommandItemProvider;->get(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/krx/ui/AbstractKRXActionWidgetItem;

    move-result-object p1

    return-object p1
.end method
