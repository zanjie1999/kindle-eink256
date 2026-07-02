.class public final Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;
.super Ljava/lang/Object;
.source "MatchmakerPanelRow.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IPanelRow;


# static fields
.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final matchMakerIconComponent:Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;

.field private final matchMakerTextComponent:Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;)V
    .locals 2

    .line 48
    new-instance v0, Lcom/audible/hushpuppy/view/leftnav/MatchmakerTextPanelComponent;

    invoke-direct {v0, p1}, Lcom/audible/hushpuppy/view/leftnav/MatchmakerTextPanelComponent;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    new-instance v1, Lcom/audible/hushpuppy/view/leftnav/EmptyIconPanelComponent;

    invoke-direct {v1}, Lcom/audible/hushpuppy/view/leftnav/EmptyIconPanelComponent;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 63
    iput-object p2, p0, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 64
    iput-object p3, p0, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;->matchMakerTextComponent:Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    .line 65
    iput-object p4, p0, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;->matchMakerIconComponent:Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;

    return-void
.end method


# virtual methods
.method public getChildRows()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/ui/panels/IPanelRow;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIconComponent()Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;->matchMakerIconComponent:Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;

    return-object v0
.end method

.method public getPanelStatus()Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 1

    .line 91
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object v0
.end method

.method public getPanelTheme()Lcom/amazon/kindle/krx/ui/panels/PanelTheme;
    .locals 1

    .line 85
    sget-object v0, Lcom/amazon/kindle/krx/ui/panels/PanelTheme;->HEADER1:Lcom/amazon/kindle/krx/ui/panels/PanelTheme;

    return-object v0
.end method

.method public getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;->matchMakerTextComponent:Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    return-object v0
.end method

.method public onClick()V
    .locals 3

    .line 97
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->MatchmakerLeftNav:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 99
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->showNetworkSettingsIfNeeded(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    sget-object v1, Lcom/audible/hushpuppy/common/upsell/StoreSource;->MATCHMAKER:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->switchToMatchmaker(Lcom/audible/hushpuppy/common/upsell/StoreSource;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/MatchmakerPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Could not launch matchmaker store"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
