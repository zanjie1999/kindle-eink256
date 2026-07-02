.class final Lcom/amazon/startactions/ui/widget/AudibleWidget$1;
.super Ljava/lang/Object;
.source "AudibleWidget.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/ui/widget/AudibleWidget;->tryCreate(Lcom/amazon/ea/sidecar/def/widgets/AudibleWidgetDef;)Lcom/amazon/startactions/ui/widget/AudibleWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$audibleMetric:Lcom/amazon/startactions/metrics/Metric;


# direct methods
.method constructor <init>(Lcom/amazon/startactions/metrics/Metric;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/startactions/ui/widget/AudibleWidget$1;->val$audibleMetric:Lcom/amazon/startactions/metrics/Metric;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "AudibleWidgetTime"

    .line 80
    :try_start_0
    new-instance v1, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;

    const-string/jumbo v2, "startactionsAudibleWidget"

    const-string v3, "audibleWidget"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    sget-object v2, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCustomWidget(Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;)Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/AudibleWidget$1;->val$audibleMetric:Lcom/amazon/startactions/metrics/Metric;

    invoke-virtual {v2, v0}, Lcom/amazon/startactions/metrics/Metric;->stopTimer(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/amazon/startactions/ui/widget/AudibleWidget$1;->val$audibleMetric:Lcom/amazon/startactions/metrics/Metric;

    invoke-virtual {v2, v0}, Lcom/amazon/startactions/metrics/Metric;->stopTimer(Ljava/lang/String;)V

    .line 84
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 76
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/widget/AudibleWidget$1;->call()Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;

    move-result-object v0

    return-object v0
.end method
