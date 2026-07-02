.class public Lcom/amazon/kindle/todo/RemoteCommandTodoItemHandler;
.super Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;
.source "RemoteCommandTodoItemHandler.java"


# static fields
.field private static final SYSLOG_UPLOAD:Ljava/lang/String; = "SYSLOG:UPLOAD"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appController:Lcom/amazon/kcp/application/IKindleApplicationController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kindle/todo/RemoteCommandTodoItemHandler;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/todo/RemoteCommandTodoItemHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/amazon/kindle/todo/RemoteCommandTodoItemHandler;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    return-void
.end method

.method private uploadLog(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 3

    .line 62
    invoke-static {}, Lcom/amazon/kindle/webservices/KindleWebServiceURLs;->getSendLogsWithAuthenticationURL()Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getBaseURL()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?key="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Lcom/amazon/kindle/todo/RemoteCommandTodoItemHandler$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/amazon/kindle/todo/RemoteCommandTodoItemHandler$1;-><init>(Lcom/amazon/kindle/todo/RemoteCommandTodoItemHandler;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V

    const/4 p1, 0x0

    .line 80
    invoke-static {v1, p1}, Lcom/amazon/kcp/log/LogUtils;->uploadLogs(Lcom/amazon/kindle/webservices/IWebRequest;Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 3

    .line 41
    sget-object v0, Lcom/amazon/kindle/todo/RemoteCommandTodoItemHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling todoItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SYSLOG:UPLOAD"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    const-string v1, "CS"

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "IN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "VP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kindle/todo/RemoteCommandTodoItemHandler;->uploadLog(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 54
    sget-object v0, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;->COMPLETED:Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;->onTodoItemHandled(Lcom/amazon/kindle/krx/messaging/ITodoItem;Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$CompletionStatus;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 2

    .line 35
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->SEND:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->REMOTE_COMMAND:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
