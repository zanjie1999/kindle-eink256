.class public Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;
.super Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;
.source "TextViewWithEndButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;
    }
.end annotation


# static fields
.field private static final SPACE:Ljava/lang/String; = " "

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appendLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

.field private context:Landroid/content/Context;

.field private currentLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

.field private truncateLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 63
    new-instance p1, Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;

    invoke-direct {p1}, Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;ZLjava/lang/CharSequence;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTextAndTruncate(ZLjava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;)Landroid/content/Context;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->context:Landroid/content/Context;

    return-object p0
.end method

.method private cloneLayoutAndReplaceText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;
    .locals 18

    .line 319
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_0

    .line 321
    sget-object v0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->TAG:Ljava/lang/String;

    const-string v1, "View has null layout; returning basic textview"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0

    .line 324
    :cond_0
    invoke-virtual {v0}, Landroid/text/Layout;->getWidth()I

    move-result v13

    .line 325
    invoke-virtual {v0}, Landroid/text/Layout;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v14

    .line 326
    invoke-virtual {v0}, Landroid/text/Layout;->getSpacingMultiplier()F

    move-result v15

    .line 327
    invoke-virtual {v0}, Landroid/text/Layout;->getSpacingAdd()F

    move-result v16

    .line 329
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v12

    const/16 v17, 0x0

    move-object v10, v0

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v17}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object v0
.end method

.method private configureForAccessibility(Ljava/lang/CharSequence;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    .line 285
    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->access$300(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 286
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 290
    iget-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->context:Landroid/content/Context;

    const-string v0, "accessibility"

    .line 291
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 292
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->access$400(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 293
    iget-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->access$400(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/view/View$OnClickListener;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method private getTruncateStart(ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 4

    .line 243
    invoke-virtual {p0}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->getMaxLines()I

    move-result v0

    .line 245
    invoke-direct {p0, p2}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->cloneLayoutAndReplaceText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    const/4 v3, -0x1

    if-nez p1, :cond_0

    if-gt v2, v0, :cond_0

    return v3

    .line 252
    :cond_0
    invoke-direct {p0, p3}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->cloneLayoutAndReplaceText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p3

    .line 254
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr v0, p3

    if-gez v0, :cond_1

    return v3

    .line 262
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

    .line 263
    invoke-virtual {v1, v0, p1}, Landroid/text/StaticLayout;->getOffsetForHorizontal(IF)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 266
    invoke-virtual {v1, v0}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result p3

    :goto_0
    if-le p1, p3, :cond_2

    if-lez p1, :cond_2

    add-int/lit8 v0, p1, -0x1

    .line 268
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

    const-string v0, " "

    if-eqz p1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 173
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 174
    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 175
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 176
    iget-object v2, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    invoke-static {v2}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->access$200(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/text/SpannableString;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 179
    invoke-direct {p0, v1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->cloneLayoutAndReplaceText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v2

    invoke-virtual {p0}, Lcom/amazon/startactions/ui/helpers/TextViewWithMaxLines;->getMaxLines()I

    move-result v3

    if-gt v2, v3, :cond_0

    .line 182
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    iput-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->currentLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    .line 186
    invoke-direct {p0, p2}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->configureForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/ea/R$string;->endactions_ellipsis:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 193
    new-instance v2, Landroid/text/SpannableStringBuilder;

    iget-object v3, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->truncateLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    invoke-static {v3}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->access$200(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/text/SpannableString;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 194
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 195
    new-instance v2, Landroid/text/SpannableStringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->truncateLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    invoke-static {v1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->access$200(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/text/SpannableString;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 200
    :cond_1
    invoke-direct {p0, p1, p2, v2}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->getTruncateStart(ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    .line 203
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_2

    .line 204
    iget-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 205
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 206
    iget-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    invoke-static {p1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->access$200(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 208
    iget-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    iput-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->currentLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 210
    iput-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->currentLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    .line 213
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 216
    :cond_3
    new-instance p1, Landroid/text/SpannableStringBuilder;

    invoke-direct {p1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 217
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 220
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 221
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 222
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->truncateLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    iput-object p1, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->currentLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    .line 227
    :goto_1
    invoke-direct {p0, p2}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->configureForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    .line 336
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->currentLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-nez v0, :cond_0

    goto :goto_0

    .line 340
    :cond_0
    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->access$400(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-nez v0, :cond_1

    .line 342
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 344
    :cond_1
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    const/4 p1, 0x1

    return p1

    .line 338
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 303
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->currentLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->access$400(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->currentLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    invoke-static {v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->access$400(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 308
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public setAppendLinkText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;-><init>(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    goto :goto_0

    .line 158
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->setLinkText(Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public setTextWithLink(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x1

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTextWithLink(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public setTextWithLink(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->truncateLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->appendLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-eqz v0, :cond_3

    .line 88
    invoke-virtual {v0}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_2

    .line 94
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    invoke-virtual {p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$1;-><init>(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;ZLjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1

    .line 111
    :cond_2
    invoke-direct {p0, p2, p1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->setTextAndTruncate(ZLjava/lang/CharSequence;)V

    goto :goto_1

    .line 90
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method public setTruncateLinkText(Ljava/lang/String;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->truncateLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-eqz v0, :cond_0

    .line 140
    invoke-static {v0, p1}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->access$100(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setTruncateLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->truncateLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;-><init>(Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton;->truncateLinkText:Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/amazon/startactions/ui/helpers/TextViewWithEndButton$LinkText;->setLinkText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method
