.class Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BookOpenAndCloseAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->createBookOpenAnimationListener(Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;ILjava/util/concurrent/Future;)Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

.field final synthetic val$bookCloseAnimation:I

.field final synthetic val$bookOpenIntentFuture:Ljava/util/concurrent/Future;

.field final synthetic val$libraryDisplayItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

.field final synthetic val$originView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Ljava/util/concurrent/Future;I)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->val$libraryDisplayItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iput-object p3, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->val$originView:Landroid/view/View;

    iput-object p4, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->val$bookOpenIntentFuture:Ljava/util/concurrent/Future;

    iput p5, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->val$bookCloseAnimation:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 303
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->val$libraryDisplayItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 304
    invoke-interface {v0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v2, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "bookOpenAnimationSlideUpComplete"

    invoke-virtual {p1, v2, v0, v1}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 306
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2$1;-><init>(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 322
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {p1, v3}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$502(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Z)Z

    .line 323
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$702(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .line 287
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentOpenMetricsManager()Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->val$libraryDisplayItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    .line 288
    invoke-interface {v0}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    sget-object v3, Lcom/amazon/kindle/metrics/ContentOpenMetricsType;->TAP_TO_OPEN:Lcom/amazon/kindle/metrics/ContentOpenMetricsType;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "bookOpenAnimationStart"

    invoke-virtual {p1, v3, v0, v2}, Lcom/amazon/kindle/metrics/ContentOpenMetricsManager;->addElapsedTimers(Ljava/lang/String;Lcom/amazon/kindle/model/content/IBookID;[Lcom/amazon/kindle/metrics/ContentOpenMetricsType;)V

    .line 291
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->val$originView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 294
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {p1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$300(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {p1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$300(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$300(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 297
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {p1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$400(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$300(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 298
    iget-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$2;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {p1, v1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$502(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Z)Z

    return-void
.end method
