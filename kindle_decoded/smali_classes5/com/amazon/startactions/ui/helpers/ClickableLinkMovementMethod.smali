.class public Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "ClickableLinkMovementMethod.java"


# instance fields
.field private clickedSpan:Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method private getSpanFromTouchLocation(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;
    .locals 2

    .line 84
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 85
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    sub-int/2addr p3, v1

    .line 88
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 89
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p3

    int-to-float v0, v0

    .line 90
    invoke-virtual {p1, p3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    .line 93
    const-class p3, Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;

    invoke-interface {p2, p1, p1, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;

    .line 94
    array-length p2, p1

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget-object p1, p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private resetSelection(Landroid/text/Spannable;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;->clickedSpan:Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;->setSelected(Z)V

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;->clickedSpan:Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;

    .line 68
    invoke-static {p1}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 32
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;->getSpanFromTouchLocation(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;->clickedSpan:Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;

    if-eqz p1, :cond_2

    .line 37
    invoke-virtual {p1, v1}, Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;->setSelected(Z)V

    .line 38
    iget-object p1, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;->clickedSpan:Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;

    invoke-interface {p2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    iget-object p3, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;->clickedSpan:Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;

    .line 39
    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    .line 38
    invoke-static {p2, p1, p3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;->getSpanFromTouchLocation(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;

    move-result-object p1

    .line 44
    iget-object p3, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;->clickedSpan:Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;

    if-eqz p3, :cond_2

    if-eq p3, p1, :cond_2

    .line 45
    invoke-direct {p0, p2}, Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;->resetSelection(Landroid/text/Spannable;)V

    goto :goto_0

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;->clickedSpan:Lcom/amazon/startactions/ui/helpers/ClickableLinkSpan;

    if-eqz v0, :cond_2

    .line 50
    invoke-direct {p0, p2}, Lcom/amazon/startactions/ui/helpers/ClickableLinkMovementMethod;->resetSelection(Landroid/text/Spannable;)V

    .line 51
    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v1
.end method
