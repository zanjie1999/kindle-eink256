.class Lcom/amazon/nwstd/toc/TOCListController$1;
.super Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;
.source "TOCListController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/toc/TOCListController;->getDividerDrawable()Landroid/graphics/drawable/Drawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/toc/TOCListController;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/toc/TOCListController;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCListController$1;->this$0:Lcom/amazon/nwstd/toc/TOCListController;

    invoke-direct {p0}, Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public resize(II)Landroid/graphics/Shader;
    .locals 9

    .line 598
    new-instance v8, Landroid/graphics/LinearGradient;

    int-to-float v3, p1

    int-to-float v4, p2

    const/4 p1, 0x4

    new-array v5, p1, [I

    iget-object p2, p0, Lcom/amazon/nwstd/toc/TOCListController$1;->this$0:Lcom/amazon/nwstd/toc/TOCListController;

    iget-object p2, p2, Lcom/amazon/nwstd/toc/TOCListController;->mContext:Landroid/content/Context;

    .line 601
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/newsstand/core/R$color;->toc_divider_left_gradient_start_color:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v0, 0x0

    aput p2, v5, v0

    iget-object p2, p0, Lcom/amazon/nwstd/toc/TOCListController$1;->this$0:Lcom/amazon/nwstd/toc/TOCListController;

    iget-object p2, p2, Lcom/amazon/nwstd/toc/TOCListController;->mContext:Landroid/content/Context;

    .line 602
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/newsstand/core/R$color;->toc_divider_left_gradient_end_color:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v1, 0x1

    aput p2, v5, v1

    iget-object p2, p0, Lcom/amazon/nwstd/toc/TOCListController$1;->this$0:Lcom/amazon/nwstd/toc/TOCListController;

    iget-object p2, p2, Lcom/amazon/nwstd/toc/TOCListController;->mContext:Landroid/content/Context;

    .line 603
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v2, Lcom/amazon/kindle/newsstand/core/R$color;->toc_divider_right_gradient_start_color:I

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v2, 0x2

    aput p2, v5, v2

    iget-object p2, p0, Lcom/amazon/nwstd/toc/TOCListController$1;->this$0:Lcom/amazon/nwstd/toc/TOCListController;

    iget-object p2, p2, Lcom/amazon/nwstd/toc/TOCListController;->mContext:Landroid/content/Context;

    .line 604
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v6, Lcom/amazon/kindle/newsstand/core/R$color;->toc_divider_right_gradient_end_color:I

    invoke-virtual {p2, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    const/4 v6, 0x3

    aput p2, v5, v6

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput p2, p1, v0

    iget-object p2, p0, Lcom/amazon/nwstd/toc/TOCListController$1;->this$0:Lcom/amazon/nwstd/toc/TOCListController;

    iget-object p2, p2, Lcom/amazon/nwstd/toc/TOCListController;->mContext:Landroid/content/Context;

    .line 608
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/newsstand/core/R$integer;->toc_divider_left_gradient_percentage_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p2, v0

    aput p2, p1, v1

    iget-object p2, p0, Lcom/amazon/nwstd/toc/TOCListController$1;->this$0:Lcom/amazon/nwstd/toc/TOCListController;

    iget-object p2, p2, Lcom/amazon/nwstd/toc/TOCListController;->mContext:Landroid/content/Context;

    .line 609
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/newsstand/core/R$integer;->toc_divider_right_gradient_percentage_size:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p2, v0

    aput p2, p1, v2

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, p1, v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    return-object v8
.end method
