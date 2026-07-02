.class Lcom/amazon/kedu/flashcards/views/QuizCardView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuizCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/views/QuizCardView;->flip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/views/QuizCardView;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/views/QuizCardView;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView$2;->this$0:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 166
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 168
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView$2;->this$0:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-static {p1, p1}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->access$200(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 158
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 160
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView$2;->this$0:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-static {p1, p1}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->access$100(Lcom/amazon/kedu/flashcards/views/QuizCardView;Lcom/amazon/kedu/flashcards/views/QuizCardView;)V

    return-void
.end method
