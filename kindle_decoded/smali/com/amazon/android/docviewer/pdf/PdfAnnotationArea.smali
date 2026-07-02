.class final Lcom/amazon/android/docviewer/pdf/PdfAnnotationArea;
.super Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;
.source "PdfAnnotationArea.java"


# direct methods
.method constructor <init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/util/List;)V
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

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationArea;-><init>(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/util/List;)V

    return-void
.end method
