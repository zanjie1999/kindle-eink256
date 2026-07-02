.class public final Lcom/amazon/kindle/library/widget/ToggleGroup$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "ToggleGroup.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/library/widget/ToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutParams"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 248
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 2

    const-string v0, "dimensionArray"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 267
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    const-string v0, "layout_width"

    .line 268
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result p2

    iput p2, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 270
    :cond_0
    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 273
    :goto_0
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "layout_height"

    .line 274
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getLayoutDimension(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_1

    .line 276
    :cond_1
    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :goto_1
    return-void
.end method
