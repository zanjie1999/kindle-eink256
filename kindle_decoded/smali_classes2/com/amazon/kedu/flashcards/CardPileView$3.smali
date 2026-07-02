.class Lcom/amazon/kedu/flashcards/CardPileView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CardPileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/CardPileView;->animatePositiveCommit(Lcom/amazon/kedu/flashcards/views/QuizCardView;FF)V
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

    .line 772
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$3;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 776
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/CardPileView$3;->this$0:Lcom/amazon/kedu/flashcards/CardPileView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/CardPileView;->access$300(Lcom/amazon/kedu/flashcards/CardPileView;)V

    return-void
.end method
