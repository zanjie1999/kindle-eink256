.class final Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCancelButton$1;
.super Ljava/lang/Object;
.source "BookOpenActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->setupCancelButton$krxsdk_release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCancelButton$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 359
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Back button tapped for: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCancelButton$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getBookId$krxsdk_release()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCancelButton$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getBackPressed$krxsdk_release()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 362
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCancelButton$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const-string v0, "window"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/amazon/kindle/krl/R$string;->speak_OneTap_SplashScreen_book_closed:I

    invoke-static {p1, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenAccessibilityHelperKt;->announceForAccessibility(Landroid/view/Window;I)V

    .line 363
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCancelButton$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getLifecycle$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getOpenEventTimes()Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;->setOpenCanceledTimestamp(Ljava/lang/Long;)V

    .line 364
    sget-object p1, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;->INSTANCE:Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;

    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCancelButton$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getLifecycle$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 365
    sget-object v1, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;->KILL_SWITCH_CHEVRON:Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

    .line 366
    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCancelButton$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getLifecycle$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getClientId()Ljava/lang/String;

    move-result-object v2

    .line 367
    iget-object v3, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCancelButton$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getLifecycle$krxsdk_release()Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenLifecycleDetails;->getOpenEventTimes()Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;

    move-result-object v3

    .line 364
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;->emitOpenCanceledMetrics(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;Ljava/lang/String;Lcom/amazon/kcp/util/fastmetrics/BookOpenEventTimes;)V

    .line 368
    iget-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$setupCancelButton$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finishAfterTransition()V

    return-void
.end method
