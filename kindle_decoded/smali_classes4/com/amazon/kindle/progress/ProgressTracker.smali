.class public Lcom/amazon/kindle/progress/ProgressTracker;
.super Ljava/lang/Object;
.source "ProgressTracker.java"

# interfaces
.implements Lcom/amazon/kindle/progress/IProgressTracker;


# instance fields
.field private key:Ljava/lang/String;

.field private retryCount:I

.field private taskCreated:J

.field private taskLastUpdated:J

.field private taskPriority:I

.field private taskProgress:I

.field private taskType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IJJII)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/progress/ProgressTracker;->key:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskType:Ljava/lang/String;

    .line 23
    iput p3, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskProgress:I

    .line 24
    iput-wide p4, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskLastUpdated:J

    .line 25
    iput-wide p6, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskCreated:J

    .line 26
    iput p8, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskPriority:I

    .line 27
    iput p9, p0, Lcom/amazon/kindle/progress/ProgressTracker;->retryCount:I

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/progress/ProgressTracker;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskPriority:I

    return v0
.end method

.method public getRetryCount()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/amazon/kindle/progress/ProgressTracker;->retryCount:I

    return v0
.end method

.method public getTaskCreated()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskCreated:J

    return-wide v0
.end method

.method public getTaskLastUpdated()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskLastUpdated:J

    return-wide v0
.end method

.method public getTaskProgress()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskProgress:I

    return v0
.end method

.method public getTaskType()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskType:Ljava/lang/String;

    return-object v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/kindle/progress/ProgressTracker;->key:Ljava/lang/String;

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/amazon/kindle/progress/ProgressTracker;->retryCount:I

    return-void
.end method

.method public setTaskCreated(J)V
    .locals 0

    .line 74
    iput-wide p1, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskCreated:J

    return-void
.end method

.method public setTaskLastUpdated(J)V
    .locals 0

    .line 78
    iput-wide p1, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskLastUpdated:J

    return-void
.end method

.method public setTaskPriority(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskPriority:I

    return-void
.end method

.method public setTaskProgress(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskProgress:I

    return-void
.end method

.method public setTaskType(Ljava/lang/String;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgressTracker { key: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/progress/ProgressTracker;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", taskType: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", taskProgress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskProgress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", taskLastUpdated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskLastUpdated:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskCreated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskCreated:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", taskPriority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/progress/ProgressTracker;->taskPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", retryCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/kindle/progress/ProgressTracker;->retryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
