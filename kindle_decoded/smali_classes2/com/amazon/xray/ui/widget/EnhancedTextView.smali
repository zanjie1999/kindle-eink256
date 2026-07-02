.class public Lcom/amazon/xray/ui/widget/EnhancedTextView;
.super Landroid/widget/TextView;
.source "EnhancedTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/widget/EnhancedTextView$LinkSpan;
    }
.end annotation


# static fields
.field private static final SPACE:Ljava/lang/String; = " "


# instance fields
.field private activeLinkColor:I

.field private alwaysShowLink:Z

.field private closeQuote:Landroid/graphics/drawable/Drawable;

.field private defaultLinkColor:I

.field private lines:I

.field private linkContentDescription:Ljava/lang/String;

.field private linkListener:Landroid/view/View$OnClickListener;

.field private linkText:Ljava/lang/String;

.field private listenerAttached:Z

.field private maxLines:I

.field private openQuote:Landroid/graphics/drawable/Drawable;

.field private paddingHorizontal:I

.field private paddingVertical:I

.field private showEndQuote:Z

.field private showingQuotes:Z

.field private touchRect:Landroid/graphics/Rect;

.field private touched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 81
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 85
    sget v0, Lcom/amazon/kindle/xray/R$dimen;->xray_padding_quote_horizontal:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->paddingHorizontal:I

    .line 86
    sget v0, Lcom/amazon/kindle/xray/R$dimen;->xray_padding_quote_vertical:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->paddingVertical:I

    .line 88
    invoke-static {}, Lcom/amazon/xray/util/DebugUtil;->isFirstPartyBuild()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    const-string p2, "sans-serif"

    .line 89
    invoke-static {p2, p1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string p2, "Amazon-Ember-Regular.ttf"

    invoke-static {p1, p2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 98
    :goto_0
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setTheme(Lcom/amazon/xray/ui/util/XrayThemeUtil;)V

    .line 101
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->touchRect:Landroid/graphics/Rect;

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/xray/ui/widget/EnhancedTextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setTextWithLink(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/xray/ui/widget/EnhancedTextView;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->touched:Z

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/xray/ui/widget/EnhancedTextView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->activeLinkColor:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/xray/ui/widget/EnhancedTextView;)I
    .locals 0

    .line 32
    iget p0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->defaultLinkColor:I

    return p0
.end method

.method private cloneLayoutAndReplaceText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;
    .locals 9

    .line 489
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v4

    .line 490
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v5

    .line 491
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v6

    .line 492
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v7

    .line 493
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private configureExtras(Z)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 333
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->linkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 335
    iput-boolean v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->listenerAttached:Z

    .line 336
    iput-boolean v1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->showEndQuote:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 338
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 339
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 340
    iput-boolean v1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->listenerAttached:Z

    .line 341
    iput-boolean v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->showEndQuote:Z

    :goto_0
    return-void
.end method

.method private getActualMaxLines()I
    .locals 2

    .line 126
    iget v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->lines:I

    if-nez v0, :cond_0

    .line 127
    iget v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->maxLines:I

    return v0

    .line 129
    :cond_0
    iget v1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->maxLines:I

    if-nez v1, :cond_1

    return v0

    .line 133
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private getTruncateStart(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 5

    .line 428
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->cloneLayoutAndReplaceText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v0

    .line 429
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    .line 430
    iget-boolean v2, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->alwaysShowLink:Z

    const/4 v3, -0x1

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->getActualMaxLines()I

    move-result v2

    if-gt v1, v2, :cond_0

    return v3

    .line 436
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->cloneLayoutAndReplaceText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object p2

    .line 437
    invoke-virtual {p2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    .line 438
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->getActualMaxLines()I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    sub-int/2addr v1, v2

    if-gez v1, :cond_1

    return v3

    .line 445
    :cond_1
    invoke-virtual {v0}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p2, v2}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p2

    sub-float/2addr v3, p2

    float-to-int p2, v3

    int-to-float p2, p2

    .line 446
    invoke-virtual {v0, v1, p2}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 449
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result v0

    :goto_0
    if-le p2, v0, :cond_2

    if-lez p2, :cond_2

    add-int/lit8 v1, p2, -0x1

    .line 452
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_2
    return p2
.end method

.method private setBounds(Landroid/graphics/drawable/Drawable;II)V
    .locals 2

    .line 208
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    add-int/2addr v0, p2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private setContentDescriptionWithLink(Ljava/lang/String;)V
    .locals 3

    .line 467
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->linkContentDescription:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const-string v0, " "

    .line 472
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->linkContentDescription:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 476
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->linkContentDescription:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private setTextWithLink(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 5

    .line 368
    iget-boolean v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->alwaysShowLink:Z

    const/4 v1, 0x1

    const-string v2, " "

    if-eqz v0, :cond_1

    .line 370
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 371
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 372
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 373
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 375
    :cond_0
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 378
    invoke-direct {p0, v0}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->cloneLayoutAndReplaceText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v3

    .line 379
    invoke-virtual {v3}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v3

    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->getActualMaxLines()I

    move-result v4

    if-gt v3, v4, :cond_1

    .line 381
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 382
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setContentDescriptionWithLink(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0, v1}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->configureExtras(Z)V

    return-void

    .line 389
    :cond_1
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/xray/R$string;->xray_ellipsis:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 390
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 391
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 392
    new-instance v3, Landroid/text/SpannableStringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 393
    invoke-virtual {v3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 397
    :cond_2
    invoke-direct {p0, p1, v3}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->getTruncateStart(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result p2

    const/4 v0, -0x1

    const/4 v2, 0x0

    if-ne p2, v0, :cond_3

    .line 400
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 401
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 402
    invoke-direct {p0, v2}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->configureExtras(Z)V

    return-void

    .line 407
    :cond_3
    invoke-interface {p1, v2, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 408
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    .line 410
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setContentDescriptionWithLink(Ljava/lang/String;)V

    .line 413
    invoke-direct {p0, v1}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->configureExtras(Z)V

    return-void
.end method

.method private updatePadding()V
    .locals 4

    .line 349
    iget-boolean v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->showingQuotes:Z

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->openQuote:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget v1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->paddingHorizontal:I

    add-int/2addr v0, v1

    .line 351
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->closeQuote:Landroid/graphics/drawable/Drawable;

    .line 352
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->paddingHorizontal:I

    add-int/2addr v2, v3

    .line 353
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v3

    .line 350
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 355
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 141
    iget-boolean v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->showingQuotes:Z

    if-nez v0, :cond_0

    .line 142
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 146
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 149
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->getActualMaxLines()I

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->getActualMaxLines()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    :cond_1
    if-ltz v1, :cond_3

    .line 154
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 155
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 158
    iget-object v2, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->openQuote:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    neg-int v3, v3

    iget v4, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->paddingHorizontal:I

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    .line 159
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v5

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v4

    add-int/2addr v5, v4

    iget v4, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->paddingVertical:I

    add-int/2addr v5, v4

    .line 158
    invoke-direct {p0, v2, v3, v5}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 160
    iget-object v2, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->openQuote:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 163
    iget-boolean v2, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->showEndQuote:Z

    if-eqz v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->closeQuote:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->paddingHorizontal:I

    add-int/2addr v3, v4

    .line 165
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v0

    add-int/2addr v4, v0

    iget v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->paddingVertical:I

    add-int/2addr v4, v0

    .line 164
    invoke-direct {p0, v2, v3, v4}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 166
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->closeQuote:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 169
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 172
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 180
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->touched:Z

    if-nez v0, :cond_0

    .line 181
    iput-boolean v1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->touched:Z

    .line 182
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->touched:Z

    if-eqz v0, :cond_1

    .line 184
    iput-boolean v2, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->touched:Z

    .line 185
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    .line 186
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->touched:Z

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->touchRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getBottom()I

    move-result v5

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 188
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->touchRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    add-int/2addr v1, v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    add-int/2addr v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 189
    iput-boolean v2, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->touched:Z

    .line 190
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    .line 194
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAlwaysShowLink(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->alwaysShowLink:Z

    return-void
.end method

.method public setLines(I)V
    .locals 0

    .line 118
    invoke-super {p0, p1}, Landroid/widget/TextView;->setLines(I)V

    .line 119
    iput p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->lines:I

    return-void
.end method

.method public setLinkContentDescription(Ljava/lang/String;)V
    .locals 0

    .line 256
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->linkContentDescription:Ljava/lang/String;

    return-void
.end method

.method public setLinkListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->linkListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setLinkText(Ljava/lang/String;)V
    .locals 0

    .line 245
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->linkText:Ljava/lang/String;

    return-void
.end method

.method public setMaxLines(I)V
    .locals 0

    .line 109
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 110
    iput p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->maxLines:I

    return-void
.end method

.method public setShowingQuotes(Z)V
    .locals 0

    .line 234
    iput-boolean p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->showingQuotes:Z

    .line 235
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->updatePadding()V

    return-void
.end method

.method public setTextWithExtras(Ljava/lang/CharSequence;)V
    .locals 5

    .line 289
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->linkText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 291
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 295
    iget-boolean p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->listenerAttached:Z

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 298
    iput-boolean v2, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->listenerAttached:Z

    :cond_0
    const/4 p1, 0x1

    .line 302
    iput-boolean p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->showEndQuote:Z

    goto :goto_0

    .line 305
    :cond_1
    new-instance v0, Landroid/text/SpannableString;

    iget-object v3, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->linkText:Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 306
    new-instance v3, Lcom/amazon/xray/ui/widget/EnhancedTextView$LinkSpan;

    invoke-direct {v3, p0, v1}, Lcom/amazon/xray/ui/widget/EnhancedTextView$LinkSpan;-><init>(Lcom/amazon/xray/ui/widget/EnhancedTextView;Lcom/amazon/xray/ui/widget/EnhancedTextView$1;)V

    iget-object v4, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->linkText:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v2, v4, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 308
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-nez v2, :cond_2

    .line 310
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    new-instance v1, Lcom/amazon/xray/ui/widget/EnhancedTextView$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/amazon/xray/ui/widget/EnhancedTextView$1;-><init>(Lcom/amazon/xray/ui/widget/EnhancedTextView;Ljava/lang/CharSequence;Landroid/text/SpannableString;)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 320
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setTextWithLink(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setTheme(Lcom/amazon/xray/ui/util/XrayThemeUtil;)V
    .locals 1

    .line 218
    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result v0

    .line 219
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 220
    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryLinkColor()I

    move-result v0

    iput v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->defaultLinkColor:I

    .line 221
    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryLinkActiveColor()I

    move-result v0

    iput v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->activeLinkColor:I

    .line 222
    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getOpenQuoteIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->openQuote:Landroid/graphics/drawable/Drawable;

    .line 223
    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getCloseQuoteIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/xray/ui/widget/EnhancedTextView;->closeQuote:Landroid/graphics/drawable/Drawable;

    .line 225
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->updatePadding()V

    .line 226
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
