.class Lcom/amazon/kedu/flashcards/CardPileView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CardPileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/CardPileView;->getCardCommitAnimation(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/CardPileView$QuizPileSection;)Landroid/animation/Animator;
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

    .line 973
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$7;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 977
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$7;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/CardPileView;->access$800(Lcom/amazon/kedu/flashcards/CardPileView;)Lcom/amazon/kedu/flashcards/CardPileAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
