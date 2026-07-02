.class Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$GoToImageOnClickListener;
.super Ljava/lang/Object;
.source "FullScreenImageDialogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GoToImageOnClickListener"
.end annotation


# instance fields
.field private final activity:Lcom/amazon/xray/ui/activity/XrayActivity;

.field private final location:I

.field private final metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;


# direct methods
.method constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;I)V
    .locals 1

    .line 174
    sget-object v0, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->INSTANCE:Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;

    invoke-virtual {v0}, Lcom/amazon/xray/metrics/DefaultMetricsRecorderFactory;->create()Lcom/amazon/xray/metrics/MetricsRecorder;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$GoToImageOnClickListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;ILcom/amazon/xray/metrics/MetricsRecorder;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/xray/ui/activity/XrayActivity;ILcom/amazon/xray/metrics/MetricsRecorder;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$GoToImageOnClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    .line 179
    iput p2, p0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$GoToImageOnClickListener;->location:I

    .line 180
    iput-object p3, p0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$GoToImageOnClickListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 185
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$GoToImageOnClickListener;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    iget v0, p0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$GoToImageOnClickListener;->location:I

    invoke-static {v0}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/xray/ui/activity/XrayActivity;->navigateToReaderBookPosition(Lcom/amazon/kindle/krx/reader/IPosition;)V

    .line 188
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 189
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "XrayCard_Image"

    const-string v1, "GoToBookLocation"

    .line 190
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$GoToImageOnClickListener;->metricsRecorder:Lcom/amazon/xray/metrics/MetricsRecorder;

    invoke-interface {p1}, Lcom/amazon/xray/metrics/MetricsRecorder;->navigateToImage()V

    return-void
.end method
