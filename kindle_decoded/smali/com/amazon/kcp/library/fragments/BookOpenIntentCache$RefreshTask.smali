.class final Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;
.super Ljava/lang/Object;
.source "BookOpenIntentCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RefreshTask"
.end annotation


# instance fields
.field private bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field private isCanceled:Z

.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;->this$0:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 479
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;->isCanceled:Z

    .line 483
    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    .line 491
    iput-boolean v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;->isCanceled:Z

    return-void
.end method

.method public run()V
    .locals 2

    const-wide/16 v0, 0xc8

    .line 501
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 503
    invoke-static {}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;->this$0:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->access$400(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;->isCanceled:Z

    if-nez v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;->this$0:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->access$500(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;Lcom/amazon/kindle/model/content/ILocalBookItem;)V

    goto :goto_1

    .line 509
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;->this$0:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->access$600(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;)Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$RefreshTask;->this$0:Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;

    invoke-static {v0}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;->access$600(Lcom/amazon/kcp/library/fragments/BookOpenIntentCache;)Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/fragments/BookOpenIntentCache$CacheLock;->unlock()V

    :cond_1
    :goto_1
    return-void
.end method
