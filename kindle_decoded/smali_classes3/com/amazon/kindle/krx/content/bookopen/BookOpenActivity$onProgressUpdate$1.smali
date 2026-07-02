.class final Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$onProgressUpdate$1;
.super Ljava/lang/Object;
.source "BookOpenActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->onProgressUpdate$krxsdk_release(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $progress:I

.field final synthetic this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$onProgressUpdate$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    iput p2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$onProgressUpdate$1;->$progress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 574
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$onProgressUpdate$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    sget v1, Lcom/amazon/kindle/krxsdk/R$id;->book_open_progress_bar:I

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const-string v1, "book_open_progress_bar"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    monitor-enter v0

    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$onProgressUpdate$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    sget v2, Lcom/amazon/kindle/krxsdk/R$id;->book_open_progress_bar:I

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const-string v2, "book_open_progress_bar"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v1

    .line 576
    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$onProgressUpdate$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    sget v3, Lcom/amazon/kindle/krxsdk/R$id;->book_open_progress_bar:I

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    const-string v3, "book_open_progress_bar"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    iget v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$onProgressUpdate$1;->$progress:I

    mul-int v2, v2, v3

    div-int/lit8 v2, v2, 0x64

    if-le v2, v1, :cond_0

    .line 578
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$onProgressUpdate$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    sget v3, Lcom/amazon/kindle/krxsdk/R$id;->book_open_progress_bar:I

    invoke-virtual {v1, v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    const-string v3, "progress"

    const/4 v4, 0x1

    new-array v5, v4, [I

    const/4 v6, 0x0

    aput v2, v5, v6

    invoke-static {v1, v3, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 579
    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$onProgressUpdate$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-static {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->access$getProgressBarInterpolator$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Landroid/view/animation/Interpolator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 580
    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$onProgressUpdate$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-static {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->access$getProgressUpdateAnimationDurationMs$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 581
    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 582
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    .line 585
    :cond_0
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 574
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
