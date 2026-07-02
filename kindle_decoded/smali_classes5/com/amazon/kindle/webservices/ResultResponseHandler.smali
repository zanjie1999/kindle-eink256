.class public Lcom/amazon/kindle/webservices/ResultResponseHandler;
.super Lcom/amazon/kindle/webservices/BaseResponseHandler;
.source "ResultResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/kindle/webservices/BaseResponseHandler;"
    }
.end annotation


# instance fields
.field hasBeenSet:Z

.field result:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/amazon/kindle/webservices/ResultResponseHandler;->result:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public declared-synchronized getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/webservices/ResultResponseHandler;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized setResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    monitor-enter p0

    .line 21
    :try_start_0
    iget-boolean v0, p0, Lcom/amazon/kindle/webservices/ResultResponseHandler;->hasBeenSet:Z

    if-nez v0, :cond_0

    .line 22
    iput-object p1, p0, Lcom/amazon/kindle/webservices/ResultResponseHandler;->result:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 23
    iput-boolean p1, p0, Lcom/amazon/kindle/webservices/ResultResponseHandler;->hasBeenSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit p0

    return-void

    .line 25
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Trying to set a result in ResultResponseHandler when one has already been set!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
