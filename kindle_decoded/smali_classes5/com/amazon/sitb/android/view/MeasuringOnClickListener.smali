.class public abstract Lcom/amazon/sitb/android/view/MeasuringOnClickListener;
.super Ljava/lang/Object;
.source "MeasuringOnClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private attemptCounter:Lcom/amazon/sitb/android/Metric;

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private failureCounter:Lcom/amazon/sitb/android/Metric;

.field private metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

.field private name:Ljava/lang/String;

.field private reportingClass:Ljava/lang/Class;

.field private successCounter:Lcom/amazon/sitb/android/Metric;

.field private timer:Lcom/amazon/sitb/android/Metric;

.field private useData:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;)V
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 30
    invoke-direct/range {v0 .. v8}, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Z)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Z)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->name:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->reportingClass:Ljava/lang/Class;

    .line 37
    iput-object p3, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    .line 38
    iput-object p4, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->timer:Lcom/amazon/sitb/android/Metric;

    .line 39
    iput-object p5, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->attemptCounter:Lcom/amazon/sitb/android/Metric;

    .line 40
    iput-object p6, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->successCounter:Lcom/amazon/sitb/android/Metric;

    .line 41
    iput-object p7, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->failureCounter:Lcom/amazon/sitb/android/Metric;

    .line 42
    iput-boolean p8, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->useData:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/sitb/android/view/MeasuringOnClickListener;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->useData:Z

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/sitb/android/view/MeasuringOnClickListener;)Ljava/lang/Object;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->data:Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    .line 53
    new-instance v11, Lcom/amazon/sitb/android/view/MeasuringOnClickListener$1;

    iget-object v2, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->reportingClass:Ljava/lang/Class;

    iget-object v4, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->metricsService:Lcom/amazon/sitb/android/metrics/MetricsService;

    iget-object v5, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->timer:Lcom/amazon/sitb/android/Metric;

    iget-object v6, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->attemptCounter:Lcom/amazon/sitb/android/Metric;

    iget-object v7, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->successCounter:Lcom/amazon/sitb/android/Metric;

    iget-object v8, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->failureCounter:Lcom/amazon/sitb/android/Metric;

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p0

    move-object v10, p1

    invoke-direct/range {v0 .. v10}, Lcom/amazon/sitb/android/view/MeasuringOnClickListener$1;-><init>(Lcom/amazon/sitb/android/view/MeasuringOnClickListener;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Landroid/view/View;)V

    .line 75
    invoke-virtual {v11}, Lcom/amazon/sitb/android/metrics/MeasuredTask;->execute()Ljava/lang/Object;

    return-void
.end method

.method public onClick(Landroid/view/View;Lcom/amazon/sitb/android/metrics/MetricEvent;)V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;Lcom/amazon/sitb/android/metrics/MetricEvent;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/amazon/sitb/android/metrics/MetricEvent;",
            "TT;)V"
        }
    .end annotation

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lcom/amazon/sitb/android/view/MeasuringOnClickListener;->data:Ljava/lang/Object;

    return-void
.end method
