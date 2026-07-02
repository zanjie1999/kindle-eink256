.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;
.super Lcom/amazon/kcp/reader/ui/ReaderLayout$ReaderLocationSeekbarListener;
.source "PeriodicalLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeriodicalLocationSeekbarListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 1476
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout$ReaderLocationSeekbarListener;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$1;)V
    .locals 0

    .line 1476
    invoke-direct {p0, p1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;-><init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V

    return-void
.end method


# virtual methods
.method public getLocationText()Ljava/lang/String;
    .locals 7

    .line 1512
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$700(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1513
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$800(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getSeekPosition()I

    move-result v0

    .line 1515
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$900(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->getMaxPossibleSeekPosition()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 1516
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$1000(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)I

    move-result v0

    .line 1518
    iget-object v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$1100(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)I

    move-result v1

    .line 1521
    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/newsstand/core/R$string;->article_page_runner:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public isLocationInfoAvailable()Z
    .locals 5

    .line 1487
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    return v2

    .line 1491
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->getDocViewer()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    .line 1492
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getLastArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v1

    if-nez v1, :cond_1

    return v2

    .line 1497
    :cond_1
    invoke-virtual {v0, v1, v2}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getPageNumberMap(Lcom/amazon/android/docviewer/ITOCItem;Z)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1498
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$400(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1499
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v3}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->isNeutronPhase1Enabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1500
    iget-object v3, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getLastArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v4

    invoke-static {v3, v0, v4}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$500(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Lcom/amazon/android/docviewer/KindleTOCLocator;Lcom/amazon/android/docviewer/ITOCItem;)V

    goto :goto_0

    .line 1502
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$PeriodicalLocationSeekbarListener;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-static {v0}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->access$600(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setMaxPossibleSeekPosition(I)V

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
