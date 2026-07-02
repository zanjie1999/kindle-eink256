.class Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;
.super Ljava/lang/Object;
.source "QuizProgressView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/views/QuizProgressView;->updateProgress(IIIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private duration:J

.field private negativeCount:I

.field private positiveCount:I

.field final synthetic this$0:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

.field private totalCount:I


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/views/QuizProgressView;)V
    .locals 2

    .line 120
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;->this$0:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 121
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;->positiveCount:I

    .line 122
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;->negativeCount:I

    .line 123
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;->totalCount:I

    const-wide/16 v0, 0x0

    .line 124
    iput-wide v0, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;->duration:J

    return-void
.end method


# virtual methods
.method public init(IIIJ)Ljava/lang/Runnable;
    .locals 0

    .line 134
    iput p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;->positiveCount:I

    .line 135
    iput p2, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;->negativeCount:I

    .line 136
    iput p3, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;->totalCount:I

    .line 137
    iput-wide p4, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;->duration:J

    return-object p0
.end method

.method public run()V
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;->this$0:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    iget v1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;->positiveCount:I

    iget v2, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;->negativeCount:I

    iget v3, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;->totalCount:I

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->access$100(Lcom/amazon/kedu/flashcards/views/QuizProgressView;III)Landroid/animation/Animator;

    move-result-object v0

    .line 129
    iget-wide v1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$2;->duration:J

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 130
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    return-void
.end method
