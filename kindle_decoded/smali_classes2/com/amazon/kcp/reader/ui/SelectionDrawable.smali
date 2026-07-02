.class Lcom/amazon/kcp/reader/ui/SelectionDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SelectionDrawable.java"


# static fields
.field private static final END_HANDLE:I = 0x1

.field private static final START_HANDLE:I


# instance fields
.field private final anchorBitmap:Landroid/graphics/Bitmap;

.field private anchorPaint:Landroid/graphics/Paint;

.field private areHandlesVisible:Z

.field private defaultSelectionPaint:Landroid/graphics/Paint;

.field private endHandleBitmap:Landroid/graphics/Bitmap;

.field private fontSize:I

.field gridDeviceAnchors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field private handlePaint:Landroid/graphics/Paint;

.field private horizontalOffsets:[I

.field isEndHandleVisible:Z

.field isHorizontalWriting:Z

.field isStartHandleVisible:Z

.field private selectionOffset:Landroid/graphics/Point;

.field protected selectionRectangles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field selectionType:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

.field private shouldDrawHandles:Z

.field private startHandleBitmap:Landroid/graphics/Bitmap;

.field private verticalOffsets:[I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 66
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 44
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->horizontalOffsets:[I

    new-array v0, v0, [I

    .line 45
    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->verticalOffsets:[I

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->gridDeviceAnchors:Ljava/util/List;

    const/4 v1, 0x1

    .line 57
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->isHorizontalWriting:Z

    .line 62
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->isStartHandleVisible:Z

    .line 63
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->isEndHandleVisible:Z

    .line 64
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->shouldDrawHandles:Z

    .line 67
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->defaultSelectionPaint:Landroid/graphics/Paint;

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$color;->selection_default:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->defaultSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->handlePaint:Landroid/graphics/Paint;

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$color;->selection_handle:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 75
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->anchorPaint:Landroid/graphics/Paint;

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$color;->selection_anchor:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->anchorPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 79
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->selectionRectangles:Ljava/util/Vector;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$drawable;->graphic_selection_anchor:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->anchorBitmap:Landroid/graphics/Bitmap;

    const/4 p1, 0x0

    .line 82
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->areHandlesVisible:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private drawAnchors(Landroid/graphics/Canvas;)V
    .locals 5

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->gridDeviceAnchors:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 147
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 148
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->anchorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 149
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->anchorBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    .line 150
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->anchorBitmap:Landroid/graphics/Bitmap;

    int-to-float v2, v2

    int-to-float v1, v1

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->anchorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawHandle(Landroid/graphics/Canvas;Z)V
    .locals 5

    .line 175
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->getHandleRectangle(Z)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 179
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->isHorizontalWriting:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 180
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->startHandleBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->endHandleBitmap:Landroid/graphics/Bitmap;

    :goto_0
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    const/4 v3, 0x0

    invoke-virtual {p1, p2, v1, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 181
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->areHandlesVisible:Z

    goto :goto_2

    .line 183
    :cond_1
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    .line 185
    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    if-eqz p2, :cond_2

    .line 187
    iget p2, v0, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 188
    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-virtual {v1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 190
    :cond_2
    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    invoke-virtual {v1, p2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 191
    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 194
    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 195
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 196
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->areHandlesVisible:Z

    :cond_3
    :goto_2
    return-void
.end method

.method private drawSelectionRectangles(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->areHandlesVisible:Z

    .line 127
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->selectionRectangles:Ljava/util/Vector;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 130
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->selectionRectangles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 131
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->defaultSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 135
    :cond_0
    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->TEXT:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->selectionType:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->shouldDrawHandles:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 136
    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->drawHandle(Landroid/graphics/Canvas;Z)V

    .line 137
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->drawHandle(Landroid/graphics/Canvas;Z)V

    goto :goto_1

    .line 138
    :cond_1
    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->selectionType:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->drawAnchors(Landroid/graphics/Canvas;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private getInlineSelectionHandleRectangle(Z)Landroid/graphics/Rect;
    .locals 4

    .line 231
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->selectionRectangles:Ljava/util/Vector;

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 240
    :goto_0
    iget v1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->fontSize:I

    if-lez v1, :cond_1

    .line 241
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->handlePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    .line 242
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_1

    .line 246
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    :goto_1
    mul-int/lit8 v2, v1, 0x3

    .line 250
    div-int/lit8 v2, v2, 0x7

    if-eqz p1, :cond_3

    .line 259
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->isHorizontalWriting:Z

    if-eqz p1, :cond_2

    .line 260
    new-instance p1, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v2, v3, v2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    invoke-direct {p1, v2, v0, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 262
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int v1, v3, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v2, v0, v2

    invoke-direct {p1, v1, v2, v3, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 265
    :cond_3
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->isHorizontalWriting:Z

    if-eqz p1, :cond_4

    .line 270
    new-instance p1, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, v0, v1

    add-int/2addr v2, v3

    invoke-direct {p1, v3, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1

    .line 272
    :cond_4
    new-instance p1, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v3

    add-int/2addr v2, v0

    invoke-direct {p1, v3, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p1
.end method

.method private getSelectionHandleRectangle(Z)Landroid/graphics/Rect;
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->selectionRectangles:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 214
    invoke-virtual {v0}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 215
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->horizontalOffsets:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    .line 216
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->verticalOffsets:[I

    aget v1, v2, v1

    .line 217
    iget v2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v0

    .line 218
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->horizontalOffsets:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    .line 222
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->verticalOffsets:[I

    aget v1, v2, v1

    .line 223
    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    .line 224
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    sub-int/2addr p1, v1

    .line 227
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->selectionOffset:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    add-int/2addr v3, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    add-int/2addr v1, p1

    invoke-direct {v0, v2, p1, v3, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method areHandlesVisible()Z
    .locals 1

    .line 328
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->areHandlesVisible:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 122
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->drawSelectionRectangles(Landroid/graphics/Canvas;)V

    return-void
.end method

.method getHandleRectangle(Z)Landroid/graphics/Rect;
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->selectionRectangles:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 283
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->isStartHandleVisible:Z

    if-eqz v0, :cond_2

    :cond_1
    if-nez p1, :cond_3

    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->isEndHandleVisible:Z

    if-nez v0, :cond_3

    :cond_2
    return-object v1

    .line 287
    :cond_3
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->isHorizontalWriting:Z

    if-eqz v0, :cond_4

    .line 288
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->getSelectionHandleRectangle(Z)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    .line 290
    :cond_4
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->getInlineSelectionHandleRectangle(Z)Landroid/graphics/Rect;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_0
    return-object v1
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method initialize(Landroid/content/res/Resources;ZLandroid/graphics/Point;)V
    .locals 3

    .line 88
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x0

    .line 89
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-eqz p2, :cond_0

    .line 92
    sget p2, Lcom/amazon/kindle/krl/R$drawable;->ic_text_selection_handle_left_dark:I

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->startHandleBitmap:Landroid/graphics/Bitmap;

    .line 93
    sget p2, Lcom/amazon/kindle/krl/R$drawable;->ic_text_selection_handle_right_dark:I

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->endHandleBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 95
    :cond_0
    sget p2, Lcom/amazon/kindle/krl/R$drawable;->ic_text_selection_handle_left_light:I

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->startHandleBitmap:Landroid/graphics/Bitmap;

    .line 96
    sget p2, Lcom/amazon/kindle/krl/R$drawable;->ic_text_selection_handle_right_light:I

    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-static {p2}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->endHandleBitmap:Landroid/graphics/Bitmap;

    .line 99
    :goto_0
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->horizontalOffsets:[I

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->selection_handle_left_horizontal_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    aput v0, p2, v1

    .line 100
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->horizontalOffsets:[I

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->selection_handle_right_horizontal_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v2, 0x1

    aput v0, p2, v2

    .line 101
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->verticalOffsets:[I

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->selection_handle_left_vertical_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    aput v0, p2, v1

    .line 102
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->verticalOffsets:[I

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->selection_handle_right_vertical_offset:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    aput p1, p2, v2

    .line 104
    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->selectionOffset:Landroid/graphics/Point;

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setFontSize(I)V
    .locals 1

    .line 295
    iput p1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->fontSize:I

    .line 296
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->handlePaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method setRectangleColor(I)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->defaultSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSelectionRectangles(Ljava/util/Vector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 108
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->selectionRectangles:Ljava/util/Vector;

    return-void
.end method

.method setShouldDrawHandles(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/SelectionDrawable;->shouldDrawHandles:Z

    return-void
.end method
