.class abstract Lcom/amazon/klo/list/PageListAdapter$Retryable;
.super Ljava/lang/Object;
.source "PageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/list/PageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Retryable"
.end annotation


# instance fields
.field final delay:J

.field remainingAttempts:I

.field final scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# direct methods
.method constructor <init>(Lcom/amazon/klo/list/PageListAdapter;IJLjava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 0

    .line 441
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 442
    iput p2, p0, Lcom/amazon/klo/list/PageListAdapter$Retryable;->remainingAttempts:I

    .line 443
    iput-wide p3, p0, Lcom/amazon/klo/list/PageListAdapter$Retryable;->delay:J

    .line 444
    iput-object p5, p0, Lcom/amazon/klo/list/PageListAdapter$Retryable;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    return-void
.end method

.method private buildRunnable()Ljava/lang/Runnable;
    .locals 1

    .line 484
    new-instance v0, Lcom/amazon/klo/list/PageListAdapter$Retryable$1;

    invoke-direct {v0, p0}, Lcom/amazon/klo/list/PageListAdapter$Retryable$1;-><init>(Lcom/amazon/klo/list/PageListAdapter$Retryable;)V

    return-object v0
.end method


# virtual methods
.method protected abstract attempt()V
.end method

.method public retry()V
    .locals 5

    .line 470
    iget v0, p0, Lcom/amazon/klo/list/PageListAdapter$Retryable;->remainingAttempts:I

    if-lez v0, :cond_0

    .line 472
    invoke-static {}, Lcom/amazon/klo/list/PageListAdapter;->access$400()Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/amazon/klo/list/PageListAdapter$Retryable;->delay:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lcom/amazon/klo/list/PageListAdapter$Retryable;->remainingAttempts:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "Scheduling retrial with a %d ms delay and %d attempts remaining"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 474
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter$Retryable;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {p0}, Lcom/amazon/klo/list/PageListAdapter$Retryable;->buildRunnable()Ljava/lang/Runnable;

    move-result-object v1

    iget-wide v2, p0, Lcom/amazon/klo/list/PageListAdapter$Retryable;->delay:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 478
    :cond_0
    invoke-static {}, Lcom/amazon/klo/list/PageListAdapter;->access$400()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 460
    iget-object v0, p0, Lcom/amazon/klo/list/PageListAdapter$Retryable;->scheduledThreadPoolExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-direct {p0}, Lcom/amazon/klo/list/PageListAdapter$Retryable;->buildRunnable()Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
