.class public Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;
.super Ljava/lang/Object;
.source "IPdfRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/IPdfRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TileRequest"
.end annotation


# instance fields
.field final callback:Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;

.field final offsetX:I

.field final offsetY:I

.field final page:Lcom/amazon/android/docviewer/pdf/PdfPage;

.field final tile:Lcom/amazon/android/docviewer/pdf/PdfTile;

.field final zoomLevel:I


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfPage;Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;Lcom/amazon/android/docviewer/pdf/PdfTile;III)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p4, p0, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->offsetX:I

    .line 53
    iput p5, p0, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->offsetY:I

    .line 54
    iput-object p3, p0, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->tile:Lcom/amazon/android/docviewer/pdf/PdfTile;

    .line 55
    iput p6, p0, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->zoomLevel:I

    .line 56
    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->callback:Lcom/amazon/android/docviewer/pdf/IPdfRenderer$Callback;

    .line 57
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "P"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->page:Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->offsetX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->offsetY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":Z"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/IPdfRenderer$TileRequest;->zoomLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
