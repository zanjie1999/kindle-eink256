.class public final Lcom/amazon/android/tableofcontents/columns/MaxHeightPercentImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "MaxHeightPercentImageView.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final maxHeightPercent:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/toc/R$styleable;->MaxHeight_View:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 17
    sget p2, Lcom/amazon/kindle/toc/R$styleable;->MaxHeight_View_maxHeightPercent:I

    const/high16 v0, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p1

    iput p1, p0, Lcom/amazon/android/tableofcontents/columns/MaxHeightPercentImageView;->maxHeightPercent:F

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 21
    sget-object v0, Lcom/amazon/android/tableofcontents/columns/MaxHeightPercentUtils;->Companion:Lcom/amazon/android/tableofcontents/columns/MaxHeightPercentUtils$Companion;

    iget v1, p0, Lcom/amazon/android/tableofcontents/columns/MaxHeightPercentImageView;->maxHeightPercent:F

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/android/tableofcontents/columns/MaxHeightPercentUtils$Companion;->getHeightMeasureSpec(IIF)I

    move-result p2

    .line 22
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void
.end method
