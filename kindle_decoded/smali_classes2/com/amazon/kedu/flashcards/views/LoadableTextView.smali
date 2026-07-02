.class public Lcom/amazon/kedu/flashcards/views/LoadableTextView;
.super Lcom/amazon/kedu/flashcards/views/LoadableView;
.source "LoadableTextView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kedu/flashcards/views/LoadableView<",
        "Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;",
        ">;"
    }
.end annotation


# static fields
.field private static final ATTR_DEFAULT_TEXT_GRAVITY:I = 0x3

.field private static final LAYOUT_RESOURCE_ID:I


# instance fields
.field private textView:Lcom/amazon/kedu/flashcards/views/CardTextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    sget v0, Lcom/amazon/kedu/flashcards/R$layout;->fc_loadable_text_view:I

    sput v0, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->LAYOUT_RESOURCE_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 23
    sget v0, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, v0}, Lcom/amazon/kedu/flashcards/views/LoadableView;-><init>(Landroid/content/Context;I)V

    .line 24
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 29
    sget v0, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kedu/flashcards/views/LoadableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->initialize()V

    .line 31
    invoke-direct {p0, p2}, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->setAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    sget p3, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->LAYOUT_RESOURCE_ID:I

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kedu/flashcards/views/LoadableView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->initialize()V

    .line 38
    invoke-direct {p0, p2}, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->setAttributes(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private initialize()V
    .locals 1

    .line 43
    sget v0, Lcom/amazon/kedu/flashcards/R$id;->text_view:I

    invoke-virtual {p0, v0}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kedu/flashcards/views/CardTextView;

    iput-object v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->textView:Lcom/amazon/kedu/flashcards/views/CardTextView;

    return-void
.end method

.method private setAttributes(Landroid/util/AttributeSet;)V
    .locals 5

    .line 48
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/R$styleable;->CardTextView:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->textView:Lcom/amazon/kedu/flashcards/views/CardTextView;

    sget v3, Lcom/amazon/kedu/flashcards/R$styleable;->CardTextView_minTextSize:I

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/amazon/kedu/flashcards/views/CardTextView;->setMinTextSize(F)V

    .line 52
    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->textView:Lcom/amazon/kedu/flashcards/views/CardTextView;

    sget v3, Lcom/amazon/kedu/flashcards/R$styleable;->CardTextView_maxTextSize:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v1, v3}, Lcom/amazon/kedu/flashcards/views/CardTextView;->setMaxTextSize(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 59
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kedu/flashcards/R$styleable;->LoadableTextView:[I

    invoke-virtual {v0, p1, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 62
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->textView:Lcom/amazon/kedu/flashcards/views/CardTextView;

    sget v1, Lcom/amazon/kedu/flashcards/R$styleable;->LoadableTextView_textGravity:I

    const/4 v2, 0x3

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    or-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    throw v0

    :catchall_1
    move-exception p1

    .line 56
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 57
    throw p1
.end method


# virtual methods
.method public getExpandableButtonLabel()Ljava/lang/String;
    .locals 2

    .line 100
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kedu/flashcards/R$string;->fc_card_side_see_more_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onLoadingComplete(Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;)V
    .locals 3

    .line 86
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->isEllipsized()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/LoadableView;->setExpandability(Z)V

    .line 87
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->textView:Lcom/amazon/kedu/flashcards/views/CardTextView;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kedu/flashcards/views/CardTextView;->resizeText(Ljava/lang/Float;)V

    .line 88
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->textView:Lcom/amazon/kedu/flashcards/views/CardTextView;

    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p1}, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;->getLineCount()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kedu/flashcards/R$integer;->fc_quiz_max_lines_to_center:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->textView:Lcom/amazon/kedu/flashcards/views/CardTextView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 94
    :cond_0
    invoke-super {p0, p1}, Lcom/amazon/kedu/flashcards/views/LoadableView;->onLoadingComplete(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onLoadingComplete(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;

    invoke-virtual {p0, p1}, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->onLoadingComplete(Lcom/amazon/kedu/flashcards/loadable/TextLoader$LoadedText;)V

    return-void
.end method

.method public onLoadingStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    invoke-virtual {p0, v0}, Lcom/amazon/kedu/flashcards/views/LoadableView;->setExpandability(Z)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;II)V
    .locals 10

    .line 72
    invoke-virtual {p0}, Landroid/widget/ViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->textView:Lcom/amazon/kedu/flashcards/views/CardTextView;

    .line 73
    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/views/CardTextView;->getMinTextSize()F

    move-result v1

    float-to-int v5, v1

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->textView:Lcom/amazon/kedu/flashcards/views/CardTextView;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/views/CardTextView;->getMaxTextSize()F

    move-result v1

    float-to-int v6, v1

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->textView:Lcom/amazon/kedu/flashcards/views/CardTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->textView:Lcom/amazon/kedu/flashcards/views/CardTextView;

    .line 74
    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/views/CardTextView;->getSpacingAdd()F

    move-result v8

    iget-object v1, p0, Lcom/amazon/kedu/flashcards/views/LoadableTextView;->textView:Lcom/amazon/kedu/flashcards/views/CardTextView;

    invoke-virtual {v1}, Lcom/amazon/kedu/flashcards/views/CardTextView;->getSpacingMult()F

    move-result v9

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 72
    invoke-static/range {v0 .. v9}, Lcom/amazon/kedu/flashcards/loadable/LoadableViewProvider;->loadText(Landroid/content/Context;Lcom/amazon/kedu/flashcards/views/LoadableTextView;Ljava/lang/CharSequence;IIIILandroid/text/TextPaint;FF)Z

    return-void
.end method
