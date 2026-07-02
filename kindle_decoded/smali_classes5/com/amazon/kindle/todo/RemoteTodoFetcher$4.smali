.class Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "RemoteTodoFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/todo/RemoteTodoFetcher;->createRequest(Lcom/amazon/kcp/application/IKindleApplicationController;Lcom/amazon/kcp/application/sync/internal/SyncType;Lcom/amazon/foundation/internal/IObjectCallback;Lcom/amazon/kindle/callback/ICallback;Z)Lcom/amazon/kindle/webservices/IWebRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

.field final synthetic val$contentHandler:Lcom/amazon/foundation/internal/RemoteTodoContentHandler;

.field final synthetic val$onCompleteCallback:Lcom/amazon/kindle/callback/ICallback;

.field final synthetic val$pendingWebRequestCallback:Lcom/amazon/foundation/internal/IObjectCallback;

.field final synthetic val$syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/todo/RemoteTodoFetcher;Ljava/lang/String;Lcom/amazon/foundation/internal/IObjectCallback;Lcom/amazon/kindle/callback/ICallback;Lcom/amazon/foundation/internal/RemoteTodoContentHandler;Lcom/amazon/kcp/application/sync/internal/SyncType;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    iput-object p3, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;->val$pendingWebRequestCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    iput-object p4, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;->val$onCompleteCallback:Lcom/amazon/kindle/callback/ICallback;

    iput-object p5, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;->val$contentHandler:Lcom/amazon/foundation/internal/RemoteTodoContentHandler;

    iput-object p6, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;->val$syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-direct {p0, p2}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBeforeExecute()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;->val$pendingWebRequestCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    if-eqz v0, :cond_0

    .line 330
    invoke-interface {v0, p0}, Lcom/amazon/foundation/internal/IObjectCallback;->execute(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected onCancel()V
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;->val$pendingWebRequestCallback:Lcom/amazon/foundation/internal/IObjectCallback;

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0, p0}, Lcom/amazon/foundation/internal/IObjectCallback;->execute(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onRequestComplete()Z
    .locals 9

    .line 343
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 344
    :goto_0
    iget-object v3, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v3}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$900(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v3

    new-instance v4, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent;

    sget-object v5, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;->TODO_HANDLE_START:Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    invoke-direct {v4, v5}, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent;-><init>(Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;)V

    invoke-interface {v3, v4}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 345
    iget-object v3, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;->val$onCompleteCallback:Lcom/amazon/kindle/callback/ICallback;

    if-eqz v3, :cond_2

    .line 346
    new-instance v3, Lcom/amazon/kindle/callback/OperationResult;

    iget-object v4, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;->val$contentHandler:Lcom/amazon/foundation/internal/RemoteTodoContentHandler;

    invoke-virtual {v4}, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->getTodoModel()Lcom/amazon/kcp/application/models/internal/TodoModel;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    const/16 v4, 0x28

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    .line 347
    :goto_1
    invoke-virtual {v3, v4}, Lcom/amazon/kindle/callback/OperationResult;->setStatus(I)Lcom/amazon/kindle/callback/OperationResult;

    .line 348
    iget-object v4, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;->val$onCompleteCallback:Lcom/amazon/kindle/callback/ICallback;

    invoke-interface {v4, v3}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    .line 351
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    invoke-static {}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$1000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->newMetrics(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 352
    iget-object v5, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;->val$syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    invoke-virtual {v5}, Lcom/amazon/kcp/application/sync/internal/SyncType;->getMetricTimer()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    if-eqz v0, :cond_3

    const-string v5, "Error"

    goto :goto_2

    :cond_3
    const-string v5, "Success"

    :goto_2
    aput-object v5, v4, v1

    const-string v5, "%s:%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;)Lcom/amazon/kindle/krx/metrics/MetricsData;

    if-eqz v0, :cond_4

    .line 355
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v2, Lcom/amazon/kindle/krx/metrics/MetricType;->ERROR:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v4, "GetItemsCommand"

    const-string v5, "GetItemsError"

    invoke-virtual {v0, v4, v5, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 356
    invoke-static {}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Error GetRemoteTodoItesWebRequest OnSyncRequestFinished"

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 358
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v0, v4, v5}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$1102(Lcom/amazon/kindle/todo/RemoteTodoFetcher;J)J

    .line 360
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getRemoteTodoService()Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;

    move-result-object v0

    .line 361
    iget-object v4, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;->val$contentHandler:Lcom/amazon/foundation/internal/RemoteTodoContentHandler;

    invoke-virtual {v4}, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->getTodoModel()Lcom/amazon/kcp/application/models/internal/TodoModel;

    move-result-object v4

    const/4 v5, 0x0

    .line 365
    :goto_3
    invoke-virtual {v4}, Lcom/amazon/kcp/application/models/internal/TodoModel;->getResultList()Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->getCount()I

    move-result v6

    if-ge v2, v6, :cond_8

    .line 366
    invoke-virtual {v4}, Lcom/amazon/kcp/application/models/internal/TodoModel;->getResultList()Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->get(I)Lcom/amazon/foundation/internal/WebServiceModel;

    move-result-object v6

    check-cast v6, Lcom/amazon/kcp/application/models/internal/TodoItem;

    if-eqz v6, :cond_7

    .line 368
    new-instance v7, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;

    invoke-direct {v7, v6}, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;-><init>(Lcom/amazon/kcp/application/models/internal/TodoItem;)V

    .line 369
    invoke-interface {v7}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 370
    sget-object v8, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_ANNOTATION:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v8}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    sget-object v8, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPDATE_LAST_PAGE_READ:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    .line 371
    invoke-virtual {v8}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const/4 v5, 0x1

    .line 375
    :cond_6
    invoke-interface {v0, v7}, Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;->processTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    const-string v0, "HasAnnotationUpdates"

    .line 379
    invoke-virtual {v3, v0, v5}, Lcom/amazon/kindle/krx/metrics/MetricsData;->addCountingMetric(Ljava/lang/String;I)Lcom/amazon/kindle/krx/metrics/MetricsData;

    .line 382
    :goto_4
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetrics(Lcom/amazon/kindle/krx/metrics/MetricsData;)V

    .line 384
    iget-object v0, p0, Lcom/amazon/kindle/todo/RemoteTodoFetcher$4;->this$0:Lcom/amazon/kindle/todo/RemoteTodoFetcher;

    invoke-static {v0}, Lcom/amazon/kindle/todo/RemoteTodoFetcher;->access$900(Lcom/amazon/kindle/todo/RemoteTodoFetcher;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    new-instance v2, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent;

    sget-object v3, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;->TODO_HANDLE_FINISHED:Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;

    invoke-direct {v2, v3}, Lcom/amazon/kcp/application/AllTodoItemsHandledEvent;-><init>(Lcom/amazon/kcp/application/AllTodoItemsHandledEvent$TodoEvent;)V

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return v1
.end method
