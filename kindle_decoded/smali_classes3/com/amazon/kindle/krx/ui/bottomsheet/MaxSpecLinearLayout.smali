.class public final Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;
.super Landroid/widget/LinearLayout;
.source "MaxSpecLinearLayout.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private maxHeightPx:I

.field private maxWidthPx:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x7fffffff

    .line 11
    iput p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;->maxWidthPx:I

    .line 12
    iput p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;->maxHeightPx:I

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public final getMaxHeightPx()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;->maxHeightPx:I

    return v0
.end method

.method public final getMaxWidthPx()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;->maxWidthPx:I

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 15
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;->maxWidthPx:I

    if-le v0, v1, :cond_0

    const/high16 p1, 0x40000000    # 2.0f

    .line 16
    invoke-static {v1, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 20
    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;->maxHeightPx:I

    if-le v0, v1, :cond_1

    .line 21
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 25
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public final setMaxHeightPx(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;->maxHeightPx:I

    return-void
.end method

.method public final setMaxWidthPx(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/amazon/kindle/krx/ui/bottomsheet/MaxSpecLinearLayout;->maxWidthPx:I

    return-void
.end method
