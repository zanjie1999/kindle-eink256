.class public Lcom/amazon/kindle/contentupdate/db/UpdateItem;
.super Ljava/lang/Object;
.source "UpdateItem.java"


# instance fields
.field private final id:J

.field private final requestId:Ljava/lang/String;

.field private final startTime:J

.field private final todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

.field private final userId:Ljava/lang/String;


# direct methods
.method constructor <init>(JLjava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/messaging/ITodoItem;J)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-wide p1, p0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->id:J

    .line 19
    iput-object p3, p0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->userId:Ljava/lang/String;

    .line 20
    iput-object p4, p0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->requestId:Ljava/lang/String;

    .line 21
    iput-object p5, p0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    .line 22
    iput-wide p6, p0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->startTime:J

    return-void
.end method


# virtual methods
.method public getId()J
    .locals 2

    .line 26
    iget-wide v0, p0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->id:J

    return-wide v0
.end method

.method public getRequestId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 42
    iget-wide v0, p0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->startTime:J

    return-wide v0
.end method

.method public getTodoItem()Lcom/amazon/kindle/krx/messaging/ITodoItem;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/contentupdate/db/UpdateItem;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "{ id="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", userId="

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", requestId="

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->requestId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", todoItem="

    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->todoItem:Lcom/amazon/kindle/krx/messaging/ITodoItem;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/contentupdate/db/UpdateItem;->startTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
