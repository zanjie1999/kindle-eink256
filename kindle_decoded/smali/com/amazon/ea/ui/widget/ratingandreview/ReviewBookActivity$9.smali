.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$9;
.super Ljava/lang/Object;
.source "ReviewBookActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bindTextChangedListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V
    .locals 0

    .line 642
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$9;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 656
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$9;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$500(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 657
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$9;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$200(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$9;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {p2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$500(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/ea/reviews/data/Review;->setReviewText(Ljava/lang/String;)V

    .line 659
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$9;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$400(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/EditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 660
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$9;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$200(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$9;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {p2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$400(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/EditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/ea/reviews/data/Review;->setReviewTitle(Ljava/lang/String;)V

    .line 664
    :cond_1
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$9;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$1600(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Lcom/amazon/ea/reviews/validation/ReviewValidator;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$9;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {p3}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$200(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Lcom/amazon/ea/reviews/data/Review;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/amazon/ea/reviews/validation/ReviewValidator;->getValidationResultForReview(Lcom/amazon/ea/reviews/data/Review;)Lcom/amazon/ea/reviews/validation/ReviewValidationResult;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$1700(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;Lcom/amazon/ea/reviews/validation/ReviewValidationResult;)V

    return-void
.end method
