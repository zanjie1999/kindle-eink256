.class final Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$2;
.super Ljava/lang/Object;
.source "RatingAndReviewingController.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->setTextChangedListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$2;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 508
    iget-object p2, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$setTextChangedListeners$2;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-virtual {p2}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->getEndActionsActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    const-string/jumbo v0, "view"

    .line 509
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    const/4 p1, 0x1

    return p1

    .line 508
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
