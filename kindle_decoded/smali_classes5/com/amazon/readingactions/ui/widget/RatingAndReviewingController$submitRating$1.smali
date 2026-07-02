.class public final Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$submitRating$1;
.super Ljava/lang/Object;
.source "RatingAndReviewingController.kt"

# interfaces
.implements Lcom/amazon/ea/util/MessageSender$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->submitRating(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 708
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 712
    sget-object v0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->Companion:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$Companion;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$Companion;->access$getTAG$p(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$Companion;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 713
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "RatingSubmitError"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 714
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addError(Ljava/lang/String;)V

    return-void
.end method

.method public success(Lorg/json/JSONObject;)V
    .locals 2

    const-string/jumbo v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 718
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "RatingSubmitError"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 719
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v0, "SubmittedRating"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->setCount(Ljava/lang/String;I)V

    .line 720
    invoke-static {v0}, Lcom/amazon/ea/metrics/M;->addCount(Ljava/lang/String;)V

    return-void
.end method
