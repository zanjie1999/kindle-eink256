.class public Lcom/amazon/kcp/library/ui/Cover;
.super Landroid/view/View;
.source "Cover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/library/ui/Cover$CoverEffects;
    }
.end annotation


# static fields
.field private static final MAX_VARIABLE_PAGES_THICKNESS_PERCENT:F = 0.12f

.field private static final MIN_VARIABLE_PAGES_THICKNESS_PERCENT:F = 0.05f

.field private static final THICK_PAGES_THICKNESS_PERCENT:F = 0.09f

.field private static final THIN_PAGES_THICKNESS_PERCENT:F = 0.04f


# instance fields
.field private backgroundImageBounds:Landroid/graphics/Rect;

.field private coverEffects:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

.field private coverImage:Landroid/graphics/drawable/Drawable;

.field private coverImageBounds:Landroid/graphics/Rect;

.field private gravity:I

.field private lastHeight:I

.field private lastWidth:I

.field private ninePatchBackground:Landroid/graphics/drawable/NinePatchDrawable;

.field private pagesBottom:Landroid/graphics/drawable/Drawable;

.field private pagesBottomLeft:Landroid/graphics/drawable/Drawable;

.field private pagesBottomRight:Landroid/graphics/drawable/Drawable;

.field private pagesHeight:I

.field private pagesRight:Landroid/graphics/drawable/Drawable;

.field private pagesTopRight:Landroid/graphics/drawable/Drawable;

.field private pagesWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    sget-object p1, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverEffects:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    const/16 p1, 0x33

    .line 77
    iput p1, p0, Lcom/amazon/kcp/library/ui/Cover;->gravity:I

    return-void
.end method

.method private updateCoverImageAndPagesBounds(II)V
    .locals 9

    .line 269
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/library/ui/Cover;->lastWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/amazon/kcp/library/ui/Cover;->lastHeight:I

    if-ne p2, v0, :cond_0

    return-void

    .line 274
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/library/ui/Cover;->lastWidth:I

    .line 275
    iput p2, p0, Lcom/amazon/kcp/library/ui/Cover;->lastHeight:I

    .line 278
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 279
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    .line 280
    iput v1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesWidth:I

    .line 281
    iput v1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesHeight:I

    return-void

    :cond_1
    int-to-float v0, p1

    int-to-float v2, p2

    div-float v3, v0, v2

    .line 292
    iget-object v4, p0, Lcom/amazon/kcp/library/ui/Cover;->coverEffects:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    sget-object v5, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    if-eq v4, v5, :cond_5

    iget-object v4, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    iget-object v5, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    if-nez v5, :cond_2

    goto :goto_1

    .line 305
    :cond_2
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 308
    iget-object v5, p0, Lcom/amazon/kcp/library/ui/Cover;->coverEffects:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    sget-object v6, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->THIN_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    if-ne v5, v6, :cond_3

    const v5, 0x3d23d70a    # 0.04f

    goto :goto_0

    :cond_3
    const v5, 0x3db851ec    # 0.09f

    :goto_0
    cmpl-float v6, v4, v3

    if-lez v6, :cond_4

    mul-float v0, v0, v5

    float-to-int v0, v0

    int-to-float v2, v0

    div-float/2addr v2, v4

    float-to-int v2, v2

    goto :goto_2

    :cond_4
    mul-float v2, v2, v5

    float-to-int v2, v2

    int-to-float v0, v2

    mul-float v0, v0, v4

    float-to-int v0, v0

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    sub-int v4, p1, v0

    sub-int v5, p2, v2

    .line 329
    iget-object v6, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 330
    iget-object v7, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    if-gez v6, :cond_6

    move v6, v4

    :cond_6
    if-gez v7, :cond_7

    move v7, v5

    :cond_7
    int-to-float v6, v6

    int-to-float v7, v7

    div-float/2addr v6, v7

    cmpl-float v3, v6, v3

    if-lez v3, :cond_8

    int-to-float v3, v4

    div-float/2addr v3, v6

    float-to-int v5, v3

    goto :goto_3

    :cond_8
    int-to-float v3, v5

    mul-float v3, v3, v6

    float-to-int v4, v3

    .line 352
    :goto_3
    iget v3, p0, Lcom/amazon/kcp/library/ui/Cover;->gravity:I

    and-int/lit8 v6, v3, 0x70

    const/16 v7, 0x10

    const/high16 v8, 0x3f000000    # 0.5f

    if-ne v6, v7, :cond_9

    add-int v3, v5, v2

    sub-int/2addr p2, v3

    int-to-float p2, p2

    mul-float p2, p2, v8

    float-to-int p2, p2

    goto :goto_4

    :cond_9
    and-int/lit8 v3, v3, 0x70

    const/16 v6, 0x50

    if-ne v3, v6, :cond_a

    add-int v3, v5, v2

    sub-int/2addr p2, v3

    goto :goto_4

    :cond_a
    const/4 p2, 0x0

    .line 359
    :goto_4
    iget v3, p0, Lcom/amazon/kcp/library/ui/Cover;->gravity:I

    and-int/lit8 v3, v3, 0x7

    const/4 v6, 0x1

    if-ne v3, v6, :cond_b

    add-int v1, v4, v0

    sub-int/2addr p1, v1

    int-to-float p1, p1

    mul-float p1, p1, v8

    float-to-int v1, p1

    .line 362
    :cond_b
    new-instance p1, Landroid/graphics/Rect;

    add-int/2addr v4, v1

    add-int/2addr v5, p2

    invoke-direct {p1, v1, p2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    .line 364
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverEffects:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    sget-object p2, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->NO_PAGES_WITH_DROP_SHADOW:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    if-ne p1, p2, :cond_c

    .line 365
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 366
    iget-object p2, p0, Lcom/amazon/kcp/library/ui/Cover;->ninePatchBackground:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz p2, :cond_c

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/NinePatchDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 367
    new-instance p2, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    invoke-direct {p2, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p2, p0, Lcom/amazon/kcp/library/ui/Cover;->backgroundImageBounds:Landroid/graphics/Rect;

    .line 368
    iget-object p2, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v1, p1}, Landroid/graphics/Rect;->inset(II)V

    .line 371
    :cond_c
    iput v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesWidth:I

    .line 372
    iput v2, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesHeight:I

    return-void
.end method


# virtual methods
.method public getCoverImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getCoverImageBounds(IIZ)Landroid/graphics/Rect;
    .locals 0

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/ui/Cover;->updateCoverImageAndPagesBounds(II)V

    if-eqz p3, :cond_0

    .line 183
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    invoke-direct {p1, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 184
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget p3, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesWidth:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 185
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p3, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesHeight:I

    add-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    return-object p1
.end method

.method public getGravity()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/amazon/kcp/library/ui/Cover;->gravity:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 222
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 223
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/library/ui/Cover;->updateCoverImageAndPagesBounds(II)V

    .line 230
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverEffects:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->NO_PAGES_WITH_DROP_SHADOW:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->ninePatchBackground:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->backgroundImageBounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    .line 232
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 233
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->ninePatchBackground:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverEffects:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    sget-object v1, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    if-eq v0, v1, :cond_2

    .line 236
    iget v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesWidth:I

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    mul-int v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 237
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesWidth:I

    add-int/2addr v4, v3

    add-int v5, v2, v0

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 238
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 239
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 241
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    iget v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesWidth:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v3, v4, v0, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 242
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 243
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 245
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesWidth:I

    add-int/2addr v3, v2

    iget v4, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesHeight:I

    add-int/2addr v4, v1

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 246
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 247
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 249
    iget v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesHeight:I

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    mul-int v0, v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 250
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    add-int v4, v3, v0

    iget v5, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesHeight:I

    add-int/2addr v5, v2

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 251
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 252
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 254
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesHeight:I

    add-int/2addr v4, v0

    invoke-direct {v1, v3, v0, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 255
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 256
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 258
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 259
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .line 194
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 195
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 196
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 197
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 198
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    .line 199
    :goto_1
    iget-object v4, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    if-gez v4, :cond_2

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    :cond_3
    :goto_2
    if-eqz v2, :cond_9

    if-eqz v3, :cond_9

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_4

    if-ne v1, v4, :cond_4

    goto :goto_7

    :cond_4
    if-nez v0, :cond_5

    move v5, v2

    goto :goto_3

    :cond_5
    move v5, p1

    :goto_3
    if-nez v1, :cond_6

    move v6, v3

    goto :goto_4

    :cond_6
    move v6, p2

    :goto_4
    int-to-float v5, v5

    int-to-float v2, v2

    div-float/2addr v5, v2

    int-to-float v6, v6

    int-to-float v3, v3

    div-float/2addr v6, v3

    .line 212
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    if-ne v0, v4, :cond_7

    goto :goto_5

    :cond_7
    mul-float v2, v2, v5

    float-to-int p1, v2

    :goto_5
    if-ne v1, v4, :cond_8

    goto :goto_6

    :cond_8
    mul-float v3, v3, v5

    float-to-int p2, v3

    .line 217
    :goto_6
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    .line 203
    :cond_9
    :goto_7
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setCoverEffects(Lcom/amazon/kcp/library/ui/Cover$CoverEffects;)V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverEffects:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    if-ne p1, v0, :cond_0

    return-void

    .line 116
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverEffects:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    .line 117
    sget-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->THICK_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    sget-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->THIN_DENSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 124
    :cond_1
    sget-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->THICK_SPARSE_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    if-ne p1, v0, :cond_2

    .line 125
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->news_extrude_stretch_right:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    .line 126
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->news_extrude_top_right:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->news_extrude_stretch_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->news_extrude_bottom_left:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    .line 129
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->news_extrude_bottom_right:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomRight:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 130
    :cond_2
    sget-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->NO_PAGES:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    if-eq p1, v0, :cond_3

    sget-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->NO_PAGES_WITH_DROP_SHADOW:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    if-ne p1, v0, :cond_5

    .line 132
    :cond_3
    iput-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    .line 133
    iput-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    .line 134
    iput-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    .line 135
    iput-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    .line 136
    iput-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomRight:Landroid/graphics/drawable/Drawable;

    .line 137
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverEffects:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    sget-object v0, Lcom/amazon/kcp/library/ui/Cover$CoverEffects;->NO_PAGES_WITH_DROP_SHADOW:Lcom/amazon/kcp/library/ui/Cover$CoverEffects;

    if-ne p1, v0, :cond_5

    .line 138
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->bg_book_fade:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/NinePatchDrawable;

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->ninePatchBackground:Landroid/graphics/drawable/NinePatchDrawable;

    goto :goto_1

    .line 119
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->extrude_stretch_right:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->extrude_top_right:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->extrude_stretch_bottom:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    .line 122
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->extrude_bottom_left:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    .line 123
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->extrude_bottom_right:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomRight:Landroid/graphics/drawable/Drawable;

    .line 143
    :cond_5
    :goto_1
    iput-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public setCoverImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 100
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    .line 101
    iput-object v1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    .line 102
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 103
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setGravity(I)V
    .locals 1

    .line 162
    iget v0, p0, Lcom/amazon/kcp/library/ui/Cover;->gravity:I

    if-ne p1, v0, :cond_0

    return-void

    .line 166
    :cond_0
    iput p1, p0, Lcom/amazon/kcp/library/ui/Cover;->gravity:I

    const/4 p1, 0x0

    .line 169
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImageBounds:Landroid/graphics/Rect;

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void
.end method

.method public unbindDrawables()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesRight:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 383
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesTopRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 384
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 385
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomLeft:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 386
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->pagesBottomRight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->coverImage:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 389
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 391
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/Cover;->ninePatchBackground:Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v0, :cond_2

    .line 392
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_2
    return-void
.end method
