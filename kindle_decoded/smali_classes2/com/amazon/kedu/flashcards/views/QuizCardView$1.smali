.class Lcom/amazon/kedu/flashcards/views/QuizCardView$1;
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

    .line 139
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView$1;->this$0:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 145
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizCardView$1;->this$0:Lcom/amazon/kedu/flashcards/views/QuizCardView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/QuizCardView;->access$000(Lcom/amazon/kedu/flashcards/views/QuizCardView;)Landroid/widget/ViewSwitcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->showNext()V

    return-void
.end method
