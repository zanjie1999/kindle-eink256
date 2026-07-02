.class public Lcom/amazon/kindle/todo/DcpTodoReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DcpTodoReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kindle/todo/DcpTodoReceiver;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/todo/DcpTodoReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/todo/DcpTodoReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/todo/DcpTodoReceiver;->onHandleWork(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kindle/todo/DcpTodoReceiver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private onHandleWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 56
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->blockOnAppInitialization()Z

    .line 57
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string v3, "intent(%s)"

    .line 58
    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    :cond_0
    invoke-static {p2}, Lcom/amazon/dcp/messaging/Message;->constructMessageFromIntent(Landroid/content/Intent;)Lcom/amazon/dcp/messaging/Message;

    move-result-object v0

    if-nez v0, :cond_1

    .line 64
    sget-object p1, Lcom/amazon/kindle/todo/DcpTodoReceiver;->TAG:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p2, v0, v1

    const-string p2, "This intent (%s) could not be converted to a Message"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 68
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p2

    if-eqz p2, :cond_2

    new-array p2, v2, [Ljava/lang/Object;

    .line 69
    invoke-virtual {v0}, Lcom/amazon/dcp/messaging/Message;->getTopic()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    const-string/jumbo v1, "topic(%s)"

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 72
    :cond_2
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/todo/DcpTodoReceiver;->handleMessage(Lcom/amazon/dcp/messaging/Message;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 75
    new-instance p2, Lcom/amazon/dcp/messaging/Response;

    invoke-virtual {v0}, Lcom/amazon/dcp/messaging/Message;->getId()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc8

    const/16 v2, 0xa

    const-string v3, "Failed to handle the message"

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/amazon/dcp/messaging/Response;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 77
    invoke-static {p1, p2}, Lcom/amazon/dcp/messaging/MessagingHelper;->respondTo(Landroid/content/Context;Lcom/amazon/dcp/messaging/Response;)V

    return-void

    .line 81
    :cond_3
    new-instance p2, Lcom/amazon/dcp/messaging/Response;

    invoke-virtual {v0}, Lcom/amazon/dcp/messaging/Message;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Done"

    invoke-direct {p2, v0, v2, v1}, Lcom/amazon/dcp/messaging/Response;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 82
    invoke-static {p1, p2}, Lcom/amazon/dcp/messaging/MessagingHelper;->respondTo(Landroid/content/Context;Lcom/amazon/dcp/messaging/Response;)V

    return-void
.end method

.method private processTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoItem;)V
    .locals 1

    .line 166
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getRemoteTodoService()Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/services/sync/todo/IRemoteTodoService;->processTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z

    return-void
.end method


# virtual methods
.method handleMessage(Lcom/amazon/dcp/messaging/Message;)Z
    .locals 4

    .line 149
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/dcp/messaging/Message;->getId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/dcp/messaging/Message;->getPayload()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->createTodoItemLoaderFromXml(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    new-instance v0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->toTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;-><init>(Lcom/amazon/kcp/application/models/internal/TodoItem;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/todo/DcpTodoReceiver;->processTodoItem(Lcom/amazon/kindle/krx/messaging/ITodoItem;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception v0

    .line 151
    sget-object v1, Lcom/amazon/kindle/todo/DcpTodoReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to process message payload: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received from DcpTodoReceiver: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/amazon/dcp/messaging/Message;->constructMessageFromIntent(Landroid/content/Intent;)Lcom/amazon/dcp/messaging/Message;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/dcp/messaging/Message;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    .line 40
    new-instance v1, Lcom/amazon/kindle/todo/DcpTodoReceiver$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/amazon/kindle/todo/DcpTodoReceiver$1;-><init>(Lcom/amazon/kindle/todo/DcpTodoReceiver;Landroid/content/Context;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
