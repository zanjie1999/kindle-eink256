.class public Lcom/amazon/foundation/internal/RemoteTodoContentHandler;
.super Lcom/amazon/foundation/internal/DefaultContentHandler;
.source "RemoteTodoContentHandler.java"


# static fields
.field private static ACTION_ATTR:Ljava/lang/String; = "action"

.field private static CONTENT_TYPE_ATTR:Ljava/lang/String; = "content_type"

.field private static EXCLUDED_TRANSPORT_METHODS_ATTR:Ljava/lang/String; = "excluded_transport_methods"

.field private static IS_INCREMENTAL_ATTR:Ljava/lang/String; = "is_incremental"

.field private static ITEMS_TAG:Ljava/lang/String; = "items"

.field private static ITEM_TAG:Ljava/lang/String; = "item"

.field private static KEY_ATTR:Ljava/lang/String; = "key"

.field private static NEXT_PULL_TIME_TAG:Ljava/lang/String; = "next_pull_time"

.field private static PRIORITY_ATTR:Ljava/lang/String; = "priority"

.field private static SEQUENCE_ATTR:Ljava/lang/String; = "sequence"

.field private static TYPE_ATTR:Ljava/lang/String; = "type"

.field private static URL_ATTR:Ljava/lang/String; = "url"


# instance fields
.field private currentTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

.field private inItemNode:Z

.field private model:Lcom/amazon/kcp/application/models/internal/TodoModel;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/amazon/foundation/internal/DefaultContentHandler;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->inItemNode:Z

    .line 36
    new-instance v0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    invoke-direct {v0}, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;-><init>()V

    iput-object v0, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    .line 37
    iput-object p1, v0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->removalBaseUrl:Ljava/lang/String;

    .line 38
    new-instance p1, Lcom/amazon/kcp/application/models/internal/TodoModel;

    invoke-direct {p1}, Lcom/amazon/kcp/application/models/internal/TodoModel;-><init>()V

    iput-object p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->model:Lcom/amazon/kcp/application/models/internal/TodoModel;

    return-void
.end method


# virtual methods
.method public getTodoModel()Lcom/amazon/kcp/application/models/internal/TodoModel;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->model:Lcom/amazon/kcp/application/models/internal/TodoModel;

    return-object v0
.end method

.method public onElementEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->inItemNode:Z

    if-eqz v0, :cond_1

    .line 78
    sget-object v0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->ITEM_TAG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    iput-object p2, p1, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->title:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->toTodoItem()Lcom/amazon/kcp/application/models/internal/TodoItem;

    move-result-object p1

    .line 81
    iget-object p2, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->model:Lcom/amazon/kcp/application/models/internal/TodoModel;

    invoke-virtual {p2}, Lcom/amazon/kcp/application/models/internal/TodoModel;->getResultList()Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->add(Lcom/amazon/foundation/internal/WebServiceModel;)V

    .line 82
    iget-object p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->clear()V

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->inItemNode:Z

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    iget-object v0, v0, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->itemAttributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->NEXT_PULL_TIME_TAG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 88
    iget-object p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->model:Lcom/amazon/kcp/application/models/internal/TodoModel;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/application/models/internal/TodoModel;->setNextPullTime(Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_2
    sget-object p2, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->ITEMS_TAG:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 90
    iget-object p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->model:Lcom/amazon/kcp/application/models/internal/TodoModel;

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/TodoModel;->getResultList()Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/application/models/internal/WebServiceObjectList;->setLoaded()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onElementStart(Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1

    .line 61
    sget-object v0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->ITEM_TAG:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 62
    iput-boolean p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->inItemNode:Z

    .line 63
    iget-object p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    sget-object v0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->PRIORITY_ATTR:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->priority:Ljava/lang/String;

    .line 64
    iget-object p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    sget-object v0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->TYPE_ATTR:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->type:Ljava/lang/String;

    .line 65
    iget-object p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    sget-object v0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->ACTION_ATTR:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->action:Ljava/lang/String;

    .line 66
    iget-object p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    sget-object v0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->EXCLUDED_TRANSPORT_METHODS_ATTR:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->excludedTransportMethods:Ljava/lang/String;

    .line 67
    iget-object p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    sget-object v0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->KEY_ATTR:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->key:Ljava/lang/String;

    .line 68
    iget-object p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    sget-object v0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->IS_INCREMENTAL_ATTR:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->incremental:Ljava/lang/String;

    .line 69
    iget-object p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    sget-object v0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->SEQUENCE_ATTR:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->sequence:Ljava/lang/String;

    .line 70
    iget-object p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    sget-object v0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->URL_ATTR:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->url:Ljava/lang/String;

    .line 71
    iget-object p1, p0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->currentTodoItem:Lcom/amazon/kcp/application/models/internal/TodoItemLoader;

    sget-object v0, Lcom/amazon/foundation/internal/RemoteTodoContentHandler;->CONTENT_TYPE_ATTR:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/amazon/kcp/application/models/internal/TodoItemLoader;->contentType:Ljava/lang/String;

    :cond_0
    return-void
.end method
