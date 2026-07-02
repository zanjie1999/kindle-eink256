.class public Lcom/amazon/kindle/dictionary/IDictionaryLookup;
.super Ljava/lang/Object;
.source "IDictionaryLookup.java"


# static fields
.field private static TAG:Ljava/lang/String; = "KindleDictionary"


# instance fields
.field private handle:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-wide p1, p0, Lcom/amazon/kindle/dictionary/IDictionaryLookup;->handle:J

    return-void
.end method

.method private native delete()V
.end method


# virtual methods
.method public declared-synchronized createLookupResults(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/dictionary/IDictionaryResult;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 31
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 32
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/dictionary/IDictionaryLookup;->createNativeLookupResults(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "Time taken to Lookup a word: %s is time(ms)=%f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 p1, 0x1

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    long-to-double v5, v5

    long-to-double v0, v0

    sub-double/2addr v5, v0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, p1

    .line 33
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 35
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 38
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 40
    new-instance v2, Lcom/amazon/kindle/dictionary/IDictionaryResult;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Lcom/amazon/kindle/dictionary/IDictionaryResult;-><init>(J)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 42
    :cond_1
    monitor-exit p0

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    .line 36
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public native createNativeLookupResults(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public declared-synchronized dispose()V
    .locals 5

    monitor-enter p0

    .line 69
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/dictionary/IDictionaryLookup;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/amazon/kindle/dictionary/IDictionaryLookup;->delete()V

    .line 71
    iput-wide v2, p0, Lcom/amazon/kindle/dictionary/IDictionaryLookup;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/amazon/kindle/dictionary/IDictionaryLookup;->dispose()V

    return-void
.end method

.method public synchronized native getSourceLanguage()Ljava/lang/String;
.end method

.method public synchronized native getTargetLanguage()Ljava/lang/String;
.end method
