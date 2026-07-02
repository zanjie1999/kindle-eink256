.class Lcom/amazon/kindle/todo/RemoteCommandTodoItemHandler$1;
.super Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$RemoteTodoWebRequest;
.source "RemoteCommandTodoItemHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/todo/RemoteCommandTodoItemHandler;->uploadLog(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/todo/RemoteCommandTodoItemHandler;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$RemoteTodoWebRequest;-><init>(Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V

    return-void
.end method


# virtual methods
.method public onRequestComplete()Z
    .locals 6

    .line 69
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 71
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v4, "SendMetricsCommand"

    const-string v5, "SendMetricsCommandError"

    invoke-virtual {v2, v4, v5, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 76
    :cond_1
    invoke-super {p0}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$RemoteTodoWebRequest;->onRequestComplete()Z

    xor-int/2addr v0, v1

    return v0
.end method
