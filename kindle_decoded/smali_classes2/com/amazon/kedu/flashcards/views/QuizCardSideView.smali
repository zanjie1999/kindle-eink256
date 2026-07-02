.class public Lcom/amazon/kedu/flashcards/views/QuizCardSideView;
.super Lcom/amazon/kedu/flashcards/views/CardSideView;
.source "QuizCardSideView.java"


# static fields
.field private static final CAMERA_DEPTH_FACTOR:I = 0x7

.field private static final LAYOUT_RESOURCE_ID:I


# instance fields
.field private dropShadowRadius:I

.field private editButton:Landroid/widget/Button;

.field private remainingCardCountLabel:Landroid/widget/TextView;

.field private showDropShadow:Z

.field private sideLabel:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_view_quiz_card_side:I

    sput v0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->LAYOUT_RESOURCE_ID:I

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kedu/flashcards/views/CardSideView;-><init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->initialize()V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ILcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kedu/flashcards/views/CardSideView;-><init>(Landroid/content/Context;ILcom/amazon/kedu/flashcards/utils/Side;)V

    .line 43
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 36
    sget v0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kedu/flashcards/views/CardSideView;-><init>(Landroid/content/Context;ILandroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 1

    .line 30
    sget v0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, v0, p2}, Lcom/amazon/kedu/flashcards/views/CardSideView;-><init>(Landroid/content/Context;ILcom/amazon/kedu/flashcards/utils/Side;)V

    .line 31
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->initialize()V

    return-void
.end method

.method private initialize()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$dimen;->fc_quiz_card_drop_shadow_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->dropShadowRadius:I

    .line 56
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->edit_button:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->editButton:Landroid/widget/Button;

    .line 57
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->side_label:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->sideLabel:Landroid/widget/TextView;

    .line 58
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->remaining_card_count:I

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->remainingCardCountLabel:Landroid/widget/TextView;

    .line 60
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->setSideLabelText()V

    return-void
.end method

.method private setSideLabelText()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->sideLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/amazon/kedu/flashcards/views/CardSideView;->getSide()Lcom/amazon/kedu/flashcards/utils/Side;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/utils/Side;->FRONT:Lcom/amazon/kedu/flashcards/utils/Side;

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->sideLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kedu/flashcards/R$string;->fc_card_side_text_front:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->sideLabel:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kedu/flashcards/R$string;->fc_card_side_text_back:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 68
    iget-boolean v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->showDropShadow:Z

    if-eqz v0, :cond_0

    .line 70
    iget v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->dropShadowRadius:I

    invoke-static {p0, p1, v0}, Lcom/amazon/kedu/flashcards/utils/DropShadowHelper;->draw(Landroid/view/View;Landroid/graphics/Canvas;I)V

    :cond_0
    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 122
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    mul-int/lit8 p1, p1, 0x7

    int-to-float p1, p1

    mul-float p1, p1, p2

    .line 123
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setCameraDistance(F)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 96
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 98
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->editButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setOnEditClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->editButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRemainingCardCount(I)V
    .locals 4

    .line 104
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_card_side_remaining_count:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 105
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->remainingCardCountLabel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setShowDropShadow(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->showDropShadow:Z

    .line 112
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    return-void
.end method

.method public setSide(Lcom/amazon/kedu/flashcards/utils/Side;)V
    .locals 0

    .line 129
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/views/CardSideView;->setSide(Lcom/amazon/kedu/flashcards/utils/Side;)V

    .line 130
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/QuizCardSideView;->setSideLabelText()V

    return-void
.end method
