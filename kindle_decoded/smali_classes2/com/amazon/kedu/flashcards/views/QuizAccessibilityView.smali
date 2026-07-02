.class public Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;
.super Landroid/widget/RelativeLayout;
.source "QuizAccessibilityView.java"


# instance fields
.field private flipButton:Landroid/widget/Button;

.field private sendToBackButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 32
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 33
    sget v1, Lcom/amazon/kedu/flashcards/R$layout;->fc_view_quiz_accessibility:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->flip_accessibility_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;->flipButton:Landroid/widget/Button;

    .line 36
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->send_to_back_accessibility_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;->sendToBackButton:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public setOnFlipClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;->flipButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnSendToBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizAccessibilityView;->sendToBackButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
