.class Lcom/facebook/internal/WorkQueue$WorkNode;
.super Ljava/lang/Object;
.source "WorkQueue.java"

# interfaces
.implements Lcom/facebook/internal/WorkQueue$WorkItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/internal/WorkQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WorkNode"
.end annotation


# instance fields
.field private final callback:Ljava/lang/Runnable;

.field private isRunning:Z

.field private next:Lcom/facebook/internal/WorkQueue$WorkNode;

.field private prev:Lcom/facebook/internal/WorkQueue$WorkNode;

.field final synthetic this$0:Lcom/facebook/internal/WorkQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput-object p2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->callback:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method addToList(Lcom/facebook/internal/WorkQueue$WorkNode;Z)Lcom/facebook/internal/WorkQueue$WorkNode;
    .locals 1

    if-nez p1, :cond_0

    .line 180
    iput-object p0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    iput-object p0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    move-object p1, p0

    goto :goto_0

    .line 182
    :cond_0
    iput-object p1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 183
    iget-object v0, p1, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    iput-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 184
    iput-object p0, v0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    iput-object p0, p1, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    :goto_0
    if-eqz p2, :cond_1

    move-object p1, p0

    :cond_1
    return-object p1
.end method

.method public cancel()Z
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    invoke-static {v0}, Lcom/facebook/internal/WorkQueue;->access$100(Lcom/facebook/internal/WorkQueue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 139
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/internal/WorkQueue$WorkNode;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 140
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    invoke-static {v2}, Lcom/facebook/internal/WorkQueue;->access$200(Lcom/facebook/internal/WorkQueue;)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/internal/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/internal/WorkQueue;->access$202(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    const/4 v1, 0x1

    .line 141
    monitor-exit v0

    return v1

    .line 143
    :cond_0
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCallback()Ljava/lang/Runnable;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->callback:Ljava/lang/Runnable;

    return-object v0
.end method

.method public isRunning()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->isRunning:Z

    return v0
.end method

.method public moveToFront()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    invoke-static {v0}, Lcom/facebook/internal/WorkQueue;->access$100(Lcom/facebook/internal/WorkQueue;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/internal/WorkQueue$WorkNode;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    invoke-static {v2}, Lcom/facebook/internal/WorkQueue;->access$200(Lcom/facebook/internal/WorkQueue;)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/facebook/internal/WorkQueue$WorkNode;->removeFromList(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/internal/WorkQueue;->access$202(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 153
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->this$0:Lcom/facebook/internal/WorkQueue;

    invoke-static {v2}, Lcom/facebook/internal/WorkQueue;->access$200(Lcom/facebook/internal/WorkQueue;)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/facebook/internal/WorkQueue$WorkNode;->addToList(Lcom/facebook/internal/WorkQueue$WorkNode;Z)Lcom/facebook/internal/WorkQueue$WorkNode;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/internal/WorkQueue;->access$202(Lcom/facebook/internal/WorkQueue;Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 155
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method removeFromList(Lcom/facebook/internal/WorkQueue$WorkNode;)Lcom/facebook/internal/WorkQueue$WorkNode;
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_0

    .line 195
    iget-object p1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    if-ne p1, p0, :cond_0

    move-object p1, v0

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    iput-object v2, v1, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 203
    iget-object v2, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    iput-object v1, v2, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    .line 204
    iput-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->prev:Lcom/facebook/internal/WorkQueue$WorkNode;

    iput-object v0, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->next:Lcom/facebook/internal/WorkQueue$WorkNode;

    return-object p1
.end method

.method setIsRunning(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcom/facebook/internal/WorkQueue$WorkNode;->isRunning:Z

    return-void
.end method
