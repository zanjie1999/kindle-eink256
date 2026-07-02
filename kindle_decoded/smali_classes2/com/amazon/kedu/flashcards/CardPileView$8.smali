.class Lcom/amazon/kedu/flashcards/CardPileView$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CardPileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/CardPileView;->getCardDismissAnimation(Lcom/amazon/kedu/flashcards/views/QuizCardView;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/CardPileView;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/CardPileView;)V
    .locals 0

    .line 990
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$8;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1001
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$8;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->access$700(Lcom/amazon/kedu/flashcards/CardPileView;Z)V

    .line 1002
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$8;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/CardPileView;->access$800(Lcom/amazon/kedu/flashcards/CardPileView;)Lcom/amazon/kedu/flashcards/CardPileAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 994
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$8;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->access$700(Lcom/amazon/kedu/flashcards/CardPileView;Z)V

    .line 995
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$8;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/CardPileView;->access$900(Lcom/amazon/kedu/flashcards/CardPileView;)V

    return-void
.end method
