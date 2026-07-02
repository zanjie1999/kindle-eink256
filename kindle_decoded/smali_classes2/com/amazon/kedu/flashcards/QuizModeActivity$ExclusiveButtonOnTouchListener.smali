.class Lcom/amazon/kedu/flashcards/QuizModeActivity$ExclusiveButtonOnTouchListener;
.super Ljava/lang/Object;
.source "QuizModeActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kedu/flashcards/QuizModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExclusiveButtonOnTouchListener"
.end annotation


# instance fields
.field private consumer:Landroid/view/View;

.field final synthetic this$0:Lcom/amazon/kedu/flashcards/QuizModeActivity;

.field private touchConsumed:Z


# direct methods
.method private constructor <init>(Lcom/amazon/kedu/flashcards/QuizModeActivity;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$ExclusiveButtonOnTouchListener;->this$0:Lcom/amazon/kedu/flashcards/QuizModeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 715
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$ExclusiveButtonOnTouchListener;->touchConsumed:Z

    const/4 p1, 0x0

    .line 717
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$ExclusiveButtonOnTouchListener;->consumer:Landroid/view/View;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kedu/flashcards/QuizModeActivity;Lcom/amazon/kedu/flashcards/QuizModeActivity$1;)V
    .locals 0

    .line 711
    invoke-direct {p0, p1}, Lcom/amazon/kedu/flashcards/QuizModeActivity$ExclusiveButtonOnTouchListener;-><init>(Lcom/amazon/kedu/flashcards/QuizModeActivity;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 724
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 744
    :cond_0
    iget-object p2, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$ExclusiveButtonOnTouchListener;->consumer:Landroid/view/View;

    if-ne p2, p1, :cond_2

    .line 746
    iput-boolean v0, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$ExclusiveButtonOnTouchListener;->touchConsumed:Z

    .line 749
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$ExclusiveButtonOnTouchListener;->this$0:Lcom/amazon/kedu/flashcards/QuizModeActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->access$300(Lcom/amazon/kedu/flashcards/QuizModeActivity;)Lcom/amazon/kedu/flashcards/CardPileView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setEnabled(Z)V

    goto :goto_0

    .line 728
    :cond_1
    iget-boolean p2, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$ExclusiveButtonOnTouchListener;->touchConsumed:Z

    if-nez p2, :cond_2

    .line 730
    iput-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$ExclusiveButtonOnTouchListener;->consumer:Landroid/view/View;

    .line 731
    iput-boolean v1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$ExclusiveButtonOnTouchListener;->touchConsumed:Z

    .line 733
    iget-object p1, p0, Lcom/amazon/kedu/flashcards/QuizModeActivity$ExclusiveButtonOnTouchListener;->this$0:Lcom/amazon/kedu/flashcards/QuizModeActivity;

    invoke-static {p1}, Lcom/amazon/kedu/flashcards/QuizModeActivity;->access$300(Lcom/amazon/kedu/flashcards/QuizModeActivity;)Lcom/amazon/kedu/flashcards/CardPileView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setEnabled(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0
.end method
