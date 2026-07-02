.class Lcom/amazon/kedu/flashcards/views/QuizButton$1;
.super Ljava/lang/Object;
.source "QuizButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/views/QuizButton;->resetHighlight()V
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

    .line 97
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton$1;->this$0:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizButton$1;->this$0:Lcom/amazon/kedu/flashcards/views/QuizButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/views/QuizButton;->access$000(Lcom/amazon/kedu/flashcards/views/QuizButton;Z)Landroid/animation/Animator;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/QuizButton$1;->this$0:Lcom/amazon/kedu/flashcards/views/QuizButton;

    invoke-static {v1}, Lcom/amazon/kedu/flashcards/views/QuizButton;->access$100(Lcom/amazon/kedu/flashcards/views/QuizButton;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 103
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
