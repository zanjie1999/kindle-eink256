.class public final Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup;
.super Landroid/widget/LinearLayout;
.source "ColumnViewGroup.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private _$_findViewCache:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 13
    const-class p1, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ColumnViewGroup::class.java.name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final setViewWidthForChildren()V
    .locals 7

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 26
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "child"

    .line 27
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    if-eqz v3, :cond_0

    check-cast v3, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setting child view: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " with width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;->getColumnWidth()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " + "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "padding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v3}, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;->getInsetToColumnGutters()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    sget-object v4, Lcom/amazon/android/tableofcontents/columns/ColumnUtil;->Companion:Lcom/amazon/android/tableofcontents/columns/ColumnUtil$Companion;

    .line 31
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string/jumbo v6, "resources"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3}, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;->getColumnWidth()Ljava/lang/Integer;

    move-result-object v6

    .line 34
    invoke-virtual {v3}, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;->getInsetToColumnGutters()Z

    move-result v3

    .line 30
    invoke-virtual {v4, v5, v2, v6, v3}, Lcom/amazon/android/tableofcontents/columns/ColumnUtil$Companion;->setViewWidth(Landroid/content/res/Resources;Landroid/view/View;Ljava/lang/Integer;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 27
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string/jumbo v1, "null cannot be cast to non-null type com.amazon.android.tableofcontents.columns.ColumnViewGroup.ColumnLayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 12
    invoke-virtual {p0}, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 40
    new-instance v0, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;-><init>(Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 2

    .line 44
    new-instance v0, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup$ColumnLayoutParams;-><init>(Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 20
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 21
    invoke-direct {p0}, Lcom/amazon/android/tableofcontents/columns/ColumnViewGroup;->setViewWidthForChildren()V

    return-void
.end method
