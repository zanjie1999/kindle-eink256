.class public final Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler;
.super Ljava/lang/Object;
.source "KindleBookOpenFailureHandler.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/content/bookopen/BookOpenDownloadFailureHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleFailure(Ljava/lang/String;Lcom/amazon/kindle/krx/content/bookopen/BookOpenState;Lcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;Landroid/view/View;)V
    .locals 2

    const-string v0, "bookId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "details"

    invoke-static {p3, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    const-string v0, "Utils.getFactory()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationController()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p2

    const-string v1, "Utils.getFactory().applicationController"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    .line 20
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p3}, Lcom/amazon/kcp/library/ILibraryController;->errorIntentForFailure(Ljava/lang/String;ZLcom/amazon/kindle/krx/content/bookopen/BookOpenFailureDetails;)Landroid/content/Intent;

    move-result-object p1

    const-string p3, "start_transition_with_animation"

    const/4 v0, 0x0

    .line 21
    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    .line 22
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;

    invoke-direct {v1, p4, p3, p2, p1}, Lcom/amazon/kindle/krx/content/bookopen/KindleBookOpenFailureHandler$handleFailure$1;-><init>(Landroid/view/View;ZLandroid/app/Activity;Landroid/content/Intent;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method
