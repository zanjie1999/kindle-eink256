.class Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$RecycleRequest;
.super Ljava/lang/Object;
.source "PdfRendererImplementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RecycleRequest"
.end annotation


# instance fields
.field collection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

.field zoomLevel:I


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;I)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$RecycleRequest;->collection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    .line 192
    iput p2, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$RecycleRequest;->zoomLevel:I

    return-void
.end method
