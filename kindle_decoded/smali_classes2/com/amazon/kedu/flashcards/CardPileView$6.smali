.class Lcom/amazon/kedu/flashcards/CardPileView$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CardPileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/CardPileView;->getPileShuffleAnimation(Lcom/amazon/kedu/flashcards/views/QuizCardView;J)Landroid/animation/Animator;
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

    .line 949
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$6;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 959
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$6;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->access$700(Lcom/amazon/kedu/flashcards/CardPileView;Z)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 953
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$6;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/CardPileView;->access$700(Lcom/amazon/kedu/flashcards/CardPileView;Z)V

    return-void
.end method
