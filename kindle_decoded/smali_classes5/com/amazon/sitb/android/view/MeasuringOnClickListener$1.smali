.class Lcom/amazon/sitb/android/view/MeasuringOnClickListener$1;
.super Lcom/amazon/sitb/android/metrics/MeasuredTask;
.source "MeasuringOnClickListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/view/MeasuringOnClickListener;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/view/MeasuringOnClickListener;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Landroid/view/View;)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    .line 60
    iput-object v0, v9, Lcom/amazon/sitb/android/view/MeasuringOnClickListener$1;->this$0:Lcom/amazon/sitb/android/view/MeasuringOnClickListener;

    move-object/from16 v0, p10

    iput-object v0, v9, Lcom/amazon/sitb/android/view/MeasuringOnClickListener$1;->val$view:Landroid/view/View;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/amazon/sitb/android/metrics/MeasuredTask;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic doTask(Lcom/amazon/sitb/android/metrics/MetricEvent;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/sitb/android/metrics/NotRunException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/view/MeasuringOnClickListener$1;->doTask(Lcom/amazon/sitb/android/metrics/MetricEvent;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public doTask(Lcom/amazon/sitb/android/metrics/MetricEvent;)Ljava/lang/Void;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener$1;->this$0:Lcom/amazon/sitb/android/view/MeasuringOnClickListener;

    invoke-static {v0}, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->access$000(Lcom/amazon/sitb/android/view/MeasuringOnClickListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener$1;->this$0:Lcom/amazon/sitb/android/view/MeasuringOnClickListener;

    iget-object v1, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener$1;->val$view:Landroid/view/View;

    invoke-static {v0}, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->access$100(Lcom/amazon/sitb/android/view/MeasuringOnClickListener;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->onClick(Landroid/view/View;Lcom/amazon/sitb/android/metrics/MetricEvent;Ljava/lang/Object;)V

    goto :goto_0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener$1;->this$0:Lcom/amazon/sitb/android/view/MeasuringOnClickListener;

    iget-object v1, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener$1;->val$view:Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->onClick(Landroid/view/View;Lcom/amazon/sitb/android/metrics/MetricEvent;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
