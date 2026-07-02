.class Lcom/amazon/kedu/flashcards/views/QuizButton$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuizButton.java"


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

    .line 188
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton$3;->this$0:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 198
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton$3;->this$0:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/QuizButton;->access$400(Lcom/amazon/kedu/flashcards/views/QuizButton;)Ljava/lang/Runnable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton$3;->this$0:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/QuizButton;->access$400(Lcom/amazon/kedu/flashcards/views/QuizButton;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 201
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton$3;->this$0:Lcom/amazon/kedu/flashcards/views/QuizButton;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kedu/flashcards/views/QuizButton;->access$402(Lcom/amazon/kedu/flashcards/views/QuizButton;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizButton$3;->this$0:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-static {v0, p1}, Lcom/amazon/kedu/flashcards/views/QuizButton;->access$302(Lcom/amazon/kedu/flashcards/views/QuizButton;Landroid/animation/Animator;)Landroid/animation/Animator;

    return-void
.end method
