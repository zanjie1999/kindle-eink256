.class final Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormOptionsListener$handler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RatingAndReviewingController.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setFormOptionsListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroid/widget/CompoundButton;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormOptionsListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 84
    check-cast p1, Landroid/widget/CompoundButton;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormOptionsListener$handler$1;->invoke(Landroid/widget/CompoundButton;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/widget/CompoundButton;Z)V
    .locals 3

    const-string p2, "button"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormOptionsListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewValidator()Lcom/amazon/ea/reviews/validation/ReviewValidator;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormOptionsListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReview()Lcom/amazon/ea/reviews/data/Review;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/ea/reviews/validation/ReviewValidator;->getValidationResultForReview(Lcom/amazon/ea/reviews/data/Review;)Lcom/amazon/ea/reviews/validation/ReviewValidationResult;

    move-result-object p2

    const-string/jumbo v0, "reviewValidator.getValid\u2026onResultForReview(review)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updateValidationTextAndSubmitButton(Lcom/amazon/ea/reviews/validation/ReviewValidationResult;)V

    .line 297
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormOptionsListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormOptionsAmazonCheckbox()Landroid/widget/CheckBox;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 298
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormOptionsListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormOptionsGoodReadsCheckbox()Landroid/widget/CheckBox;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 300
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormOptionsListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormOptionsMustSelect()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormOptionsListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormAuthor()Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 303
    :cond_0
    iget-object v2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormOptionsListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormOptionsMustSelect()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 304
    iget-object v1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormOptionsListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {v1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getReviewFormAuthor()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 306
    invoke-static {p1, p2}, Lcom/amazon/ea/reviews/ReviewsDestinationManager;->setDestinations(ZZ)V

    .line 307
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setFormOptionsListener$handler$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->updatePostReviewAuthorDescription()V

    :goto_0
    return-void
.end method
