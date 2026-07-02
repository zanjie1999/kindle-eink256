.class public Lcom/amazon/kindle/todo/WatermarkSnapshotTodoItemHandler;
.super Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;
.source "WatermarkSnapshotTodoItemHandler.java"


# static fields
.field private static final SNAPSHOT_CONTENT_TYPE:Ljava/lang/String; = "KindleWatermarkSnapshot-1.0"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appController:Lcom/amazon/kcp/application/IKindleApplicationController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    const-class v0, Lcom/amazon/kindle/todo/WatermarkSnapshotTodoItemHandler;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/todo/WatermarkSnapshotTodoItemHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/application/IKindleApplicationController;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/amazon/kindle/todo/WatermarkSnapshotTodoItemHandler;->appController:Lcom/amazon/kcp/application/IKindleApplicationController;

    return-void
.end method


# virtual methods
.method public handle(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 9

    .line 43
    sget-object v0, Lcom/amazon/kindle/todo/WatermarkSnapshotTodoItemHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling todoItem: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSnapshotController()Lcom/amazon/kcp/application/ISnapshotController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/library/models/ILibrarySnapshotList;->getWatermarkSnapshotList()Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getURL()Ljava/lang/String;

    move-result-object v1

    .line 49
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/kcp/library/models/WatermarkSnapshot;

    .line 61
    invoke-virtual {v6}, Lcom/amazon/kcp/library/models/WatermarkSnapshot;->getWatermark()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 63
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 64
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v6}, Lcom/amazon/kcp/library/models/WatermarkSnapshot;->getAsin()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 68
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 69
    invoke-virtual {v6}, Lcom/amazon/kcp/library/models/WatermarkSnapshot;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 71
    invoke-virtual {v6}, Lcom/amazon/kcp/library/models/BookType;->getName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 72
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 74
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "="

    .line 75
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    const-string v2, "UTF-8"

    .line 94
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v2, ""

    .line 98
    :goto_1
    new-instance v3, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$RemoteTodoWebRequest;

    invoke-direct {v3, p0, v1, p1}, Lcom/amazon/kindle/services/sync/todo/TodoItemHandler$RemoteTodoWebRequest;-><init>(Lcom/amazon/kindle/services/sync/todo/TodoItemHandler;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;)V

    const/4 p1, 0x1

    .line 100
    invoke-interface {v3, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v1

    .line 101
    invoke-interface {v1, p1}, Lcom/amazon/kindle/webservices/IWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v1

    .line 102
    invoke-interface {v1, v0}, Lcom/amazon/kindle/webservices/IWebRequest;->setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v0

    const-string v1, "Content-Type"

    const-string v4, "KindleWatermarkSnapshot-1.0"

    .line 103
    invoke-interface {v0, v1, v4}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    move-result-object v0

    const-string v1, "Content-Length"

    .line 104
    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/webservices/IWebRequest;->setHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 105
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return p1
.end method

.method public supports(Lcom/amazon/kindle/krx/messaging/ITodoItem;)Z
    .locals 2

    .line 37
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->UPLOAD:Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    invoke-interface {p1}, Lcom/amazon/kindle/krx/messaging/ITodoItem;->getType()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;->WATERMARKS_SNAPSHOT:Lcom/amazon/kcp/application/models/internal/TodoItem$BasicType;

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
