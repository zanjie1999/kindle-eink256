.class Lcom/amazon/sitb/android/view/LinkStylingService$TouchTextView;
.super Ljava/lang/Object;
.source "LinkStylingService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/sitb/android/view/LinkStylingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TouchTextView"
.end annotation


# instance fields
.field spannable:Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Lcom/amazon/sitb/android/view/LinkStylingService;Landroid/text/Spannable;)V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-object p2, p0, Lcom/amazon/sitb/android/view/LinkStylingService$TouchTextView;->spannable:Landroid/text/Spannable;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 116
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 117
    instance-of v1, p1, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 120
    :cond_0
    check-cast p1, Landroid/widget/TextView;

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_5

    .line 123
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    .line 126
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    .line 127
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v4

    sub-int/2addr p2, v4

    .line 129
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v4

    add-int/2addr v3, v4

    .line 130
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    add-int/2addr p2, v4

    .line 132
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    .line 133
    invoke-virtual {v4, p2}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p2

    int-to-float v3, v3

    .line 134
    invoke-virtual {v4, p2, v3}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p2

    .line 136
    iget-object v3, p0, Lcom/amazon/sitb/android/view/LinkStylingService$TouchTextView;->spannable:Landroid/text/Spannable;

    const-class v4, Landroid/text/style/ClickableSpan;

    invoke-interface {v3, p2, p2, v4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Landroid/text/style/ClickableSpan;

    .line 138
    array-length v3, p2

    if-eqz v3, :cond_4

    if-ne v0, v1, :cond_2

    .line 140
    aget-object p2, p2, v2

    invoke-virtual {p2, p1}, Landroid/text/style/ClickableSpan;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    .line 142
    iget-object p1, p0, Lcom/amazon/sitb/android/view/LinkStylingService$TouchTextView;->spannable:Landroid/text/Spannable;

    aget-object v0, p2, v2

    .line 143
    invoke-interface {p1, v0}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    iget-object v3, p0, Lcom/amazon/sitb/android/view/LinkStylingService$TouchTextView;->spannable:Landroid/text/Spannable;

    aget-object p2, p2, v2

    .line 144
    invoke-interface {v3, p2}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p2

    .line 142
    invoke-static {p1, v0, p2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    :cond_3
    :goto_0
    return v1

    .line 149
    :cond_4
    iget-object p1, p0, Lcom/amazon/sitb/android/view/LinkStylingService$TouchTextView;->spannable:Landroid/text/Spannable;

    invoke-static {p1}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :cond_5
    return v2
.end method
