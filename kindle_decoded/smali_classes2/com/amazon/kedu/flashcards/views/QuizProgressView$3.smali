.class Lcom/amazon/kedu/flashcards/views/QuizProgressView$3;
.super Ljava/lang/Object;
.source "QuizProgressView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/views/QuizProgressView;->buildBarHeightChangeAnimation(Landroid/widget/TextView;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

.field final synthetic val$bar:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/views/QuizProgressView;Landroid/widget/TextView;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$3;->this$0:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$3;->val$bar:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 180
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 181
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$3;->val$bar:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 183
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq p1, v1, :cond_0

    .line 185
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 186
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$3;->val$bar:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method
