.class public Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;
.super Ljava/lang/Object;
.source "TodoItemAdaptor.java"

# interfaces
.implements Lcom/amazon/kindle/krx/messaging/ITodoItem;


# instance fields
.field private m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/models/internal/TodoItem;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTimestamp()J
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getCreationTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method public getExcludedTransportMethods()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getExcludedTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v0

    return-object v0
.end method

.method public getGuid()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getGuid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItemAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getItemAttributes()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getPriority()I

    move-result v0

    return v0
.end method

.method public getSequence()I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getSequence()I

    move-result v0

    return v0
.end method

.method public getServerFailureCode()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getServerFailureCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTypeString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getURL()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isIncremental()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/models/internal/TodoItem;->isIncremental()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getTypeString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getAction()Lcom/amazon/kcp/application/models/internal/TodoItem$Action;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem$Action;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sequence: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getSequence()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIncremental: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->isIncremental()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "creationTimestamp: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getCreationTimestamp()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excludedTransportMethod: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getExcludedTransportMethod()Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "priority: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getPriority()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guid: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getGuid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serverFailureCode: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getServerFailureCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contentType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/services/sync/todo/TodoItemAdaptor;->m_todoImp:Lcom/amazon/kcp/application/models/internal/TodoItem;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/models/internal/TodoItem;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
