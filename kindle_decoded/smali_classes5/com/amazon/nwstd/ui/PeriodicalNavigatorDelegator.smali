.class public Lcom/amazon/nwstd/ui/PeriodicalNavigatorDelegator;
.super Ljava/lang/Object;
.source "PeriodicalNavigatorDelegator.java"

# interfaces
.implements Lcom/amazon/kcp/periodicals/ui/PeriodicalLocationSeeker$NavigatorDelegator;


# instance fields
.field private docViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

.field private periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/amazon/nwstd/ui/PeriodicalNavigatorDelegator;->docViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    .line 14
    iput-object p2, p0, Lcom/amazon/nwstd/ui/PeriodicalNavigatorDelegator;->periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    return-void
.end method


# virtual methods
.method public getArticleTitle()Ljava/lang/String;
    .locals 2

    .line 30
    iget-object v0, p0, Lcom/amazon/nwstd/ui/PeriodicalNavigatorDelegator;->docViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->getLastArticleInCurrentPage()Lcom/amazon/nwstd/toc/IArticleTOCItem;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    .line 33
    :cond_1
    invoke-interface {v0}, Lcom/amazon/android/docviewer/ITOCItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1
.end method

.method public gotoAllArticles()V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/nwstd/ui/PeriodicalNavigatorDelegator;->periodicalLayout:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->navigateToAllArticles()V

    return-void
.end method

.method public isFirstArticle()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/nwstd/ui/PeriodicalNavigatorDelegator;->docViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->isFirstArticle()Z

    move-result v0

    return v0
.end method

.method public isLastArticle()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/nwstd/ui/PeriodicalNavigatorDelegator;->docViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->getTOCLocator()Lcom/amazon/android/docviewer/KindleTOCLocator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleTOCLocator;->isLastArticle()Z

    move-result v0

    return v0
.end method

.method public navigateToNextChapter()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/nwstd/ui/PeriodicalNavigatorDelegator;->docViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->navigateToNextChapter()V

    return-void
.end method

.method public navigateToPreviousChapter()V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/nwstd/ui/PeriodicalNavigatorDelegator;->docViewer:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;->navigateToPreviousChapter()V

    return-void
.end method
