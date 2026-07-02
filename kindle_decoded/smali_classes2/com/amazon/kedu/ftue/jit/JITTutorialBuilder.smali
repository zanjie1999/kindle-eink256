.class public Lcom/amazon/kedu/ftue/jit/JITTutorialBuilder;
.super Ljava/lang/Object;
.source "JITTutorialBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/amazon/kedu/ftue/events/JIT;Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kindle/krx/tutorial/JITTutorial;
    .locals 3

    .line 23
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/jit/JITTutorialBuilder;->getMetricManager()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v0

    .line 24
    sget-object v1, Lcom/amazon/kedu/ftue/metrics/Metric;->JIT_BUILD:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->startMetricTimer(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    .line 26
    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/JIT;->getActionBarButtonId()Ljava/lang/String;

    move-result-object v2

    .line 27
    invoke-virtual {p1}, Lcom/amazon/kedu/ftue/events/JIT;->getMessageResourceId()I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/amazon/kedu/ftue/jit/JITTutorialBuilder;->getStringResource(Lcom/amazon/kindle/krx/IKindleReaderSDK;I)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-interface {v1, v2, p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->createActionBarButtonTutorial(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    move-result-object p1

    .line 29
    sget-object p2, Lcom/amazon/kedu/ftue/metrics/Metric;->JIT_BUILD:Lcom/amazon/kedu/ftue/metrics/Metric;

    invoke-virtual {v0, p2}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->stopMetricTimer(Lcom/amazon/kedu/ftue/metrics/Metric;)V

    return-object p1
.end method

.method getMetricManager()Lcom/amazon/kedu/ftue/metrics/MetricManager;
    .locals 1

    .line 51
    invoke-static {}, Lcom/amazon/kedu/ftue/metrics/MetricManager;->getInstance()Lcom/amazon/kedu/ftue/metrics/MetricManager;

    move-result-object v0

    return-object v0
.end method

.method getStringResource(Lcom/amazon/kindle/krx/IKindleReaderSDK;I)Ljava/lang/String;
    .locals 0

    .line 42
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
