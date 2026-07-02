.class Lcom/amazon/kedu/flashcards/views/QuizProgressView$1;
.super Ljava/lang/Object;
.source "QuizProgressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/views/QuizProgressView;->setExpanded(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private duration:J

.field private expand:Z

.field final synthetic this$0:Lcom/amazon/kedu/flashcards/views/QuizProgressView;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/views/QuizProgressView;)V
    .locals 2

    .line 83
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$1;->this$0:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$1;->expand:Z

    const-wide/16 v0, 0x0

    .line 85
    iput-wide v0, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$1;->duration:J

    return-void
.end method


# virtual methods
.method public init(ZJ)Ljava/lang/Runnable;
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$1;->expand:Z

    .line 96
    iput-wide p2, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$1;->duration:J

    return-object p0
.end method

.method public run()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$1;->this$0:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    iget-boolean v1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$1;->expand:Z

    invoke-static {v0, v1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->access$000(Lcom/amazon/kedu/flashcards/views/QuizProgressView;Z)Landroid/animation/Animator;

    move-result-object v0

    .line 90
    iget-wide v1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$1;->duration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 91
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
