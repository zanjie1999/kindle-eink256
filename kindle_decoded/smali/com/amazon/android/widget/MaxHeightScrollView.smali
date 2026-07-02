.class public Lcom/amazon/android/widget/MaxHeightScrollView;
.super Landroid/widget/ScrollView;
.source "MaxHeightScrollView.java"


# instance fields
.field private maxHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/widget/MaxHeightScrollView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isInEditMode()Z

    move-result p3

    if-nez p3, :cond_0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/widget/MaxHeightScrollView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    invoke-virtual {p0}, Landroid/widget/ScrollView;->isInEditMode()Z

    move-result p3

    if-nez p3, :cond_0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/widget/MaxHeightScrollView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/wl/R$dimen;->command_bar_default_popup_max_height:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/widget/MaxHeightScrollView;->maxHeight:I

    :cond_0
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    .line 82
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 83
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 57
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 59
    iget v1, p0, Lcom/amazon/android/widget/MaxHeightScrollView;->maxHeight:I

    if-le v0, v1, :cond_0

    const/high16 p2, -0x80000000

    .line 61
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 63
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/amazon/android/widget/MaxHeightScrollView;->maxHeight:I

    .line 73
    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    return-void
.end method
