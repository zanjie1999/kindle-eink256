.class public Lcom/amazon/kindle/krx/messaging/MessagingManager;
.super Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;
.source "MessagingManager.java"

# interfaces
.implements Lcom/amazon/kindle/krx/messaging/IMessagingManager;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private messenger:Lcom/amazon/kindle/krx/messaging/IMessengerService;

.field private todoHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kindle/krx/messaging/MessagingManager;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/krx/messaging/MessagingManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, v0, v0}, Lcom/amazon/kindle/krx/messaging/MessagingManager;-><init>(Landroid/content/Context;Lcom/amazon/kindle/krx/messaging/IMessengerService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/krx/messaging/IMessengerService;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/amazon/kindle/krx/messaging/MessagingManager;->context:Landroid/content/Context;

    .line 29
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/krx/messaging/MessagingManager;->todoHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 32
    iput-object v0, p0, Lcom/amazon/kindle/krx/messaging/MessagingManager;->messenger:Lcom/amazon/kindle/krx/messaging/IMessengerService;

    .line 50
    iput-object p1, p0, Lcom/amazon/kindle/krx/messaging/MessagingManager;->context:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/amazon/kindle/krx/messaging/MessagingManager;->messenger:Lcom/amazon/kindle/krx/messaging/IMessengerService;

    return-void
.end method


# virtual methods
.method public createFromKrlTodo(Lcom/amazon/kcp/application/models/internal/TodoItem;)Lcom/amazon/kindle/krx/messaging/ITodoItem;
    .locals 1

    .line 136
    new-instance v0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;-><init>(Lcom/amazon/kcp/application/models/internal/TodoItem;)V

    return-object v0
.end method

.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 1

    .line 96
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentUpdateService()Lcom/amazon/kindle/contentupdate/IContentUpdateService;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/krx/messaging/MessagingManager;->handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/contentupdate/IContentUpdateService;)Z

    move-result p1

    return p1
.end method

.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/contentupdate/IContentUpdateService;)Z
    .locals 7

    const/4 v0, 0x0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/messaging/MessagingManager;->todoHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 112
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :try_start_1
    invoke-interface {v2, p1}, Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;->supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-interface {p2, v2, p1}, Lcom/amazon/kindle/contentupdate/IContentUpdateService;->handleTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 119
    :try_start_2
    sget-object v4, Lcom/amazon/kindle/krx/messaging/MessagingManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error checking todo item from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 123
    :cond_1
    sget-object p2, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;->onTodoItemHandled(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p2

    sget-object v1, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;->onTodoItemHandled(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    .line 124
    throw p2
.end method

.method public isOdotSupported()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/kindle/krx/messaging/MessagingManager;->messenger:Lcom/amazon/kindle/krx/messaging/IMessengerService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/messaging/IMessengerService;->isOdotSupported()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public register(Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/krx/messaging/MessagingManager;->todoHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Provider must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs send(Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/krx/messaging/SendMessageFailureException;
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/krx/messaging/MessagingManager;->messenger:Lcom/amazon/kindle/krx/messaging/IMessengerService;

    if-eqz v0, :cond_0

    .line 65
    iget-object v1, p0, Lcom/amazon/kindle/krx/messaging/MessagingManager;->context:Landroid/content/Context;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/amazon/kindle/krx/messaging/IMessengerService;->send(Landroid/content/Context;Ljava/lang/String;[B[Lcom/amazon/dcp/messaging/DeliveryOption;)V

    :cond_0
    return-void
.end method

.method public supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/krx/messaging/MessagingManager;->todoHandlers:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 83
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;

    .line 85
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/messaging/ITodoEventHandler;->supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
