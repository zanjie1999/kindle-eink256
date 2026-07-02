.class public Lcom/amazon/nwstd/toc/ReplicaTOCEntry;
.super Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;
.source "ReplicaTOCEntry.java"


# instance fields
.field private description:Ljava/lang/String;

.field private dividerLayout:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

.field private pageImage:Landroid/graphics/Bitmap;

.field private position:I

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILandroid/graphics/Bitmap;Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;->title:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;->description:Ljava/lang/String;

    .line 38
    iput p3, p0, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;->position:I

    .line 39
    iput-object p4, p0, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;->pageImage:Landroid/graphics/Bitmap;

    .line 40
    iput-object p5, p0, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;->dividerLayout:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    return-void
.end method


# virtual methods
.method public bridge synthetic getDescription(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 55
    iget-object p1, p0, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;->description:Ljava/lang/String;

    return-object p1
.end method

.method public getDividerLayout()Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;->dividerLayout:Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsEntryEx$DividerLayout;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getOnClickListener()Landroid/view/View$OnClickListener;
    .locals 1

    .line 80
    new-instance v0, Lcom/amazon/nwstd/toc/ReplicaTOCEntry$1;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/toc/ReplicaTOCEntry$1;-><init>(Lcom/amazon/nwstd/toc/ReplicaTOCEntry;)V

    return-object v0
.end method

.method public getPageImage(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;->pageImage:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public getPosition()Lcom/amazon/kindle/krx/reader/IPosition;
    .locals 2

    .line 60
    new-instance v0, Lcom/amazon/nwstd/toc/IntPositionImpl;

    iget v1, p0, Lcom/amazon/nwstd/toc/ReplicaTOCEntry;->position:I

    invoke-direct {v0, v1}, Lcom/amazon/nwstd/toc/IntPositionImpl;-><init>(I)V

    return-object v0
.end method
