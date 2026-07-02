.class public Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;
.super Ljava/lang/Object;
.source "SessionShareMetrics.java"


# instance fields
.field private final numSharesInSession:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;->numSharesInSession:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public endSession()V
    .locals 0

    return-void
.end method

.method public hasSharedInSession()Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;->numSharesInSession:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public incrementShare()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/metrics/SessionShareMetrics;->numSharesInSession:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public startSession()V
    .locals 0

    return-void
.end method
