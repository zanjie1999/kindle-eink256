.class public Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;
.super Ljava/lang/Object;
.source "NotebookHTMLGraphicsExporter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter$DataURIImg;
    }
.end annotation


# static fields
.field private static final DATA_URI_ENCODING:Ljava/lang/String; = "base64"

.field private static final DATA_URI_SCHEME:Ljava/lang/String; = "data:"

.field private static final DEFAULT_IMAGE_MIMETYPE:Ljava/lang/String; = "image/jpeg"


# instance fields
.field private final docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final jpegQuality:I

.field private final notebookGraphicMaxWidth:I

.field private supportsGraphics:Z


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;II)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 29
    iput p2, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;->jpegQuality:I

    .line 30
    iput p3, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;->notebookGraphicMaxWidth:I

    .line 32
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->GraphicalHighlights:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;->supportsGraphics:Z

    return-void
.end method

.method private getDataURIString(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_1

    .line 66
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 67
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iget v2, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;->jpegQuality:I

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 69
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "data:"

    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "image/jpeg"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, "base64"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public getImageDataURIFromNote(Lcom/amazon/kcp/reader/Note;)Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter$DataURIImg;
    .locals 4

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/WrappedAnnotation;->getType()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 38
    :goto_0
    iget-boolean v1, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;->supportsGraphics:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 39
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v0

    .line 40
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/Note;->getRawEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    .line 41
    iget-object v1, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget v2, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;->notebookGraphicMaxWidth:I

    const/high16 v3, 0x40800000    # 4.0f

    invoke-interface {v1, v0, p1, v2, v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getPortraitSizeForGraphic(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;IF)Landroid/graphics/Rect;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 43
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 45
    iget-object v3, p0, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3, v0, p1, v2, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getGraphicForRange(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 46
    new-instance v0, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter$DataURIImg;

    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;->getDataURIString(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v2, v1, p1}, Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter$DataURIImg;-><init>(Lcom/amazon/notebook/module/exporting/NotebookHTMLGraphicsExporter;IILjava/lang/String;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method
