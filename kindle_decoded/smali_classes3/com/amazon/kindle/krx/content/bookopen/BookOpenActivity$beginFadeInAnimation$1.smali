.class final Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$beginFadeInAnimation$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BookOpenActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$beginFadeInAnimation$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$beginFadeInAnimation$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 4

    .line 222
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$beginFadeInAnimation$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->access$getLibraryService$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$beginFadeInAnimation$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->getBookId$krxsdk_release()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$beginFadeInAnimation$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-static {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->access$getLibraryService$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v2

    const-string v3, "libraryService"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$beginFadeInAnimation$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    const-string v2, "content.state"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->access$downloadingNonOpenable(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;Lcom/amazon/kindle/model/content/ContentState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    invoke-static {}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivityKt;->access$getTAG$p()Ljava/lang/String;

    .line 226
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$beginFadeInAnimation$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->setupCancelButton$krxsdk_release()V

    .line 227
    new-instance v0, Landroid/transition/Fade;

    invoke-direct {v0}, Landroid/transition/Fade;-><init>()V

    const-wide/16 v1, 0x1f4

    .line 228
    invoke-virtual {v0, v1, v2}, Landroid/transition/Fade;->setDuration(J)Landroid/transition/Transition;

    move-result-object v1

    const-string v2, "fadeIn.setDuration(NON_C\u2026R_VIEWS_FADE_IN_DURATION)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$beginFadeInAnimation$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-static {v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->access$getNonCoverGroup$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroupVisibilityWorkaroundKt;->addTarget(Landroid/transition/Transition;Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;)V

    .line 229
    iget-object v1, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$beginFadeInAnimation$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    sget v2, Lcom/amazon/kindle/krxsdk/R$id;->book_open_constraint_layout:I

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v1, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 230
    iget-object v0, p0, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity$beginFadeInAnimation$1;->this$0:Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;->access$getNonCoverGroup$p(Lcom/amazon/kindle/krx/content/bookopen/BookOpenActivity;)Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/content/bookopen/ConstraintLayoutGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
