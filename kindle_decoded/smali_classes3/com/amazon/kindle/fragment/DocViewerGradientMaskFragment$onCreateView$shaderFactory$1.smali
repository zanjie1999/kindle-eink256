.class public final Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment$onCreateView$shaderFactory$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "DocViewerGradientMaskFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $bgColor:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 42
    iput p1, p0, Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment$onCreateView$shaderFactory$1;->$bgColor:I

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 8

    .line 46
    new-instance p1, Landroid/graphics/LinearGradient;

    int-to-float v4, p2

    const/4 p2, 0x4

    new-array v5, p2, [I

    .line 47
    iget v0, p0, Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment$onCreateView$shaderFactory$1;->$bgColor:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    aput v0, v5, v1

    .line 48
    iget v0, p0, Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment$onCreateView$shaderFactory$1;->$bgColor:I

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    const/4 v1, 0x1

    aput v0, v5, v1

    .line 49
    iget v0, p0, Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment$onCreateView$shaderFactory$1;->$bgColor:I

    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    const/4 v2, 0x2

    aput v0, v5, v2

    .line 50
    iget v0, p0, Lcom/amazon/kindle/fragment/DocViewerGradientMaskFragment$onCreateView$shaderFactory$1;->$bgColor:I

    invoke-static {v0, v1}, Landroidx/core/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    const/4 v1, 0x3

    aput v0, v5, v1

    new-array v6, p2, [F

    .line 51
    fill-array-data v6, :array_0

    .line 52
    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    .line 46
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object p1

    nop

    :array_0
    .array-data 4
        0x0
        0x3e800000    # 0.25f
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method
