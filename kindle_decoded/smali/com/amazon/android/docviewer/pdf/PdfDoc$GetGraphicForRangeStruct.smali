.class Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;
.super Ljava/lang/Object;
.source "PdfDoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/PdfDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetGraphicForRangeStruct"
.end annotation


# instance fields
.field public renderHeight:I

.field public renderWidth:I

.field public startX:I

.field public startY:I

.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfDoc;

.field public xZoomScale:F

.field public yZoomScale:F


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfDoc;IIIIFF)V
    .locals 0

    .line 1447
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->this$0:Lcom/amazon/android/docviewer/pdf/PdfDoc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1448
    iput p2, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->renderWidth:I

    .line 1449
    iput p3, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->renderHeight:I

    .line 1450
    iput p4, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->startX:I

    .line 1451
    iput p5, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->startY:I

    .line 1452
    iput p6, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->xZoomScale:F

    .line 1453
    iput p7, p0, Lcom/amazon/android/docviewer/pdf/PdfDoc$GetGraphicForRangeStruct;->yZoomScale:F

    return-void
.end method
