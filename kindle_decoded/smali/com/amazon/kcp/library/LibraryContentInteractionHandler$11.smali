.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;
.super Ljava/lang/Object;
.source "LibraryContentInteractionHandler.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->animateBookOpen(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/util/List;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private launched:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

.field final synthetic val$bookOpenMetrics:Ljava/util/List;

.field final synthetic val$displayItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/util/List;)V
    .locals 0

    .line 627
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;->val$displayItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;->val$bookOpenMetrics:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;->launched:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 6

    .line 644
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;->future:Ljava/util/concurrent/Future;

    if-eqz p1, :cond_0

    .line 646
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/content/Intent;

    .line 647
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;->launched:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 648
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;->val$displayItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    const-string v3, "Library"

    const-string v4, "LibraryActivity"

    iget-object v5, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;->val$bookOpenMetrics:Ljava/util/List;

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/library/ContentInteractionHandler;->completeOpenItem(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 654
    invoke-static {}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to open book due to execution"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception p1

    .line 652
    invoke-static {}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to complete open book due to interruption"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 633
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11$1;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;->future:Ljava/util/concurrent/Future;

    .line 639
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$11;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->access$200(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
