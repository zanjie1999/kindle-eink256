.class Lcom/amazon/kedu/flashcards/CardPileView$12;
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

    .line 1101
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$12;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/CardPileView$12;->val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1111
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$12;->val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->setActive(Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 1105
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$12;->val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->setActive(Z)V

    return-void
.end method
