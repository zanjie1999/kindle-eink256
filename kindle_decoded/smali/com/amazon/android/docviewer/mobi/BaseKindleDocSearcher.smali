.class public abstract Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;
.super Ljava/lang/Object;
.source "BaseKindleDocSearcher.java"

# interfaces
.implements Lcom/amazon/android/docviewer/KindleDocSearcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final WAIT_TIME_OUT:J = 0xbb8L


# instance fields
.field private m_cachedResults:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/BookSearchResult;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_searchThread:Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->m_cachedResults:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clearCachedSearchResults()V
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->m_cachedResults:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public abstract createSearchItem(Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)Lcom/amazon/kindle/search/KindleSearchItem;
.end method

.method public getCachedSearchResults(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/BookSearchResult;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->m_cachedResults:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    return-object p1
.end method

.method public search(Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)Ljava/lang/Runnable;
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->stop()V

    .line 65
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->createSearchItem(Ljava/lang/String;Lcom/amazon/android/docviewer/KindleDocSearcher$SearchCallback;Lcom/amazon/kindle/services/download/IStatusTracker;)Lcom/amazon/kindle/search/KindleSearchItem;

    move-result-object p1

    .line 66
    new-instance p2, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;

    invoke-direct {p2, p1}, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;-><init>(Lcom/amazon/kindle/search/KindleSearchItem;)V

    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->m_searchThread:Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;

    .line 67
    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    .line 69
    new-instance p1, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$1;

    invoke-direct {p1, p0}, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$1;-><init>(Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;)V

    return-object p1
.end method

.method public setCachedSearchResults(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/android/docviewer/BookSearchResult;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->m_cachedResults:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->m_cachedResults:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected stop()V
    .locals 3

    .line 81
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->m_searchThread:Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;->cancel()V

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->m_searchThread:Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 112
    sget-object v1, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    .line 114
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher;->m_searchThread:Lcom/amazon/android/docviewer/mobi/BaseKindleDocSearcher$SearchThread;

    return-void
.end method
