.class public Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;
.super Ljava/lang/Object;
.source "RemoteTodoService.java"

# interfaces
.implements Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private factory:Lcom/amazon/kindle/services/IReaderServicesObjectFactory;

.field private handlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private isToDoPluginsInitialized:Z

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private supportsTph:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/services/IReaderServicesObjectFactory;Lcom/amazon/kindle/krx/IKindleReaderSDK;Z)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->handlers:Ljava/util/List;

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->isToDoPluginsInitialized:Z

    .line 39
    iput-object p1, p0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->factory:Lcom/amazon/kindle/services/IReaderServicesObjectFactory;

    .line 40
    iput-boolean p3, p0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->supportsTph:Z

    .line 41
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 42
    iput-object p2, p0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method private removeFromRemoteTodo(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V
    .locals 1

    .line 108
    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->FAILED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    if-eq p2, v0, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq p3, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->CDE_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq p3, v0, :cond_1

    .line 111
    invoke-direct {p0, p1}, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->todoItemNeedsRemoval(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z

    move-result p3

    if-eqz p3, :cond_1

    return-void

    .line 116
    :cond_1
    iget-boolean p3, p0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->supportsTph:Z

    invoke-static {p1, p2, p4, p3}, Lcom/amazon/kindle/webservices/RemoveRemoteTodoItemWebRequestBuilder;->createRequest(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Ljava/lang/String;Z)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 118
    iget-object p2, p0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->factory:Lcom/amazon/kindle/services/IReaderServicesObjectFactory;

    invoke-interface {p2}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    :cond_2
    return-void
.end method

.method private todoItemNeedsRemoval(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 2

    .line 129
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->GET:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->NAME_UPDATE:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getTitle()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Deregister"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public onTodoItemHandled(Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$TodoItemHandledEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 90
    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$TodoItemHandledEvent;->getCompletedTodo()Lcom/amazon/kindle/krx/messaging/ITodoItem;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$TodoItemHandledEvent;->getCompletionStatus()Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$TodoItemHandledEvent;->getError()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$TodoItemHandledEvent;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->removeFromRemoteTodo(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    return-void
.end method

.method public processTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 6

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->factory:Lcom/amazon/kindle/services/IReaderServicesObjectFactory;

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getExcludedTransportMethods()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/network/INetworkService;->isTransportExcluded(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 65
    :cond_0
    monitor-enter p0

    .line 66
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->isToDoPluginsInitialized:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 67
    invoke-static {}, Lcom/amazon/kindle/krx/PluginInitializer;->getInstance()Lcom/amazon/kindle/krx/plugin/IPluginInitializer;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    sget-object v4, Lcom/amazon/kindle/krx/plugin/Plugin$Entry;->server_message:Lcom/amazon/kindle/krx/plugin/Plugin$Entry;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-interface {v0, v3, v4, v5}, Lcom/amazon/kindle/krx/plugin/IPluginInitializer;->initializePlugins(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/krx/plugin/Plugin$Entry;I)V

    .line 68
    iput-boolean v2, p0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->isToDoPluginsInitialized:Z

    .line 70
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->handlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;

    .line 72
    invoke-interface {v3, p1}, Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;->supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 73
    invoke-interface {v3, p1}, Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;->handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    .line 80
    :cond_3
    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->UNRECOGNIZED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v2}, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->removeFromRemoteTodo(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception p1

    .line 70
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public registerTodoItemHandler(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerTodoItemHandler(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;",
            ">;)V"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public removeTodoItemHandler(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;)V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/RemoteTodoService;->handlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
