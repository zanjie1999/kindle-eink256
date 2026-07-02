.class public Lcom/amazon/nwstd/toc/ReplicaTOCHeader;
.super Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsHeader;
.source "ReplicaTOCHeader.java"


# instance fields
.field private final authorString:Ljava/lang/String;

.field private final titleString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractTableOfContentsHeader;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/amazon/nwstd/toc/ReplicaTOCHeader;->titleString:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/amazon/nwstd/toc/ReplicaTOCHeader;->authorString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic getAuthorString(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/ReplicaTOCHeader;->getAuthorString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAuthorString(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p1, p0, Lcom/amazon/nwstd/toc/ReplicaTOCHeader;->authorString:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method

.method public bridge synthetic getTitleString(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/toc/ReplicaTOCHeader;->getTitleString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitleString(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p1, p0, Lcom/amazon/nwstd/toc/ReplicaTOCHeader;->titleString:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    return-object p1
.end method
