.class public Lcom/amazon/android/docviewer/graphics/BookGraphics;
.super Ljava/lang/Object;
.source "BookGraphics.java"


# instance fields
.field protected m_paint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/graphics/BookGraphics;->m_paint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public fillRect(Landroid/graphics/Canvas;IIIII)V
    .locals 9

    .line 17
    iget-object v0, p0, Lcom/amazon/android/docviewer/graphics/BookGraphics;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 18
    iget-object v1, p0, Lcom/amazon/android/docviewer/graphics/BookGraphics;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p6}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget-object p6, p0, Lcom/amazon/android/docviewer/graphics/BookGraphics;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p6}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p6

    .line 24
    iget-object v1, p0, Lcom/amazon/android/docviewer/graphics/BookGraphics;->m_paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    int-to-float v4, p2

    int-to-float v5, p3

    add-int/2addr p2, p4

    int-to-float v6, p2

    add-int/2addr p3, p5

    int-to-float v7, p3

    .line 25
    iget-object v8, p0, Lcom/amazon/android/docviewer/graphics/BookGraphics;->m_paint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 28
    iget-object p1, p0, Lcom/amazon/android/docviewer/graphics/BookGraphics;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 29
    iget-object p1, p0, Lcom/amazon/android/docviewer/graphics/BookGraphics;->m_paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
