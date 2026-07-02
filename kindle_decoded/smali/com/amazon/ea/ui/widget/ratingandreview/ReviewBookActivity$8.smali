.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$8;
.super Ljava/lang/Object;
.source "ReviewBookActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->onGoodreadsProfileEvent(Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

.field final synthetic val$event:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$8;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    iput-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$8;->val$event:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 595
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$8;->val$event:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;

    invoke-virtual {v0}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->getRating()I

    move-result v0

    .line 596
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$8;->val$event:Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;

    invoke-virtual {v1}, Lcom/amazon/ea/goodreadsshelf/service/GoodreadsProfileEvent;->isSuccess()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 597
    iget-object v1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$8;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v1, v0, v2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$1200(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;IZ)V

    goto :goto_0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$8;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/RateAndReviewUtil;->showRatingErrorDialog(Landroid/app/Activity;)V

    .line 600
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$8;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$1300(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Lcom/amazon/ea/reviews/data/BookInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/amazon/ea/reviews/data/BookInfo;->asin:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/ea/goodreadsshelf/AutoShelfUtil;->setUpdateFailureThatOccurredForBook(Ljava/lang/String;Lcom/amazon/ea/goodreadsshelf/service/GoodreadsShelfManager$FailureReason;)V

    .line 601
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$8;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$1400(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)I

    move-result v1

    invoke-static {v0, v1, v2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$900(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;IZ)V

    .line 604
    :goto_0
    iget-object v0, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$8;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {v0, v2}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$1500(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;Z)V

    return-void
.end method
