.class public final Lcom/amazon/android/docviewer/mobi/BookPageDrawable;
.super Lcom/amazon/android/docviewer/mobi/PageDrawable;
.source "BookPageDrawable.java"


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;ZZZ)V
    .locals 0

    .line 17
    invoke-direct/range {p0 .. p5}, Lcom/amazon/android/docviewer/mobi/PageDrawable;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;ZZZ)V

    return-void
.end method


# virtual methods
.method protected getBottomOffsetForFooter()I
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getPageMarginal()Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getBottomOffsetForFooter()I

    move-result v0

    return v0
.end method

.method protected getFooterText(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;Landroid/graphics/Paint;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 53
    :cond_0
    iget p1, p1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->begin:I

    .line 54
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getPageMarginal()Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getFooterText(ILandroid/graphics/Paint;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getHeaderText(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;Landroid/graphics/Paint;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getPageMarginal()Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getHeaderText(Landroid/graphics/Paint;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected getPageAuthor()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getPageMarginal()Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getAuthor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getPageTitle()Ljava/lang/String;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getPageMarginal()Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getTopOffsetForTitle()I
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getPageMarginal()Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getTopOffsetForTitle()I

    move-result v0

    return v0
.end method
