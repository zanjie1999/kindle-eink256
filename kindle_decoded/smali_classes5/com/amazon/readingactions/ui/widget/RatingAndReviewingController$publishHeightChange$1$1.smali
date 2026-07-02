.class public final Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1$1;
.super Landroid/os/AsyncTask;
.source "RatingAndReviewingController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 957
    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 957
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    const-string/jumbo v0, "voids"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 959
    iget-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1;

    iget-object p1, p1, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->access$getMessageQueue$p(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/readingactions/bottomsheet/events/HeightChangedEvent;

    invoke-direct {v0}, Lcom/amazon/readingactions/bottomsheet/events/HeightChangedEvent;-><init>()V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    const/4 p1, 0x0

    return-object p1
.end method
