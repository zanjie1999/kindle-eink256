.class public final Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$reviewFormChangeListener$1;
.super Ljava/lang/Object;
.source "RatingAndReviewingController.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setTextChangedListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRatingAndReviewingController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RatingAndReviewingController.kt\ncom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$reviewFormChangeListener$1\n*L\n1#1,966:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 471
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$reviewFormChangeListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    const-string/jumbo v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string/jumbo p2, "s"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const-string/jumbo p2, "s"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$reviewFormChangeListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormBody()Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 483
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$reviewFormChangeListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReview()Lcom/amazon/ea/reviews/data/Review;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/amazon/ea/reviews/data/Review;->setReviewText(Ljava/lang/String;)V

    .line 485
    :cond_0
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$reviewFormChangeListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReview()Lcom/amazon/ea/reviews/data/Review;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$reviewFormChangeListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormTitle()Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/ea/reviews/data/Review;->setReviewTitle(Ljava/lang/String;)V

    .line 488
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$reviewFormChangeListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewValidator()Lcom/amazon/ea/reviews/validation/ReviewValidator;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$reviewFormChangeListener$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p3}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReview()Lcom/amazon/ea/reviews/data/Review;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazon/ea/reviews/validation/ReviewValidator;->getValidationResultForReview(Lcom/amazon/ea/reviews/data/Review;)Lcom/amazon/ea/reviews/validation/ReviewValidationResult;

    move-result-object p2

    const-string/jumbo p3, "reviewValidator.getValid\u2026onResultForReview(review)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updateValidationTextAndSubmitButton(Lcom/amazon/ea/reviews/validation/ReviewValidationResult;)V

    return-void
.end method
