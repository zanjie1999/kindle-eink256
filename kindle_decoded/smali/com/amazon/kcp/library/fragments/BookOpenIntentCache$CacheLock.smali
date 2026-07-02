.class Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;
.super Ljava/lang/Object;
.source "BookOpenIntentCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheLock"
.end annotation


# instance fields
.field private item:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field private latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;->latch:Ljava/util/concurrent/CountDownLatch;

    .line 75
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;->item:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-void
.end method


# virtual methods
.method public await()V
    .locals 4

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;->latch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x1388

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 90
    invoke-static {}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error when wait lock"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;->item:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-void
.end method
