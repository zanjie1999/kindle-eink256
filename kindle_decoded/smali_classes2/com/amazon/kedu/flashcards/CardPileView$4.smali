.class Lcom/amazon/kedu/flashcards/CardPileView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CardPileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/CardPileView;->animateNegativeCommit(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)V
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

    .line 804
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$4;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 808
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$4;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/CardPileView;->access$400(Lcom/amazon/kedu/flashcards/CardPileView;)V

    return-void
.end method
