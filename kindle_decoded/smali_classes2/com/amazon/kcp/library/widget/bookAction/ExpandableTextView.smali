.class public Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "ExpandableTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;,
        Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;
    }
.end annotation


# instance fields
.field private collapseAnimator:Landroid/animation/ValueAnimator;

.field private collapseTextClickableSpan:Landroid/text/style/ClickableSpan;

.field private collapsedHeight:I

.field private collapsedLines:I

.field private collapsedMark:Ljava/lang/String;

.field private collapsedString:Landroid/text/SpannableString;

.field private expandAnimator:Landroid/animation/ValueAnimator;

.field private expandTextClickableSpan:Landroid/text/style/ClickableSpan;

.field private expandedMark:Ljava/lang/String;

.field private expandedString:Landroid/text/SpannableString;

.field private markColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x3

    .line 27
    iput p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapsedLines:I

    .line 53
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->view_less:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapsedMark:Ljava/lang/String;

    .line 54
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$string;->view_more:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->expandedMark:Ljava/lang/String;

    .line 55
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/librarymodule/R$color;->accent_3_light:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->markColor:I

    .line 56
    new-instance p1, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToExpandClickableSpan;-><init>(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$1;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->expandTextClickableSpan:Landroid/text/style/ClickableSpan;

    .line 57
    new-instance p1, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$ToCollapseClickableSpan;-><init>(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$1;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapseTextClickableSpan:Landroid/text/style/ClickableSpan;

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapseAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapseAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapsedHeight:I

    return p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;II)Landroid/animation/ValueAnimator;
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->getAnimator(II)Landroid/animation/ValueAnimator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)Landroid/text/SpannableString;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapsedString:Landroid/text/SpannableString;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->markColor:I

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->expandAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->expandAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)Landroid/text/SpannableString;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->expandedString:Landroid/text/SpannableString;

    return-object p0
.end method

.method private generateCollapsedString(Ljava/lang/String;Landroid/text/StaticLayout;I)V
    .locals 2

    .line 123
    invoke-virtual {p2, p3}, Landroid/text/StaticLayout;->getLineStart(I)I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    .line 124
    new-instance p3, Landroid/text/SpannableString;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapsedMark:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr p2, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapsedMark:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapsedString:Landroid/text/SpannableString;

    .line 125
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->expandTextClickableSpan:Landroid/text/style/ClickableSpan;

    invoke-virtual {p3}, Landroid/text/SpannableString;->length()I

    move-result p2

    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapsedMark:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr p2, v0

    iget-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapsedString:Landroid/text/SpannableString;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v0

    const/16 v1, 0x21

    invoke-virtual {p3, p1, p2, v0, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 126
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapsedString:Landroid/text/SpannableString;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private generateExpandedString(Ljava/lang/String;)V
    .locals 4

    .line 110
    new-instance v0, Landroid/text/SpannableString;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->expandedMark:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->expandedString:Landroid/text/SpannableString;

    .line 111
    iget-object p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapseTextClickableSpan:Landroid/text/style/ClickableSpan;

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->expandedMark:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->expandedString:Landroid/text/SpannableString;

    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v2

    const/16 v3, 0x21

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private getAnimator(II)Landroid/animation/ValueAnimator;
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 138
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 139
    new-instance p2, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView$1;-><init>(Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object p1
.end method

.method private getNumberOfLines(Landroid/text/StaticLayout;)I
    .locals 0

    .line 101
    invoke-virtual {p1}, Landroid/text/StaticLayout;->getLineCount()I

    move-result p1

    return p1
.end method

.method private makeExpandable(ILjava/lang/String;)V
    .locals 10

    .line 83
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    sub-int v5, v0, v1

    .line 84
    new-instance v0, Landroid/text/StaticLayout;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p2

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 86
    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->getNumberOfLines(Landroid/text/StaticLayout;)I

    move-result v1

    if-le v1, p1, :cond_0

    .line 87
    invoke-direct {p0, p2}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->generateExpandedString(Ljava/lang/String;)V

    .line 88
    invoke-direct {p0, p2, v0, p1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->generateCollapsedString(Ljava/lang/String;Landroid/text/StaticLayout;I)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->measure(II)V

    .line 95
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapsedHeight:I

    .line 96
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 97
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method


# virtual methods
.method public scrollTo(II)V
    .locals 0

    return-void
.end method

.method public setTargetString(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapseAnimator:Landroid/animation/ValueAnimator;

    .line 67
    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapsedString:Landroid/text/SpannableString;

    .line 68
    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->expandAnimator:Landroid/animation/ValueAnimator;

    .line 69
    iput-object v0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->expandedString:Landroid/text/SpannableString;

    if-eqz p1, :cond_0

    .line 71
    iget v0, p0, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->collapsedLines:I

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/library/widget/bookAction/ExpandableTextView;->makeExpandable(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
