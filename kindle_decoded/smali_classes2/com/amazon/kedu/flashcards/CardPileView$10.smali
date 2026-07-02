.class Lcom/amazon/kedu/flashcards/CardPileView$10;
.super Ljava/lang/Object;
.source "CardPileView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


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

    .line 1070
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$10;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    iput-object p2, p0, Lcom/amazon/kedu/flashcards/CardPileView$10;->val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1074
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$10;->val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView$10;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-static {v0, p1}, Lcom/amazon/kedu/flashcards/CardPileView;->access$1300(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setRotation(F)V

    .line 1076
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$10;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    iget-object v0, p0, Lcom/amazon/kedu/flashcards/CardPileView$10;->val$cardView:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->access$1400(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/amazon/kedu/flashcards/CardPileView;->access$1500(Lcom/amazon/kedu/flashcards/CardPileView;Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizCardDraggingStatus;)V

    return-void
.end method
