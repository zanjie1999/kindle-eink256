.class Lcom/amazon/kindle/todo/RemoteTodoFetcher$2;
.super Ljava/lang/Object;
.source "RemoteTodoFetcher.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/todo/RemoteTodoFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Lcom/amazon/kcp/application/models/internal/TodoModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$2;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Lcom/amazon/kcp/application/models/internal/TodoModel;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-virtual {p1}, Lcom/amazon/kindle/callback/OperationResult;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1

    .line 127
    iget-object p1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$2;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {p1}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$200(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object p1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$2;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {p1}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$200(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 129
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 131
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    monitor-exit v0

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 135
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/callback/OperationResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/application/models/internal/TodoModel;

    if-eqz p1, :cond_5

    .line 137
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoModel;->getResultList()Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$2;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v0}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$200(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x0

    .line 140
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 141
    invoke-virtual {p1, v1}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->get(I)Lcom/amazon/foundation/internal/WebServiceModel;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/application/models/internal/TodoItem;

    .line 142
    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$2;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v3}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$200(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 144
    iget-object v3, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$2;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v3}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$200(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "LocalTodoManagerTimer"

    const-string v5, "LookForContentDownloaded"

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v5, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 146
    :cond_2
    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->DOWNLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    if-ne v3, v4, :cond_3

    .line 147
    iget-object v3, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$2;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v3}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$400(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$2;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$300(Lcom/amazon/kindle/todo/RemoteTodoFetcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    :cond_4
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_5
    :goto_3
    return-void
.end method
