.class public final Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;
.super Ljava/lang/Object;
.source "ReaderLeftNavProvider.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

.field private final hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

.field private final inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final paymentFlowsFeatureToggler:Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

.field private final restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

.field private final upsellLogic:Lcom/audible/hushpuppy/view/common/UpsellLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/model/read/IHushpuppyModel;Lcom/audible/hushpuppy/view/common/UpsellLogic;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 83
    iput-object p2, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    .line 84
    iput-object p3, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->upsellLogic:Lcom/audible/hushpuppy/view/common/UpsellLogic;

    .line 85
    iput-object p4, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 86
    iput-object p5, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    .line 87
    iput-object p6, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    .line 88
    iput-object p7, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->paymentFlowsFeatureToggler:Lcom/audible/hushpuppy/payments/PaymentFlowsFeatureToggler;

    return-void
.end method

.method private isLeftNav(Lcom/amazon/kindle/krx/ui/panels/PanelKey;Ljava/lang/String;)Z
    .locals 5

    const-string v0, "!"

    const-string v1, "getPriority panelKey is missing, "

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    .line 142
    sget-object p1, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-array v3, v3, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-interface {p1, v3}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/panels/PanelKey;->getLocation()Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    move-result-object p1

    sget-object v4, Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;->LEFT:Lcom/amazon/kindle/krx/ui/panels/PanelKey$PanelLocation;

    if-eq p1, v4, :cond_1

    .line 144
    sget-object p1, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_1
    return v3
.end method


# virtual methods
.method public disable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    return-void
.end method

.method public enable(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 94
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->registerPanelProvider(Lcom/amazon/kindle/krx/ui/panels/IPanelContentProvider;)V

    return-void
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/panels/PanelKey;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "no left nav"

    .line 113
    invoke-direct {p0, p1, v1}, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->isLeftNav(Lcom/amazon/kindle/krx/ui/panels/PanelKey;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->hushpuppyModel:Lcom/audible/hushpuppy/model/read/IHushpuppyModel;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel;->isEnabled(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->restrictionHandler:Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;

    invoke-interface {p1}, Lcom/audible/hushpuppy/common/permissions/IHushpuppyRestrictionHandler;->isAudiobookStoreEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 117
    sget-object p1, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "NO ERROR: HP enabled but Parental Controls are enabled, not providing audible upsell link in the left navigation"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    return-object v0

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->upsellLogic:Lcom/audible/hushpuppy/view/common/UpsellLogic;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/view/common/UpsellLogic;->getUpsellState()Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    move-result-object p1

    sget-object v1, Lcom/audible/hushpuppy/view/common/UpsellLogic$State;->NONE:Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    if-ne p1, v1, :cond_1

    .line 122
    sget-object p1, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Suppressing LeftNavPanelRow because payment flows are disabled"

    invoke-interface {p1, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-object v0

    .line 126
    :cond_1
    new-instance p1, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->upsellLogic:Lcom/audible/hushpuppy/view/common/UpsellLogic;

    iget-object v3, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    iget-object v4, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    invoke-direct {p1, v1, v2, v3, v4}, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/common/UpsellLogic;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v0
.end method

.method public getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I
    .locals 0

    .line 105
    sget-object p1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->MAX_PRIORITY:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$ProviderPriority;->intValue()I

    move-result p1

    return p1
.end method

.method public bridge synthetic getPriority(Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Lcom/amazon/kindle/krx/ui/panels/PanelKey;

    invoke-virtual {p0, p1}, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavProvider;->getPriority(Lcom/amazon/kindle/krx/ui/panels/PanelKey;)I

    move-result p1

    return p1
.end method
