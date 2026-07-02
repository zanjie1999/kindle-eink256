.class Lcom/amazon/sitb/android/ReaderActions$1$1;
.super Lcom/amazon/sitb/android/metrics/MeasuredTask;
.source "ReaderActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/ReaderActions$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/sitb/android/metrics/MeasuredTask<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/sitb/android/ReaderActions$1;

.field final synthetic val$asins:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/ReaderActions$1;Ljava/lang/String;Ljava/lang/Class;Lcom/amazon/sitb/android/metrics/MetricsService;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;Lcom/amazon/sitb/android/Metric;[Ljava/lang/String;)V
    .locals 10

    move-object v9, p0

    move-object v0, p1

    .line 150
    iput-object v0, v9, Lcom/amazon/sitb/android/ReaderActions$1$1;->this$1:Lcom/amazon/sitb/android/ReaderActions$1;

    move-object/from16 v0, p10

    iput-object v0, v9, Lcom/amazon/sitb/android/ReaderActions$1$1;->val$asins:[Ljava/lang/String;

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

    .line 150
    invoke-virtual {p0, p1}, Lcom/amazon/sitb/android/ReaderActions$1$1;->doTask(Lcom/amazon/sitb/android/metrics/MetricEvent;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public doTask(Lcom/amazon/sitb/android/metrics/MetricEvent;)Ljava/lang/Void;
    .locals 7

    .line 155
    iget-object v0, p0, Lcom/amazon/sitb/android/ReaderActions$1$1;->this$1:Lcom/amazon/sitb/android/ReaderActions$1;

    iget-object v0, v0, Lcom/amazon/sitb/android/ReaderActions$1;->this$0:Lcom/amazon/sitb/android/ReaderActions;

    invoke-static {v0}, Lcom/amazon/sitb/android/ReaderActions;->access$000(Lcom/amazon/sitb/android/ReaderActions;)Lcom/amazon/sitb/android/metrics/MetricsService;

    move-result-object v0

    sget-object v1, Lcom/amazon/sitb/android/Metric;->SAMPLE_MIGRATE_ENTRY_POINT:Lcom/amazon/sitb/android/Metric;

    iget-object v2, p0, Lcom/amazon/sitb/android/ReaderActions$1$1;->this$1:Lcom/amazon/sitb/android/ReaderActions$1;

    iget-object v2, v2, Lcom/amazon/sitb/android/ReaderActions$1;->val$entryPoint:Lcom/amazon/sitb/android/EntryPoint;

    invoke-virtual {v2}, Lcom/amazon/sitb/android/EntryPoint;->getMetricValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricString(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/amazon/sitb/android/ReaderActions$1$1;->val$asins:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 158
    invoke-static {}, Lcom/amazon/sitb/android/ReaderActions;->access$100()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAndDeleteSampleSync called for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/amazon/sitb/android/ISamplingLogger;->debug(Ljava/lang/String;)V

    .line 159
    iget-object v4, p0, Lcom/amazon/sitb/android/ReaderActions$1$1;->this$1:Lcom/amazon/sitb/android/ReaderActions$1;

    iget-object v4, v4, Lcom/amazon/sitb/android/ReaderActions$1;->this$0:Lcom/amazon/sitb/android/ReaderActions;

    invoke-static {v4, v3, p1}, Lcom/amazon/sitb/android/ReaderActions;->access$200(Lcom/amazon/sitb/android/ReaderActions;Ljava/lang/String;Lcom/amazon/sitb/android/metrics/MetricEvent;)V

    .line 160
    iget-object v3, p0, Lcom/amazon/sitb/android/ReaderActions$1$1;->this$1:Lcom/amazon/sitb/android/ReaderActions$1;

    iget-object v3, v3, Lcom/amazon/sitb/android/ReaderActions$1;->this$0:Lcom/amazon/sitb/android/ReaderActions;

    invoke-static {v3}, Lcom/amazon/sitb/android/ReaderActions;->access$000(Lcom/amazon/sitb/android/ReaderActions;)Lcom/amazon/sitb/android/metrics/MetricsService;

    move-result-object v3

    sget-object v4, Lcom/amazon/sitb/android/Metric;->SAMPLE_MIGRATE_ASINS:Lcom/amazon/sitb/android/Metric;

    invoke-virtual {v3, p1, v4}, Lcom/amazon/sitb/android/metrics/MetricsService;->addMetricCounter(Lcom/amazon/sitb/android/metrics/MetricEvent;Lcom/amazon/sitb/android/Metric;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
