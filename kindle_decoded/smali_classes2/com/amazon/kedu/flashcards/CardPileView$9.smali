.class Lcom/amazon/kedu/flashcards/CardPileView$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CardPileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/CardPileView;->buildCardToBackAnimationSegment(Lcom/amazon/kedu/flashcards/views/QuizCardView;FFZ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/CardPileView;

.field final synthetic val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)V
    .locals 0

    .line 1032
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$9;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/CardPileView$9;->val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1049
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$9;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView$9;->val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .line 1036
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$9;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getChildCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$9;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView$9;->val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1038
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$9;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView$9;->val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->access$1000(Lcom/amazon/kedu/flashcards/CardPileView;Landroid/view/View;)V

    .line 1039
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$9;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView$9;->val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kedu/flashcards/CardPileView;->access$1100(Lcom/amazon/kedu/flashcards/CardPileView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1040
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$9;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->access$1200(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    .line 1042
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$9;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-virtual {p1}, Landroid/widget/AdapterView;->invalidate()V

    :cond_0
    return-void
.end method
