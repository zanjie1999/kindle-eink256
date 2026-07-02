.class public final Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;
.super Ljava/lang/Object;
.source "ReaderLeftNavPanelRow.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/panels/IPanelRow;


# static fields
.field private static final ACTION_AUDIBLE_SWITCH_AUDIOBOOK:Ljava/lang/String; = "AudibleSwitchAudiobook"

.field private static final ACTION_AUDIBLE_SWITCH_EBOOK:Ljava/lang/String; = "AudibleSwitchEbook"

.field private static final ACTION_AUDIBLE_UPGRADE:Ljava/lang/String; = "AudibleUpgrade"

.field private static final CONTEXT_LEFT_NAV:Ljava/lang/String; = "LeftNav"

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private final audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

.field private final inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

.field private final kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final upsellLogic:Lcom/audible/hushpuppy/view/common/UpsellLogic;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/common/UpsellLogic;Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 75
    iput-object p2, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->upsellLogic:Lcom/audible/hushpuppy/view/common/UpsellLogic;

    .line 76
    iput-object p3, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    .line 77
    iput-object p4, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    return-void
.end method

.method private provideIconPanelComponentForReaderLeftNav()Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;
    .locals 4

    .line 200
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow$1;->$SwitchMap$com$audible$hushpuppy$view$common$UpsellLogic$State:[I

    iget-object v1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->upsellLogic:Lcom/audible/hushpuppy/view/common/UpsellLogic;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/view/common/UpsellLogic;->getUpsellState()Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 222
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Unexpected upsell state to return any Icon component for Reader left Nav"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow$1;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    iget-object v3, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v3}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    .line 218
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Unexpected reader mode to return any Icon component for Reader left Nav"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "return SwitchToEBook text panel component for Audible Player mode"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 216
    new-instance v0, Lcom/audible/hushpuppy/view/leftnav/EbookIconPanelComponent;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/view/leftnav/EbookIconPanelComponent;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0

    .line 212
    :cond_2
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "return Headphone icon panel component for Reader mode"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 213
    new-instance v0, Lcom/audible/hushpuppy/view/leftnav/HeadphoneIconPanelComponent;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/view/leftnav/HeadphoneIconPanelComponent;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->hasStore()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 203
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "return Headphone icon panel component for Upgrader"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 204
    new-instance v0, Lcom/audible/hushpuppy/view/leftnav/HeadphoneIconPanelComponent;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/view/leftnav/HeadphoneIconPanelComponent;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0

    .line 206
    :cond_4
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "hasStore is false, no left nav"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private provideTextPanelComponentForReaderLeftNav()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
    .locals 4

    .line 160
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow$1;->$SwitchMap$com$audible$hushpuppy$view$common$UpsellLogic$State:[I

    iget-object v1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->upsellLogic:Lcom/audible/hushpuppy/view/common/UpsellLogic;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/view/common/UpsellLogic;->getUpsellState()Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 182
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Unexpected upsell state to return any Text component for Reader left Nav"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 170
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow$1;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    iget-object v3, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v3}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    .line 178
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Unexpected reader mode to return any Text component for Reader left Nav"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 175
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "return SwitchToEBook text panel component for Audible Player mode"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/audible/hushpuppy/view/leftnav/SwitchToEBookTextPanelComponent;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/view/leftnav/SwitchToEBookTextPanelComponent;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0

    .line 172
    :cond_2
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "return SwitchToAudiobook text panel component for Reader mode"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 173
    new-instance v0, Lcom/audible/hushpuppy/view/leftnav/SwitchToAudiobookTextPanelComponent;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/view/leftnav/SwitchToAudiobookTextPanelComponent;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0

    .line 162
    :cond_3
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->hasStore()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "return SwitchToStore text panel component for Upgrader"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 164
    new-instance v0, Lcom/audible/hushpuppy/view/leftnav/SwitchToStoreTextPanelComponent;

    iget-object v1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-direct {v0, v1}, Lcom/audible/hushpuppy/view/leftnav/SwitchToStoreTextPanelComponent;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    return-object v0

    .line 166
    :cond_4
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "hasStore is false, no left nav"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private reportLeftNavClickMetric(Ljava/lang/String;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "LeftNav"

    invoke-interface {v0, v1, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "AudibleUpgrade"

    .line 232
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    sget-object p1, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->UPGRADE_WITH_AUDIO:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    goto :goto_0

    :cond_0
    const-string v0, "AudibleSwitchAudiobook"

    .line 234
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    sget-object p1, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->SWITCH_TO_LISTENING:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    goto :goto_0

    :cond_1
    const-string v0, "AudibleSwitchEbook"

    .line 236
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 237
    sget-object p1, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->SWITCH_TO_READING:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    .line 240
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->inBookChromeMetricsReporter:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;

    sget-object v1, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;->LEFT_NAVIGATION_MENU:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    invoke-virtual {v0, v1, p1}, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;->reportMetric(Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;)V

    :cond_3
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

    .line 89
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->provideIconPanelComponentForReaderLeftNav()Lcom/amazon/kindle/krx/ui/panels/IIconPanelComponent;

    move-result-object v0

    return-object v0
.end method

.method public getPanelStatus()Lcom/amazon/kindle/krx/ui/ComponentStatus;
    .locals 1

    .line 101
    sget-object v0, Lcom/amazon/kindle/krx/ui/ComponentStatus;->ENABLED:Lcom/amazon/kindle/krx/ui/ComponentStatus;

    return-object v0
.end method

.method public getPanelTheme()Lcom/amazon/kindle/krx/ui/panels/PanelTheme;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextComponent()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;
    .locals 1

    .line 83
    invoke-direct {p0}, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->provideTextPanelComponentForReaderLeftNav()Lcom/amazon/kindle/krx/ui/panels/ITextPanelComponent;

    move-result-object v0

    return-object v0
.end method

.method public onClick()V
    .locals 4

    .line 107
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "onClick of Reader left Nav"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->v(Ljava/lang/String;)V

    .line 108
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow$1;->$SwitchMap$com$audible$hushpuppy$view$common$UpsellLogic$State:[I

    iget-object v1, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->upsellLogic:Lcom/audible/hushpuppy/view/common/UpsellLogic;

    invoke-virtual {v1}, Lcom/audible/hushpuppy/view/common/UpsellLogic;->getUpsellState()Lcom/audible/hushpuppy/view/common/UpsellLogic$State;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 137
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Unexpected upsell state "

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 118
    :cond_0
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow$1;->$SwitchMap$com$amazon$kindle$krx$reader$IReaderModeHandler$ReaderMode:[I

    iget-object v3, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v3}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_1

    .line 133
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected reader mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v2}, Lcom/audible/hushpuppy/common/readalong/HushpuppyReaderUtils;->getReaderMode(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->w(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_1
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Switch To EBook"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->switchToEBook()Z

    const-string v0, "AudibleSwitchEbook"

    .line 130
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->reportLeftNavClickMetric(Ljava/lang/String;)V

    return-void

    .line 120
    :cond_2
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Switch To Audiobook"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->switchToAudiobook()Z

    .line 122
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object v0

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->PlayerFromReaderLeftNav:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v2, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {v0, v1, v2}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    const-string v0, "AudibleSwitchAudiobook"

    .line 125
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->reportLeftNavClickMetric(Ljava/lang/String;)V

    return-void

    .line 110
    :cond_3
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidSystemUtils;->showNetworkSettingsIfNeeded(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Z

    move-result v0

    if-eqz v0, :cond_4

    return-void

    .line 113
    :cond_4
    sget-object v0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    const-string v1, "Switch To Store"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    sget-object v1, Lcom/audible/hushpuppy/common/upsell/StoreSource;->UPGRADER:Lcom/audible/hushpuppy/common/upsell/StoreSource;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->switchToUpgrader(Lcom/audible/hushpuppy/common/upsell/StoreSource;)Z

    const-string v0, "AudibleUpgrade"

    .line 115
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/leftnav/ReaderLeftNavPanelRow;->reportLeftNavClickMetric(Ljava/lang/String;)V

    return-void
.end method
