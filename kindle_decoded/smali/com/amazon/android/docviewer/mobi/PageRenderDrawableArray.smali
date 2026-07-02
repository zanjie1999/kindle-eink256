.class public Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;
.super Ljava/lang/Object;
.source "PageRenderDrawableArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$PreviousPageUpdatedListener;,
        Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$NextPageUpdatedListener;,
        Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$CurrentPageUpdatedListener;
    }
.end annotation


# static fields
.field private static PRE_RENDER_DELAY:I

.field private static final TAG:Ljava/lang/String;

.field private static pageRenderDrawableArrayMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/docviewer/mobi/MobiDocViewer;",
            "Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field currentPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
            "Lcom/amazon/android/docviewer/mobi/MobiPage;",
            ">;"
        }
    .end annotation
.end field

.field m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

.field protected final m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

.field nextPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
            "Lcom/amazon/android/docviewer/mobi/MobiPage;",
            ">;"
        }
    .end annotation
.end field

.field private final pageRenderedEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;",
            ">;"
        }
    .end annotation
.end field

.field previousPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
            "Lcom/amazon/android/docviewer/mobi/MobiPage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    sput v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->PRE_RENDER_DELAY:I

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->pageRenderDrawableArrayMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$1;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$1;-><init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->currentPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    .line 77
    new-instance v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$2;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$2;-><init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->nextPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    .line 90
    new-instance v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$3;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$3;-><init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->previousPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    .line 104
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->pageRenderedEventListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->pageRenderedEventListeners:Ljava/util/List;

    return-object p0
.end method

.method public static getDefaultPageID()I
    .locals 1

    const v0, 0x3fffffff    # 1.9999999f

    return v0
.end method

.method static getInstance(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;
    .locals 2

    .line 138
    sget-object v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->pageRenderDrawableArrayMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 139
    sget-object v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->pageRenderDrawableArrayMap:Ljava/util/Map;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMobiDocFactory()Lcom/amazon/android/docviewer/mobi/MobiDocFactory;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amazon/android/docviewer/mobi/MobiDocFactory;->createRenderDrawableArray(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    :cond_0
    sget-object v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->pageRenderDrawableArrayMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;

    return-object p0
.end method


# virtual methods
.method deregisterPageRenderedEventListener(Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;)V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->pageRenderedEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method dispose()V
    .locals 4

    .line 151
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 152
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->dispose()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->pageRenderedEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 156
    sget-object v0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->pageRenderDrawableArrayMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected getCurrentPage()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;
    .locals 2

    .line 385
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method getCurrentPageID()I
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getPageId()I

    move-result v0

    return v0
.end method

.method getItem(I)Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;
    .locals 2

    const/4 v0, -0x1

    if-lt p1, v0, :cond_1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 163
    :cond_0
    monitor-enter p0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    add-int/2addr p1, v0

    aget-object p1, v1, p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 165
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getNextPage()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected getPreviousPage()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;
    .locals 2

    .line 389
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public handleDocViewerRefresh()V
    .locals 2

    .line 302
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getEventHandlers()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 303
    invoke-interface {v1}, Lcom/amazon/android/docviewer/IKindleDocViewerEvents;->onDocViewerRefresh()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method initialize()V
    .locals 6

    .line 113
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMobiRenderElementFactory()Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    .line 116
    new-instance v2, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    new-instance v4, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$PreviousPageUpdatedListener;

    invoke-direct {v4, p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$PreviousPageUpdatedListener;-><init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V

    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->previousPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;Lcom/amazon/android/docviewer/mobi/IPageProvider;Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    new-instance v4, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$CurrentPageUpdatedListener;

    invoke-direct {v4, p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$CurrentPageUpdatedListener;-><init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V

    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->currentPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;Lcom/amazon/android/docviewer/mobi/IPageProvider;Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;)V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v2, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    new-instance v4, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$NextPageUpdatedListener;

    invoke-direct {v4, p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$NextPageUpdatedListener;-><init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V

    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->nextPageProvider:Lcom/amazon/android/docviewer/mobi/IPageProvider;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;Lcom/amazon/android/docviewer/mobi/IPageProvider;Lcom/amazon/android/docviewer/mobi/IMobiRenderElementFactory;)V

    const/4 v0, 0x2

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const v0, 0x3fffffff    # 1.9999999f

    .line 122
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->updatePageIds(I)V

    return-void
.end method

.method invalidatePages()V
    .locals 4

    .line 202
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 203
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->invalidate()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method navigateToNextNavigationStop()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refresh()V

    return-void
.end method

.method navigateToPrevNavigationStop()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refresh()V

    return-void
.end method

.method onAfterNavigation(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->shiftAhead()V

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    .line 211
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->shiftBack()V

    goto :goto_0

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->reRenderAllPages()V

    :goto_0
    return-void
.end method

.method protected reRenderAllPages()V
    .locals 2

    const v0, 0x3fffffff    # 1.9999999f

    .line 243
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->updatePageIds(I)V

    .line 250
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->recycleRenderElement()V

    .line 251
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->recycleRenderElement()V

    .line 254
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    new-instance v1, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$4;

    invoke-direct {v1, p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray$4;-><init>(Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;)V

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refresh(Ljava/lang/Runnable;)V

    return-void
.end method

.method public recycle()V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 146
    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->recycleRenderElement()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method refreshAllPages()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refresh()V

    .line 190
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refresh()V

    .line 191
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refresh()V

    return-void
.end method

.method refreshCurrentPage()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refresh()V

    return-void
.end method

.method refreshNextPage()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refresh()V

    return-void
.end method

.method refreshPreviousPage()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refresh()V

    return-void
.end method

.method registerPageRenderedEventListener(Lcom/amazon/android/docviewer/mobi/IPageRenderedEventListener;)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->pageRenderedEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInToggleOffTransient(Z)V
    .locals 2

    .line 397
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getCurrentPage()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->setInToggleOffTransient(Z)V

    .line 398
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getCurrentPage()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->isInToggleOffTransient()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getCurrentPage()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->setToggleableActived(ZI)V

    .line 400
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getPreviousPage()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->setToggleableActived(ZI)V

    .line 401
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->getNextPage()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->setToggleableActived(ZI)V

    :cond_0
    return-void
.end method

.method setPageAndRender(Lcom/amazon/android/docviewer/mobi/IPageProvider;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/mobi/IPageProvider<",
            "Lcom/amazon/android/docviewer/mobi/MobiPage;",
            ">;",
            "Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;",
            "Z)V"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->invalidate()V

    .line 289
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->invalidate()V

    .line 290
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->customRenderTask(Lcom/amazon/android/docviewer/mobi/IPageProvider;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$Listener;Z)V

    return-void
.end method

.method protected shiftAhead()V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getPageId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->updatePageIds(I)V

    .line 224
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refreshPageAndSwapRenderElement(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;)V

    .line 225
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    aget-object v2, v0, v3

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refreshPageAndSwapRenderElement(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;)V

    .line 226
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refresh()V

    return-void
.end method

.method protected shiftBack()V
    .locals 4

    .line 233
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->getPageId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->updatePageIds(I)V

    .line 234
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v2, 0x2

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v0, v0, v3

    invoke-virtual {v2, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refreshPageAndSwapRenderElement(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;)V

    .line 235
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    aget-object v2, v0, v3

    aget-object v0, v0, v1

    invoke-virtual {v2, v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refreshPageAndSwapRenderElement(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;)V

    .line 236
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->refresh()V

    return-void
.end method

.method updatePageIds(I)V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->updatePageId(I)V

    .line 133
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->updatePageId(I)V

    .line 134
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageRenderDrawableArray;->m_pages:[Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable;->updatePageId(I)V

    return-void
.end method
