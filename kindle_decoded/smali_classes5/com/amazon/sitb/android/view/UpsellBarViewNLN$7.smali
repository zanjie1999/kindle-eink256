.class Lcom/amazon/sitb/android/view/UpsellBarViewNLN$7;
.super Lcom/amazon/sitb/android/view/MeasuringOnClickListener;
.source "UpsellBarViewNLN.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/view/UpsellBarViewNLN;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/sitb/android/metrics/MetricsService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V
    .locals 9

    move-object v8, p0

    move-object v0, p1

    .line 216
    iput-object v0, v8, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$7;->this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Lcom/amazon/sitb/android/metrics/MetricEvent;)V
    .locals 1

    .line 220
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$7;->this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

    iget-object p1, p1, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->presenter:Lcom/amazon/sitb/android/UpsellBarPresenter;

    invoke-virtual {p1, p2}, Lcom/amazon/sitb/android/UpsellBarPresenter;->onDownloadClick(Lcom/amazon/sitb/android/metrics/MetricEvent;)V

    .line 221
    iget-object p1, p0, Lcom/amazon/sitb/android/view/UpsellBarViewNLN$7;->this$0:Lcom/amazon/sitb/android/view/UpsellBarViewNLN;

    sget-object p2, Lcom/amazon/sitb/android/Metric;->DEVICE_SIZE_CLICK_DOWNLOAD:Lcom/amazon/sitb/android/Metric;

    sget-object v0, Lcom/amazon/sitb/android/Metric;->DEVICE_ORIENTATION_CLICK_DOWNLOAD:Lcom/amazon/sitb/android/Metric;

    invoke-static {p1, p2, v0}, Lcom/amazon/sitb/android/view/UpsellBarViewNLN;->access$000(Lcom/amazon/sitb/android/view/UpsellBarViewNLN;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V

    return-void
.end method
