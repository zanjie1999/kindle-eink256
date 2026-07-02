.class Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;
.super Ljava/lang/Object;
.source "PdfTileView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/PdfTileView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PdfTileViewResource"
.end annotation


# instance fields
.field private final bytesPerPixel:I

.field private final dividerPerScreen:I

.field private final workingSpaceScreens:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->pdf_tile_divider_per_screen:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;->dividerPerScreen:I

    .line 606
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->pdf_tile_bytes_per_pixel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;->bytesPerPixel:I

    .line 607
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$integer;->pdf_tile_working_space_screens:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;->workingSpaceScreens:I

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;)I
    .locals 0

    .line 587
    iget p0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;->bytesPerPixel:I

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;)I
    .locals 0

    .line 587
    iget p0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;->workingSpaceScreens:I

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;)I
    .locals 0

    .line 587
    iget p0, p0, Lcom/amazon/android/docviewer/pdf/PdfTileView$PdfTileViewResource;->dividerPerScreen:I

    return p0
.end method
