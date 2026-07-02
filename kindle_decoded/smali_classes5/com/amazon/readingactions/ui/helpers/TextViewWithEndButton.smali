.class public Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;
.super Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;
.source "TextViewWithEndButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;,
        Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;
    }
.end annotation


# static fields
.field private static final SPACE:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private alwaysShowLink:Z

.field private appendLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

.field private context:Landroid/content/Context;

.field private currentLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

.field private imageToWrap:Landroid/widget/ImageView;

.field private span:I

.field private spanLines:I

.field private text:Ljava/lang/CharSequence;

.field private truncateLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 59
    iput-object p2, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->imageToWrap:Landroid/widget/ImageView;

    const/4 p2, 0x0

    .line 66
    iput p2, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->span:I

    .line 69
    iput p2, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->spanLines:I

    .line 82
    iput-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->context:Landroid/content/Context;

    .line 85
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 88
    new-instance p1, Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;

    invoke-direct {p1}, Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 91
    invoke-virtual {p0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setOrientationListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;ZLjava/lang/CharSequence;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextAndTruncate(ZLjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;)Ljava/lang/CharSequence;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->alwaysShowLink:Z

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->context:Landroid/content/Context;

    return-object p0
.end method

.method private calculateImageWrappingSpan()I
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->imageToWrap:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->imageToWrap:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method private cloneLayoutAndReplaceText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;
    .locals 11

    .line 470
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 472
    sget-object v0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->TAG:Ljava/lang/String;

    const-string v1, "View has null layout; returning basic textview"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .line 475
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->span:I

    sub-int v6, v1, v2

    .line 476
    invoke-virtual {v0}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v7

    .line 477
    invoke-virtual {v0}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v8

    .line 478
    invoke-virtual {v0}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v9

    .line 480
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    const/4 v10, 0x0

    move-object v3, v0

    move-object v4, p1

    invoke-direct/range {v3 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private configureForAccessibility(Ljava/lang/CharSequence;)V
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    .line 443
    invoke-static {p1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;->access$500(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 444
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getTruncateStart(ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4

    .line 401
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->getMaxLines()I

    move-result v0

    .line 403
    invoke-direct {p0, p2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->cloneLayoutAndReplaceText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v1

    .line 404
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    const/4 v3, -0x1

    if-nez p1, :cond_0

    if-gt v2, v0, :cond_0

    return v3

    .line 410
    :cond_0
    invoke-direct {p0, p3}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->cloneLayoutAndReplaceText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object p1

    .line 411
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p3

    .line 412
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, p3

    if-gez v0, :cond_1

    return v3

    .line 420
    :cond_1
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {p1, p3}, Landroid/text/StaticLayout;->getLineWidth(I)F

    move-result p1

    sub-float/2addr v2, p1

    float-to-int p1, v2

    int-to-float p1, p1

    .line 421
    invoke-virtual {v1, v0, p1}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 424
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result p3

    :goto_0
    if-le p1, p3, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 v0, p1, -0x1

    .line 426
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method private setTextAndTruncate(ZLjava/lang/CharSequence;)V
    .locals 4

    .line 278
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->imageToWrap:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->calculateImageWrappingSpan()I

    move-result v0

    iput v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->span:I

    :cond_0
    const-string v0, " "

    if-eqz p1, :cond_1

    .line 282
    iget-object v1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 284
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 285
    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 286
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 287
    iget-object v2, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    invoke-static {v2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;->access$400(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 290
    invoke-direct {p0, v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->cloneLayoutAndReplaceText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v2

    .line 291
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->getMaxLines()I

    move-result v3

    if-gt v2, v3, :cond_1

    .line 293
    invoke-direct {p0, v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithSpan(Landroid/text/SpannableStringBuilder;)V

    .line 295
    iget-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    iput-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->currentLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    .line 297
    invoke-direct {p0, p2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->configureForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_ellipsis:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 304
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->truncateLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    invoke-static {v3}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;->access$400(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 305
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 306
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->truncateLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    invoke-static {v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;->access$400(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 311
    :cond_2
    invoke-direct {p0, p1, p2, v2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->getTruncateStart(ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_4

    .line 314
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_3

    .line 315
    iget-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 316
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 317
    iget-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    invoke-static {p1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;->access$400(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 319
    iget-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    iput-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->currentLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 321
    iput-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->currentLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    .line 324
    :goto_0
    invoke-direct {p0, v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithSpan(Landroid/text/SpannableStringBuilder;)V

    goto :goto_1

    .line 327
    :cond_4
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 328
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 331
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 332
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 334
    invoke-direct {p0, v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithSpan(Landroid/text/SpannableStringBuilder;)V

    .line 336
    iget-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->truncateLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    iput-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->currentLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    .line 339
    :goto_1
    invoke-direct {p0, p2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->configureForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setTextWithSpan(Landroid/text/SpannableStringBuilder;)V
    .locals 7

    .line 351
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->imageToWrap:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 357
    :cond_0
    invoke-direct {p0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->calculateImageWrappingSpan()I

    move-result v0

    iput v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->span:I

    .line 360
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 361
    invoke-direct {p0, p1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->cloneLayoutAndReplaceText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object p1

    .line 362
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v1

    .line 365
    iget v2, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->spanLines:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_1

    .line 368
    new-instance p1, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;

    iget v1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->span:I

    invoke-direct {p1, p0, v2, v1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;-><init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;II)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    invoke-virtual {v0, p1, v3, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 369
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    sub-int/2addr v2, v1

    .line 373
    invoke-virtual {p1, v2}, Landroid/text/StaticLayout;->getLineEnd(I)I

    move-result p1

    .line 376
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v0, v3, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 377
    new-instance v4, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;

    iget v5, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->spanLines:I

    iget v6, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->span:I

    invoke-direct {v4, p0, v5, v6}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;-><init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;II)V

    invoke-interface {v2}, Landroid/text/Spannable;->length()I

    move-result v5

    invoke-interface {v2, v4, v3, v5, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 378
    new-instance v4, Landroid/text/SpannableStringBuilder;

    const-string v5, "line.separator"

    invoke-static {v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 379
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v6

    invoke-direct {v5, v0, p1, v6}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 381
    new-instance p1, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;

    invoke-direct {p1, p0, v3, v3}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$TextMarginSpan;-><init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;II)V

    invoke-interface {v5}, Landroid/text/Spannable;->length()I

    move-result v0

    invoke-interface {v5, p1, v3, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/CharSequence;

    aput-object v2, p1, v3

    aput-object v4, p1, v1

    const/4 v0, 0x2

    aput-object v5, p1, v0

    .line 383
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 487
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->currentLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 491
    :cond_0
    invoke-static {v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;->access$600(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 493
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 495
    :cond_1
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    .line 489
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 454
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 455
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->currentLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;->access$600(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->currentLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    invoke-static {v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;->access$600(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 459
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public reloadText()V
    .locals 2

    .line 182
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$2;

    invoke-direct {v1, p0, p0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$2;-><init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public setAppendLinkText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;-><init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    goto :goto_0

    .line 252
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;->setLinkText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setOrientationListener()V
    .locals 9

    .line 206
    new-instance v8, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;

    iget-object v1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->context:Landroid/content/Context;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v2, p0

    invoke-direct/range {v0 .. v7}, Lcom/amazon/readingactions/helpers/OrientationBasedViewResizer;-><init>(Landroid/content/Context;Landroid/view/View;ZZZZLcom/amazon/readingactions/helpers/AlignmentChangeDelegate;)V

    .line 207
    invoke-virtual {v8}, Landroid/view/OrientationEventListener;->enable()V

    return-void
.end method

.method public setTextWithLink(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setTextWithLink(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 137
    iput-object p1, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->text:Ljava/lang/CharSequence;

    .line 138
    iput-boolean p2, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->alwaysShowLink:Z

    .line 140
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->truncateLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-eqz v0, :cond_3

    .line 141
    invoke-virtual {v0}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 147
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_2

    .line 148
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 153
    new-instance v1, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$1;

    invoke-direct {v1, p0, p0, p2, p1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$1;-><init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;ZLjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    .line 170
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextAndTruncate(ZLjava/lang/CharSequence;)V

    goto :goto_1

    .line 143
    :cond_3
    :goto_0
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 144
    invoke-direct {p0, p2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->setTextWithSpan(Landroid/text/SpannableStringBuilder;)V

    :goto_1
    return-void
.end method

.method public setTruncateLinkText(Ljava/lang/String;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->truncateLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-eqz v0, :cond_0

    .line 234
    invoke-static {v0, p1}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;->access$300(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 219
    iget-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->truncateLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-nez v0, :cond_0

    .line 220
    new-instance v0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;-><init>(Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton;->truncateLinkText:Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/amazon/readingactions/ui/helpers/TextViewWithEndButton$LinkText;->setLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
