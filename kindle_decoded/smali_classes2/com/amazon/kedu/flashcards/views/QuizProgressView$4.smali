.class Lcom/amazon/kedu/flashcards/views/QuizProgressView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "QuizProgressView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/flashcards/views/QuizProgressView;->buildWholeUpdateAnimation(ZII)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kedu/flashcards/views/QuizProgressView;


# direct methods
.method constructor <init>(Lcom/amazon/kedu/flashcards/views/QuizProgressView;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$4;->this$0:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 215
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$4;->this$0:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->access$200(Lcom/amazon/kedu/flashcards/views/QuizProgressView;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 216
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/views/QuizProgressView$4;->this$0:Lcom/amazon/kedu/flashcards/views/QuizProgressView;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/views/QuizProgressView;->access$300(Lcom/amazon/kedu/flashcards/views/QuizProgressView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method
