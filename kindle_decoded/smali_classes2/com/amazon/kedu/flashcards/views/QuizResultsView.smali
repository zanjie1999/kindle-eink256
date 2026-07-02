.class public Lcom/amazon/kedu/flashcards/views/QuizResultsView;
.super Landroid/widget/FrameLayout;
.source "QuizResultsView.java"


# instance fields
.field private learnButton:Landroid/widget/Button;

.field private restartButton:Landroid/widget/Button;

.field private scoreText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/QuizResultsView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/QuizResultsView;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 35
    sget v1, Lcom/amazon/kedu/flashcards/R$layout;->fc_view_quiz_end:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->quiz_end_learn_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizResultsView;->learnButton:Landroid/widget/Button;

    .line 38
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->quiz_end_restart_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizResultsView;->restartButton:Landroid/widget/Button;

    .line 39
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->quiz_end_score:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizResultsView;->scoreText:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public setLearnButtonEnabled(Z)V
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizResultsView;->learnButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setOnLearnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizResultsView;->learnButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnRestartClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizResultsView;->restartButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setScore(D)V
    .locals 4

    .line 59
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_quiz_end_score_text:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v2

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 60
    iget-object p2, p0, Lcom/amazon/kedu/flashcards/views/QuizResultsView;->scoreText:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
