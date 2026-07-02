.class Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CloseCollectionRequest;
.super Ljava/lang/Object;
.source "PdfRendererImplementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseCollectionRequest"
.end annotation


# instance fields
.field collection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfTileCollection;)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfRendererImplementation$CloseCollectionRequest;->collection:Lcom/amazon/android/docviewer/pdf/PdfTileCollection;

    return-void
.end method
