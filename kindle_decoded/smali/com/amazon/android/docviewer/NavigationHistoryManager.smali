.class public Lcom/amazon/android/docviewer/NavigationHistoryManager;
.super Ljava/lang/Object;
.source "NavigationHistoryManager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/INavigationHistoryManager;


# instance fields
.field private m_navigationHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/amazon/android/docviewer/HistoryPoint;",
            ">;"
        }
    .end annotation
.end field

.field private m_periodicalNavigator:Lcom/amazon/android/docviewer/IPeriodicalNavigator;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/IPeriodicalNavigator;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/NavigationHistoryManager;->m_navigationHistory:Ljava/util/Stack;

    .line 21
    iput-object p1, p0, Lcom/amazon/android/docviewer/NavigationHistoryManager;->m_periodicalNavigator:Lcom/amazon/android/docviewer/IPeriodicalNavigator;

    return-void
.end method


# virtual methods
.method public addImageViewHistoryPoint(Lcom/amazon/android/docviewer/mapper/PageIndex;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 32
    iget-object v0, p0, Lcom/amazon/android/docviewer/NavigationHistoryManager;->m_navigationHistory:Ljava/util/Stack;

    new-instance v1, Lcom/amazon/android/docviewer/HistoryPoint;

    sget-object v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->ImageView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    invoke-direct {v1, v2, p1}, Lcom/amazon/android/docviewer/HistoryPoint;-><init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;Lcom/amazon/android/docviewer/mapper/PageIndex;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public addTextViewHistoryPoint(I)V
    .locals 4

    .line 26
    iget-object v0, p0, Lcom/amazon/android/docviewer/NavigationHistoryManager;->m_navigationHistory:Ljava/util/Stack;

    new-instance v1, Lcom/amazon/android/docviewer/HistoryPoint;

    sget-object v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    new-instance v3, Lcom/amazon/android/docviewer/mapper/PageIndex;

    invoke-direct {v3, p1}, Lcom/amazon/android/docviewer/mapper/PageIndex;-><init>(I)V

    invoke-direct {v1, v2, v3}, Lcom/amazon/android/docviewer/HistoryPoint;-><init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;Lcom/amazon/android/docviewer/mapper/PageIndex;)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public clearBackHistory()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/android/docviewer/NavigationHistoryManager;->m_navigationHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->clear()V

    return-void
.end method

.method public getHistoryPoints()Ljava/util/Stack;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Stack<",
            "Lcom/amazon/android/docviewer/HistoryPoint;",
            ">;"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/amazon/android/docviewer/NavigationHistoryManager;->m_navigationHistory:Ljava/util/Stack;

    return-object v0
.end method

.method public isBackAvailable()Z
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/android/docviewer/NavigationHistoryManager;->m_navigationHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public navigateBack()V
    .locals 4

    .line 39
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/NavigationHistoryManager;->isBackAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    iget-object v0, p0, Lcom/amazon/android/docviewer/NavigationHistoryManager;->m_navigationHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/HistoryPoint;

    .line 42
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/HistoryPoint;->getViewMode()Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    move-result-object v1

    sget-object v2, Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;->TextView:Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer$ViewMode;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 44
    iget-object v1, p0, Lcom/amazon/android/docviewer/NavigationHistoryManager;->m_periodicalNavigator:Lcom/amazon/android/docviewer/IPeriodicalNavigator;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/HistoryPoint;->getPosition()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mapper/PageIndex;->getIndex()I

    move-result v0

    invoke-interface {v1, v0, v3, v3}, Lcom/amazon/android/docviewer/IPeriodicalNavigator;->openTextViewAt(IZZ)V

    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/NavigationHistoryManager;->m_periodicalNavigator:Lcom/amazon/android/docviewer/IPeriodicalNavigator;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/HistoryPoint;->getPosition()Lcom/amazon/android/docviewer/mapper/PageIndex;

    move-result-object v0

    invoke-interface {v1, v0, v3, v3}, Lcom/amazon/android/docviewer/IPeriodicalNavigator;->openImageViewAt(Lcom/amazon/android/docviewer/mapper/PageIndex;ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHistoryPoints(Ljava/util/Stack;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Stack<",
            "Lcom/amazon/android/docviewer/HistoryPoint;",
            ">;)V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/amazon/android/docviewer/NavigationHistoryManager;->m_navigationHistory:Ljava/util/Stack;

    return-void
.end method
