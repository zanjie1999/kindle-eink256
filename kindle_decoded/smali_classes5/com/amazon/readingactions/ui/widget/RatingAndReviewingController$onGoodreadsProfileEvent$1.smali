.class final Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$onGoodreadsProfileEvent$1;
.super Ljava/lang/Object;
.source "RatingAndReviewingController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->onGoodreadsProfileEvent(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $event:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;

.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$onGoodreadsProfileEvent$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    iput-object p2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$onGoodreadsProfileEvent$1;->$event:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 943
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$onGoodreadsProfileEvent$1;->$event:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$onGoodreadsProfileEvent$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$onGoodreadsProfileEvent$1;->$event:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;

    invoke-virtual {v1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRating()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$handleRatingSubmissionSuccess(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;IZZ)V

    goto :goto_0

    .line 946
    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$onGoodreadsProfileEvent$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getEndActionsActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/RateAndReviewUtil;->showRatingErrorDialog(Landroid/app/Activity;)V

    .line 947
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$onGoodreadsProfileEvent$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$getBookInfo$p(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)Lcom/amazon/ea/reviews/data/BookInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/reviews/data/BookInfo;->asin:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->setUpdateFailureThatOccurredForBook(Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    .line 948
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$onGoodreadsProfileEvent$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getRatingStarsUnrated()Landroid/widget/RatingBar;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$onGoodreadsProfileEvent$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$getLastSubmittedRating$p(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 949
    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$onGoodreadsProfileEvent$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getRatingStarsRated()Landroid/widget/RatingBar;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$onGoodreadsProfileEvent$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$getLastSubmittedRating$p(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setRating(F)V

    :goto_0
    return-void
.end method
