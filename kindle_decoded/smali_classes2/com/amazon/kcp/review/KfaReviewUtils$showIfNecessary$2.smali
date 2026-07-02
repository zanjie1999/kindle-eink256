.class final Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2;
.super Ljava/lang/Object;
.source "KfaReviewUtils.kt"

# interfaces
.implements Lcom/google/android/play/core/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/review/KfaReviewUtils;->showIfNecessary$StandAlone_kfaRelease(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/google/android/play/core/review/ReviewManager;Ljava/util/Date;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/play/core/tasks/OnCompleteListener<",
        "Lcom/google/android/play/core/review/ReviewInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $activity:Lcom/amazon/kcp/redding/ReddingActivity;

.field final synthetic $reviewManager:Lcom/google/android/play/core/review/ReviewManager;


# direct methods
.method constructor <init>(Lcom/google/android/play/core/review/ReviewManager;Lcom/amazon/kcp/redding/ReddingActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2;->$reviewManager:Lcom/google/android/play/core/review/ReviewManager;

    iput-object p2, p0, Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2;->$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/google/android/play/core/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/play/core/tasks/Task<",
            "Lcom/google/android/play/core/review/ReviewInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reviewInfoTask"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2;->$reviewManager:Lcom/google/android/play/core/review/ReviewManager;

    iget-object v1, p0, Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2;->$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {p1}, Lcom/google/android/play/core/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/play/core/review/ReviewInfo;

    invoke-interface {v0, v1, p1}, Lcom/google/android/play/core/review/ReviewManager;->launchReviewFlow(Landroid/app/Activity;Lcom/google/android/play/core/review/ReviewInfo;)Lcom/google/android/play/core/tasks/Task;

    move-result-object p1

    const-string v0, "reviewManager.launchRevi\u2026y, reviewInfoTask.result)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    sget-object v0, Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2$1;->INSTANCE:Lcom/amazon/kcp/review/KfaReviewUtils$showIfNecessary$2$1;

    invoke-virtual {p1, v0}, Lcom/google/android/play/core/tasks/Task;->addOnCompleteListener(Lcom/google/android/play/core/tasks/OnCompleteListener;)Lcom/google/android/play/core/tasks/Task;

    :cond_0
    return-void
.end method
