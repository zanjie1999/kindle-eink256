.class public abstract Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;
.super Ljava/lang/Object;
.source "BaseDictionaryDocument.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/dictionary/IDictionaryDocument;


# instance fields
.field private final TAG:Ljava/lang/String;

.field cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/dictionary/IDictionaryResult;",
            ">;"
        }
    .end annotation
.end field

.field protected lookup:Lcom/amazon/kindle/dictionary/IDictionaryLookup;

.field protected lookups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/dictionary/IDictionaryLookup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->cache:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->lookups:Ljava/util/List;

    .line 109
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->lookup:Lcom/amazon/kindle/dictionary/IDictionaryLookup;

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 112
    invoke-static {}, Lcom/amazon/kindle/dictionary/DictionaryStore;->getDictionary()Lcom/amazon/kindle/dictionary/IDictionaryDoc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->closeDictionary()Z

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->TAG:Ljava/lang/String;

    const-string v1, "Closing current dictionary"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected final initLookup(Lcom/amazon/kindle/dictionary/IDictionaryDoc;)V
    .locals 1

    .line 39
    invoke-virtual {p1}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->createDictionaryLookups()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->lookups:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->lookups:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/dictionary/IDictionaryLookup;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->lookup:Lcom/amazon/kindle/dictionary/IDictionaryLookup;

    :cond_1
    return-void
.end method

.method public final declared-synchronized lookupDefinition(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/dictionary/IDictionaryResult;
    .locals 3

    monitor-enter p0

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->lookup:Lcom/amazon/kindle/dictionary/IDictionaryLookup;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 51
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->TAG:Ljava/lang/String;

    const-string p2, "Lookup is null"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-object v1

    .line 55
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->cache:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/dictionary/IDictionaryResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 61
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->lookup:Lcom/amazon/kindle/dictionary/IDictionaryLookup;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/dictionary/IDictionaryLookup;->createLookupResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 63
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 64
    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->lookupResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/dictionary/IDictionaryResult;

    move-result-object p2

    .line 65
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    monitor-exit p0

    return-object p2

    .line 71
    :cond_2
    :try_start_3
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/dictionary/BaseDictionaryDocument;->cache:Ljava/util/Map;

    invoke-interface {p2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Results not found during lookup for word "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 75
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected lookupResult(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/dictionary/IDictionaryResult;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/dictionary/IDictionaryResult;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/amazon/kindle/dictionary/IDictionaryResult;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 92
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 93
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/dictionary/IDictionaryResult;

    return-object p1

    .line 96
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Results not found during lookup for word "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 p1, 0x0

    return-object p1
.end method
