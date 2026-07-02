.class Lcom/amazon/kedu/flashcards/CardPileView$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CardPileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/CardPileView;->buildCardMoveAnimationSegment(Lcom/amazon/kedu/flashcards/views/QuizCardView;FFZ)Landroid/animation/Animator;
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

    .line 1081
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$11;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/CardPileView$11;->val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1094
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$11;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView$11;->val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->access$1700(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1085
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$11;->val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->isActive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1087
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$11;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView$11;->val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->access$1600(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    :cond_0
    return-void
.end method
