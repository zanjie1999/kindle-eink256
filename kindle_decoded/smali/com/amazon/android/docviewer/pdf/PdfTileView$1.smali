.class Lcom/amazon/android/docviewer/pdf/PdfTileView$1;
.super Ljava/lang/Object;
.source "PdfTileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/pdf/PdfTileView;->execute(Landroid/graphics/RectF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfTileView;

.field final synthetic val$invalidateRect:Landroid/graphics/RectF;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfTileView;Landroid/graphics/RectF;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfTileView;

    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$1;->val$invalidateRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 153
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfTileView;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->access$000(Lcom/amazon/android/docviewer/pdf/PdfTileView;)Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfTileView;

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->access$000(Lcom/amazon/android/docviewer/pdf/PdfTileView;)Lcom/amazon/android/docviewer/pdf/PdfTileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfTileManager;->isFlinging()Z

    move-result v0

    if-nez v0, :cond_2

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$1;->val$invalidateRect:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfTileView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfTileView;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$1;->val$invalidateRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    .line 158
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$1;->val$invalidateRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    .line 159
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$1;->val$invalidateRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v4

    .line 160
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 157
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/view/View;->invalidate(IIII)V

    :cond_2
    :goto_0
    return-void
.end method
