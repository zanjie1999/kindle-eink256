.class public Lcom/amazon/krf/platform/KRFViewAdapterFragment;
.super Lcom/amazon/krf/platform/KRFFragmentBase;
.source "KRFViewAdapterFragment.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "KRFViewAdapterFragment"


# instance fields
.field private mBook:Lcom/amazon/krf/platform/KRFBook;

.field private mDeferredToViewCreatedTasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcom/amazon/krf/platform/KRFView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFFragmentBase;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mDeferredToViewCreatedTasks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->addNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z

    move-result p1

    return p1
.end method

.method public addSelectionChangeListener(Lcom/amazon/krf/platform/SelectionChangeListener;)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->addSelectionChangeListener(Lcom/amazon/krf/platform/SelectionChangeListener;)V

    return-void
.end method

.method public canGoToCoverPage()Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->canGoToCoverPage()Z

    move-result v0

    return v0
.end method

.method public canGoToNextPage()Z
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->canGoToNextPage()Z

    move-result v0

    return v0
.end method

.method public canGoToPreviousPage()Z
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->canGoToPreviousPage()Z

    move-result v0

    return v0
.end method

.method public canGoToTableOfContentsPage()Z
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->canGoToTableOfContentsPage()Z

    move-result v0

    return v0
.end method

.method public clearSelection()Z
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->clearSelection()Z

    move-result v0

    return v0
.end method

.method public dispose()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->dispose()V

    return-void
.end method

.method public getHeight()I
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public getHistoryManager()Lcom/amazon/krf/platform/HistoryManager;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getHistoryManager()Lcom/amazon/krf/platform/HistoryManager;

    move-result-object v0

    return-object v0
.end method

.method public getPageElements()[Lcom/amazon/krf/platform/element/PageElement;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getPageElements()[Lcom/amazon/krf/platform/element/PageElement;

    move-result-object v0

    return-object v0
.end method

.method public getPositionRange()Lcom/amazon/krf/platform/PositionRange;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->getPositionRange()Lcom/amazon/krf/platform/PositionRange;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method public goToCoverPage()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->goToCoverPage()Z

    move-result v0

    return v0
.end method

.method public goToFirstPage()Z
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->goToFirstPage()Z

    move-result v0

    return v0
.end method

.method public goToLastPage()Z
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->goToLastPage()Z

    move-result v0

    return v0
.end method

.method public goToLocation(J)Z
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/krf/platform/KRFView;->goToLocation(J)Z

    move-result p1

    return p1
.end method

.method public goToNextPage()Z
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->goToNextPage()Z

    move-result v0

    return v0
.end method

.method public goToPercent(D)Z
    .locals 1

    .line 285
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/krf/platform/KRFView;->goToPercent(D)Z

    move-result p1

    return p1
.end method

.method public goToPosition(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->goToPosition(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPositionAsync(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->goToPositionAsync(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPositionOnLoad(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->goToPositionOnLoad(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPositionOnLoadAsync(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->goToPositionOnLoadAsync(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPreviousPage()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->goToPreviousPage()Z

    move-result v0

    return v0
.end method

.method public goToStartReadingPage()Z
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->goToStartReadingPage()Z

    move-result v0

    return v0
.end method

.method public goToTableOfContentsPage()Z
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->goToTableOfContentsPage()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 36
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/krf/platform/KRF;->createView(Landroid/content/Context;)Lcom/amazon/krf/platform/KRFView;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;
    :try_end_0
    .catch Lcom/amazon/krf/exception/KRFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "KRFViewAdapterFragment"

    const-string p3, "Failed to create KRF BookView. "

    .line 38
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 41
    :goto_0
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mDeferredToViewCreatedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mDeferredToViewCreatedTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mDeferredToViewCreatedTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 53
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method public removeNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->removeNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z

    move-result p1

    return p1
.end method

.method public setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/krf/platform/KRFView;->setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings;)Z
    .locals 1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/krf/platform/KRFView;->setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings;)V
    :try_end_0
    .catch Lcom/amazon/krf/exception/InvalidSettingsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string p2, "KRFViewAdapterFragment"

    const-string p3, "Failed to set book. "

    .line 73
    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return p1
.end method

.method public setContentDecorationEventListener(Lcom/amazon/krf/platform/ContentDecorationEventListener;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->setContentDecorationEventListener(Lcom/amazon/krf/platform/ContentDecorationEventListener;)V

    return-void
.end method

.method public setDefaultUIEventHandler(Lcom/amazon/krf/platform/UIEventHandler;)V
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->setDefaultUIEventHandler(Lcom/amazon/krf/platform/UIEventHandler;)V

    return-void
.end method

.method public setOrientationLockRequestListener(Lcom/amazon/krf/platform/OrientationLockRequestListener;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->setOrientationLockRequestListener(Lcom/amazon/krf/platform/OrientationLockRequestListener;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mDeferredToViewCreatedTasks:Ljava/util/ArrayList;

    new-instance v1, Lcom/amazon/krf/platform/KRFViewAdapterFragment$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/krf/platform/KRFViewAdapterFragment$1;-><init>(Lcom/amazon/krf/platform/KRFViewAdapterFragment;Lcom/amazon/krf/platform/OrientationLockRequestListener;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public setRubberbandingEnabled(Z)Z
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->setRubberbandingEnabled(Z)Z

    move-result p1

    return p1
.end method

.method public setSelectionRange(Lcom/amazon/krf/platform/PositionRange;)V
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->setSelectionRange(Lcom/amazon/krf/platform/PositionRange;)V

    return-void
.end method

.method public setSelectionRanges(Lcom/amazon/krf/platform/PositionRange;)Z
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->setSelectionRanges(Lcom/amazon/krf/platform/PositionRange;)Z

    move-result p1

    return p1
.end method

.method public setSettings(Lcom/amazon/krf/platform/ViewSettings;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/InvalidSettingsException;
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFViewAdapterFragment;->mView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFView;->setSettings(Lcom/amazon/krf/platform/ViewSettings;)V

    return-void
.end method
