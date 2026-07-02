.class Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler$1;
.super Ljava/lang/Object;
.source "RetryHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;->startAttempts(JLjava/util/concurrent/TimeUnit;JLjava/lang/String;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TTResult;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;

.field final synthetic val$actionName:Ljava/lang/String;

.field final synthetic val$maxRetry:J

.field final synthetic val$timeout:J

.field final synthetic val$timeoutUnit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;JJLjava/util/concurrent/TimeUnit;Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;

    iput-wide p2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler$1;->val$maxRetry:J

    iput-wide p4, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler$1;->val$timeout:J

    iput-object p6, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler$1;->val$timeoutUnit:Ljava/util/concurrent/TimeUnit;

    iput-object p7, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler$1;->val$actionName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    iget-wide v0, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler$1;->val$maxRetry:J

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-ltz v6, :cond_1

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler$1;->this$0:Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;

    invoke-static {v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;->access$000(Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;)Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/whisperjoin/provisionerSDK/radios/PromiseFactory;->getFuture()Ljava/util/concurrent/Future;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 61
    :try_start_1
    iget-wide v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler$1;->val$timeout:J

    iget-object v5, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler$1;->val$timeoutUnit:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v4, v5}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v3

    move-object v7, v3

    move-object v3, v2

    move-object v2, v7

    goto :goto_1

    :catch_1
    move-exception v2

    :goto_1
    if-eqz v3, :cond_0

    const/4 v4, 0x1

    .line 64
    invoke-interface {v3, v4}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 66
    :cond_0
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;->access$100()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attempt failed for Action:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler$1;->val$actionName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". Retry count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v4, 0x1

    sub-long/2addr v0, v4

    goto :goto_0

    .line 71
    :cond_1
    invoke-static {}, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All attempts failed for Action: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/whisperjoin/provisionerSDK/radios/RetryHandler$1;->val$actionName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " no more retrying."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/utility/WJLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    throw v2
.end method
