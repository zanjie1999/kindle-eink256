.class Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$7;
.super Ljava/lang/Object;
.source "MiniPlayerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$7;->this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 487
    invoke-static {}, Lcom/audible/hushpuppy/common/metric/MetricManager;->getInstance()Lcom/audible/hushpuppy/common/metric/MetricManager;

    move-result-object p1

    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;->OpenPlayerFromPersistentPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$BusinessMetricKey;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;->Clicked:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$MetricValue;

    invoke-virtual {p1, v0, v1}, Lcom/audible/hushpuppy/common/metric/MetricManager;->reportCounterMetric(Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;)V

    .line 488
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$7;->this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/player/view/PlayerView;->audiobookSwitcher:Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/extensions/switchto/AbstractAudiobookSwitcher;->switchToAudiobook()Z

    .line 490
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$7;->this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    iget-object p1, p1, Lcom/audible/hushpuppy/view/player/view/PlayerView;->kindleReaderSdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getAppType()Lcom/amazon/kindle/krx/application/AppType;

    move-result-object p1

    .line 491
    sget-object v0, Lcom/amazon/kindle/krx/application/AppType;->KRT:Lcom/amazon/kindle/krx/application/AppType;

    invoke-virtual {v0, p1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 492
    iget-object p1, p0, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView$7;->this$0:Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;

    invoke-static {p1}, Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;->access$300(Lcom/audible/hushpuppy/view/player/view/MiniPlayerView;)Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;

    move-result-object p1

    sget-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->SWITCH_TO_PLAYER:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    invoke-virtual {p1, v0}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;->emitMiniPlayerActionMetric(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;)V

    :cond_0
    return-void
.end method
