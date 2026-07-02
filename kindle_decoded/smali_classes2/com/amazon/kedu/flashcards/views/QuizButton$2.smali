.class Lcom/amazon/kedu/flashcards/views/QuizButton$2;
.super Ljava/lang/Object;
.source "QuizButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/views/QuizButton;->buildHighlightChangeAnimation(Z)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/views/QuizButton;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/views/QuizButton;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton$2;->this$0:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 183
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 184
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizButton$2;->this$0:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-static {v0, p1}, Lcom/amazon/kedu/flashcards/views/QuizButton;->access$200(Lcom/amazon/kedu/flashcards/views/QuizButton;I)V

    return-void
.end method
