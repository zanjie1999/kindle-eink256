.class final Lcom/facebook/Request$4;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callbacks:Ljava/util/ArrayList;

.field final synthetic val$requests:Lcom/facebook/RequestBatch;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Lcom/facebook/RequestBatch;)V
    .locals 0

    .line 1655
    iput-object p1, p0, Lcom/facebook/Request$4;->val$callbacks:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/facebook/Request$4;->val$requests:Lcom/facebook/RequestBatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1657
    iget-object v0, p0, Lcom/facebook/Request$4;->val$callbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1658
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lcom/facebook/Request$Callback;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/facebook/Response;

    invoke-interface {v2, v1}, Lcom/facebook/Request$Callback;->onCompleted(Lcom/facebook/Response;)V

    goto :goto_0

    .line 1661
    :cond_0
    iget-object v0, p0, Lcom/facebook/Request$4;->val$requests:Lcom/facebook/RequestBatch;

    invoke-virtual {v0}, Lcom/facebook/RequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v0

    .line 1662
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/RequestBatch$Callback;

    .line 1663
    iget-object v2, p0, Lcom/facebook/Request$4;->val$requests:Lcom/facebook/RequestBatch;

    invoke-interface {v1, v2}, Lcom/facebook/RequestBatch$Callback;->onBatchCompleted(Lcom/facebook/RequestBatch;)V

    goto :goto_1

    :cond_1
    return-void
.end method
