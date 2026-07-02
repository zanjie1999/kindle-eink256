.class final Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1;
.super Ljava/lang/Object;
.source "RatingAndReviewingController.kt"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setRatingListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRatingAndReviewingController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RatingAndReviewingController.kt\ncom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1\n*L\n1#1,966:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 5

    if-eqz p3, :cond_1

    float-to-double p1, p2

    .line 253
    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-float p1, p1

    .line 254
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getRatingStarsUnrated()Landroid/widget/RatingBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 255
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getRatingStarsRated()Landroid/widget/RatingBar;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/RatingBar;->setRating(F)V

    .line 258
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getRatingStarsRated()Landroid/widget/RatingBar;

    move-result-object p2

    .line 257
    iget-object p3, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p3}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getEndActionsActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 258
    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_review_accessibility_selected_rating:I

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p3, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/RatingBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 260
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReview()Lcom/amazon/ea/reviews/data/Review;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/ea/reviews/data/Review;->getRating()I

    move-result p2

    if-eq p2, p1, :cond_0

    .line 261
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {p2, p1, v4}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$handleRatingChange(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;IZ)V

    .line 263
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getWidgetTitle()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 264
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getRatingStarsUnrated()Landroid/widget/RatingBar;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getRatingStarsRated()Landroid/widget/RatingBar;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/RatingBar;->setVisibility(I)V

    .line 266
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {p1, v1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$updateRatingPostedDescription(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;Z)V

    .line 269
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setRatingListener$ratingChangedListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {p1, v4}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$showReviewForm(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;Z)V

    :cond_1
    return-void
.end method
