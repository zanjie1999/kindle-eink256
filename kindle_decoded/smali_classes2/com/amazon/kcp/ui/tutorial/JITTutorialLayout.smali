.class public Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;
.super Landroid/widget/FrameLayout;
.source "JITTutorialLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$TutorialLayoutListener;
    }
.end annotation


# instance fields
.field private containerPaint:Landroid/graphics/Paint;

.field private containerRect:Landroid/graphics/RectF;

.field private cornerRadius:F

.field private m_caretView:Lcom/amazon/kcp/ui/tutorial/JITCaretView;

.field private m_highlightView:Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;

.field private m_listener:Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$TutorialLayoutListener;

.field private m_textView:Landroid/widget/TextView;

.field private m_tutorial:Lcom/amazon/kindle/krx/tutorial/JITTutorial;

.field private m_viewsHidden:Z

.field private strokePaint:Landroid/graphics/Paint;

.field private supportBackgroundStroke:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->containerRect:Landroid/graphics/RectF;

    .line 69
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->setupPaints()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->containerRect:Landroid/graphics/RectF;

    .line 74
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->setupPaints()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->containerRect:Landroid/graphics/RectF;

    .line 79
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->setupPaints()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->containerRect:Landroid/graphics/RectF;

    .line 84
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->setupPaints()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;)Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$TutorialLayoutListener;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_listener:Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$TutorialLayoutListener;

    return-object p0
.end method

.method private getTutorialOrientation()Lcom/amazon/kindle/krx/tutorial/Orientation;
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_tutorial:Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    if-eqz v0, :cond_1

    .line 296
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 299
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/tutorial/JITTutorial;->getOrientationLandscape()Lcom/amazon/kindle/krx/tutorial/Orientation;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 301
    invoke-virtual {v0}, Lcom/amazon/kindle/krx/tutorial/JITTutorial;->getOrientationPortrait()Lcom/amazon/kindle/krx/tutorial/Orientation;

    move-result-object v0

    return-object v0

    .line 305
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/tutorial/Orientation;->BOTTOM:Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object v0
.end method

.method private setupPaints()V
    .locals 5

    .line 360
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->tooltip_add_background_stroke:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->supportBackgroundStroke:Z

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->containerPaint:Landroid/graphics/Paint;

    .line 366
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 367
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->containerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 368
    sget v2, Lcom/amazon/kindle/krl/R$attr;->utm_tutorial_background:I

    const/4 v3, 0x0

    aput v2, v0, v3

    sget v2, Lcom/amazon/kindle/krl/R$attr;->utm_tutorial_tooltip_outline:I

    aput v2, v0, v1

    .line 369
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 370
    iget-object v2, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->containerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 373
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->strokePaint:Landroid/graphics/Paint;

    .line 374
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 375
    iget-object v2, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 376
    iget-object v2, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->tooltip_border_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 378
    iget-object v1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->strokePaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 380
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->tooltip_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->cornerRadius:F

    .line 383
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    :cond_0
    return-void
.end method

.method private setupTutorialText()V
    .locals 9

    .line 314
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_tutorial:Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    .line 315
    iget-object v1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_textView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 318
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/krx/tutorial/JITTutorial;->getText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 323
    :cond_0
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/krx/tutorial/JITTutorial;->getClickableText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 325
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/krl/R$string;->jit_tutorial_clickable_text_format:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    const/4 v8, 0x1

    aput-object v4, v6, v8

    .line 326
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v1, v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 327
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Landroid/text/Spannable;

    .line 330
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 331
    invoke-interface {v4}, Landroid/text/Spannable;->length()I

    move-result v5

    new-array v6, v8, [I

    .line 332
    sget v8, Lcom/amazon/kindle/krl/R$attr;->utm_tutorial_link_textcolor:I

    aput v8, v6, v7

    .line 333
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 334
    invoke-virtual {v2, v7, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 337
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-interface {v4, v6, v3, v5, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 338
    new-instance v2, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$1;-><init>(Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;Lcom/amazon/kindle/krx/tutorial/JITTutorial;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getHighlightView()Landroid/view/View;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_highlightView:Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;

    return-object v0
.end method

.method public hideViews()V
    .locals 2

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_viewsHidden:Z

    .line 261
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_highlightView:Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 265
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->setHighlightRect(Landroid/graphics/Rect;)V

    .line 268
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_textView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 269
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_caretView:Lcom/amazon/kcp/ui/tutorial/JITCaretView;

    if-eqz v0, :cond_2

    .line 273
    invoke-virtual {v0}, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->clearPath()V

    :cond_2
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 236
    iget-boolean v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->supportBackgroundStroke:Z

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->containerRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 240
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->containerRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->cornerRadius:F

    iget-object v2, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 241
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_caretView:Lcom/amazon/kcp/ui/tutorial/JITCaretView;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->getPath()Landroid/graphics/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->containerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 245
    iget-object v1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->containerRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->cornerRadius:F

    iget-object v2, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->containerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 252
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 135
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/16 v0, 0x400

    .line 138
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 140
    sget v0, Lcom/amazon/kindle/krl/R$id;->jit_tutorial_highlight_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;

    iput-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_highlightView:Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;

    .line 141
    sget v0, Lcom/amazon/kindle/krl/R$id;->jit_tutorial_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_textView:Landroid/widget/TextView;

    .line 142
    sget v0, Lcom/amazon/kindle/krl/R$id;->jit_tutorial_caret:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/ui/tutorial/JITCaretView;

    iput-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_caretView:Lcom/amazon/kcp/ui/tutorial/JITCaretView;

    .line 144
    invoke-virtual {p0}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->hideViews()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 168
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 173
    iget-object p1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_textView:Landroid/widget/TextView;

    .line 174
    iget-object p2, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_caretView:Lcom/amazon/kcp/ui/tutorial/JITCaretView;

    .line 175
    iget-object p3, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_tutorial:Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    if-eqz p3, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    iget-boolean p3, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_viewsHidden:Z

    if-nez p3, :cond_5

    .line 176
    invoke-virtual {p2}, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->getVertices()[Landroid/graphics/Point;

    move-result-object p2

    .line 177
    invoke-virtual {p1}, Landroid/widget/TextView;->getWidth()I

    move-result p3

    .line 178
    invoke-virtual {p1}, Landroid/widget/TextView;->getHeight()I

    move-result p4

    .line 182
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->getTutorialOrientation()Lcom/amazon/kindle/krx/tutorial/Orientation;

    move-result-object p5

    .line 184
    sget-object v0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$2;->$SwitchMap$com$amazon$kindle$krx$tutorial$Orientation:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p5, v0, p5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq p5, v1, :cond_2

    if-eq p5, v2, :cond_1

    const/4 v3, 0x3

    if-eq p5, v3, :cond_0

    .line 202
    aget-object p5, p2, v0

    iget p5, p5, Landroid/graphics/Point;->x:I

    mul-int/lit8 p5, p5, 0x2

    sub-int/2addr p5, p3

    div-int/2addr p5, v2

    .line 203
    aget-object p2, p2, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, p4

    goto :goto_0

    .line 197
    :cond_0
    aget-object p5, p2, v0

    iget p5, p5, Landroid/graphics/Point;->x:I

    mul-int/lit8 p5, p5, 0x2

    sub-int/2addr p5, p3

    div-int/2addr p5, v2

    .line 198
    aget-object p2, p2, v1

    iget p2, p2, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 192
    :cond_1
    aget-object p5, p2, v1

    iget p5, p5, Landroid/graphics/Point;->x:I

    sub-int/2addr p5, p3

    .line 193
    aget-object p2, p2, v0

    iget p2, p2, Landroid/graphics/Point;->y:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p2, p4

    div-int/2addr p2, v2

    goto :goto_0

    .line 187
    :cond_2
    aget-object p5, p2, v1

    iget p5, p5, Landroid/graphics/Point;->x:I

    .line 188
    aget-object p2, p2, v0

    iget p2, p2, Landroid/graphics/Point;->y:I

    mul-int/lit8 p2, p2, 0x2

    sub-int/2addr p2, p4

    div-int/2addr p2, v2

    :goto_0
    add-int/2addr p3, p5

    .line 208
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 213
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->tutorial_jit_textview_margin:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    if-le p3, v1, :cond_3

    sub-int v1, p3, v1

    add-int/2addr v1, v2

    sub-int/2addr p3, v1

    sub-int/2addr p5, v1

    goto :goto_1

    :cond_3
    if-gez p5, :cond_4

    neg-int v1, p5

    add-int/2addr v1, v2

    add-int/2addr p3, v1

    add-int/2addr p5, v1

    :cond_4
    :goto_1
    add-int/2addr p4, p2

    .line 227
    invoke-virtual {p1, p5, p2, p3, p4}, Landroid/widget/TextView;->layout(IIII)V

    .line 228
    iget-object v1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->containerRect:Landroid/graphics/RectF;

    int-to-float p5, p5

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    invoke-virtual {v1, p5, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 230
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 149
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 151
    iget-object p1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_textView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 154
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 155
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p2

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    .line 157
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->tutorial_jit_max_textview_width_percentage:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int v0, v0, p2

    .line 158
    div-int/lit8 v0, v0, 0x64

    const/high16 p2, -0x80000000

    .line 160
    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 161
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 162
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->measure(II)V

    :cond_1
    return-void
.end method

.method public setTutorial(Lcom/amazon/kindle/krx/tutorial/JITTutorial;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_tutorial:Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    return-void
.end method

.method public setTutorialLayoutListener(Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$TutorialLayoutListener;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_listener:Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout$TutorialLayoutListener;

    return-void
.end method

.method public showTutorialViews()Z
    .locals 6

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_tutorial:Lcom/amazon/kindle/krx/tutorial/JITTutorial;

    .line 110
    iget-object v1, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_highlightView:Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;

    .line 111
    iget-object v2, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_textView:Landroid/widget/TextView;

    .line 112
    iget-object v3, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_caretView:Lcom/amazon/kcp/ui/tutorial/JITCaretView;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/amazon/kindle/krx/tutorial/JITTutorial;->getTutorialView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    if-nez v4, :cond_1

    goto :goto_1

    .line 120
    :cond_1
    invoke-static {v4}, Lcom/amazon/android/util/UIUtils;->getGlobalRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    .line 122
    iput-boolean v5, p0, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->m_viewsHidden:Z

    .line 124
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/ui/tutorial/TutorialHighlightView;->setHighlightRect(Landroid/graphics/Rect;)V

    .line 125
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->setupTutorialText()V

    .line 127
    invoke-direct {p0}, Lcom/amazon/kcp/ui/tutorial/JITTutorialLayout;->getTutorialOrientation()Lcom/amazon/kindle/krx/tutorial/Orientation;

    move-result-object v1

    .line 128
    invoke-virtual {v3, v0, v1}, Lcom/amazon/kcp/ui/tutorial/JITCaretView;->setVertices(Landroid/graphics/Rect;Lcom/amazon/kindle/krx/tutorial/Orientation;)V

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_1
    return v5
.end method
