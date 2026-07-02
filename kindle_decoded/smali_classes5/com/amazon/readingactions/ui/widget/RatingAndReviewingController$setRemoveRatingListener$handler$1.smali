.class final Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRemoveRatingListener$handler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RatingAndReviewingController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setRemoveRatingListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRemoveRatingListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRemoveRatingListener$handler$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .locals 5

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v0, 0x1

    const-string v1, "ClearedRating"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 449
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DidAnything"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 451
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRemoveRatingListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getRatingStarsUnrated()Landroid/widget/RatingBar;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 452
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRemoveRatingListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getRatingStarsRated()Landroid/widget/RatingBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 455
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRemoveRatingListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getRatingStarsUnrated()Landroid/widget/RatingBar;

    move-result-object p1

    .line 454
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRemoveRatingListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getEndActionsActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 455
    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_review_accessibility_selected_rating:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 457
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRemoveRatingListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {p1, v3, v3}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$handleRatingChange(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;IZ)V

    .line 459
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRemoveRatingListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getWidgetTitle()Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 460
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRemoveRatingListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getRatingStarsUnrated()Landroid/widget/RatingBar;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 461
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRemoveRatingListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getRatingStarsRated()Landroid/widget/RatingBar;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 462
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRemoveRatingListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$updatePostReviewDescription(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    .line 463
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRemoveRatingListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$clearReviewForm(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V

    return-void
.end method
