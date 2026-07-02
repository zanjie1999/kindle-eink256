.class public Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;
.super Ljava/lang/Object;
.source "DefaultDocViewerAnnotationArea.java"


# instance fields
.field private final m_annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

.field private final m_boundingRectangle:Landroid/graphics/Rect;

.field private final m_rectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->m_annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 23
    iput-object p2, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->m_rectangles:Ljava/util/List;

    .line 24
    invoke-static {p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->calculateBoundingRectangle(Ljava/util/List;)Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->m_boundingRectangle:Landroid/graphics/Rect;

    return-void
.end method

.method private static calculateBoundingRectangle(Ljava/util/List;)Landroid/graphics/Rect;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)",
            "Landroid/graphics/Rect;"
        }
    .end annotation

    .line 29
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 30
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 31
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 32
    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return-object v0
.end method

.method private static contains(Landroid/graphics/Rect;III)Z
    .locals 1

    .line 50
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p3

    if-le p1, v0, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, p3

    if-ge p1, v0, :cond_0

    iget p1, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    if-le p2, p1, :cond_0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p3

    if-ge p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public contains(III)Z
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->m_boundingRectangle:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    invoke-static {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->contains(Landroid/graphics/Rect;III)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->m_rectangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->m_rectangles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 71
    invoke-static {v2, p1, p2, p3}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->contains(Landroid/graphics/Rect;III)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->m_annotation:Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    return-object v0
.end method

.method public getBoundingRect()Landroid/graphics/Rect;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->m_boundingRectangle:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getRectangles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;->m_rectangles:Ljava/util/List;

    return-object v0
.end method
