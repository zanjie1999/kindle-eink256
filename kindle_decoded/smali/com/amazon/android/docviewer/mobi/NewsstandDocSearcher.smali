.class public Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;
.super Lcom/amazon/android/docviewer/BookDocSearcher;
.source "NewsstandDocSearcher.java"


# instance fields
.field private m_searchThread:Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;

.field private final m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/BookDocSearcher;-><init>(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 10
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    return-void
.end method


# virtual methods
.method public search(Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)Ljava/lang/Runnable;
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;->stop()V

    .line 18
    new-instance v0, Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/NewsstandSearchItem;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)V

    .line 19
    new-instance p1, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;

    invoke-direct {p1, v0}, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;-><init>(Lcom/amazon/kindle/search/KindleSearchItem;)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;->m_searchThread:Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 22
    new-instance p1, Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher$1;

    invoke-direct {p1, p0}, Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher$1;-><init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;)V

    return-object p1
.end method

.method protected stop()V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;->m_searchThread:Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;->cancel()V

    .line 40
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;->m_searchThread:Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/NewsstandDocSearcher;->m_searchThread:Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;

    return-void
.end method
