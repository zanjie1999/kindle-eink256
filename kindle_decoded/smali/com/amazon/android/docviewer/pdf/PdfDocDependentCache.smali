.class final Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;
.super Ljava/lang/Object;
.source "PdfDocDependentCache.java"


# instance fields
.field private m_docHandleDependents:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/docviewer/pdf/PdfDocDependent;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;->m_docHandleDependents:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lcom/amazon/android/docviewer/pdf/PdfDocDependent;)V
    .locals 2

    monitor-enter p0

    const/4 v0, -0x1

    .line 25
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;->m_docHandleDependents:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDependents()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/android/docviewer/pdf/PdfDocDependent;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 35
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;->m_docHandleDependents:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized size()I
    .locals 1

    monitor-enter p0

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfDocDependentCache;->m_docHandleDependents:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
