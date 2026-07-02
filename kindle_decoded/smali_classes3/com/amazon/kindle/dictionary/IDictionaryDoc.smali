.class public Lcom/amazon/kindle/dictionary/IDictionaryDoc;
.super Ljava/lang/Object;
.source "IDictionaryDoc.java"


# static fields
.field private static TAG:Ljava/lang/String; = "KindleDictionary"


# instance fields
.field private handle:J

.field private whatKindOfDictionary:Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "KindleDictionaryJNI"

    .line 21
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 22
    invoke-static {}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->init()V

    return-void
.end method

.method public constructor <init>(JLcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-wide p1, p0, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->handle:J

    .line 44
    iput-object p3, p0, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->whatKindOfDictionary:Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    return-void
.end method

.method private native createNativeDictionaryLookups()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method private native dictionaryResultHeight(Lcom/amazon/kindle/dictionary/IDictionaryResult;Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;I)I
.end method

.method private static native init()V
.end method

.method private native renderNativeBitmap(Lcom/amazon/kindle/dictionary/IDictionaryResult;Landroid/graphics/Bitmap;Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;)Ljava/lang/String;
.end method


# virtual methods
.method public synchronized native closeDictionary()Z
.end method

.method public declared-synchronized createDictionaryLookups()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/dictionary/IDictionaryLookup;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 52
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 53
    invoke-direct {p0}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->createNativeDictionaryLookups()Ljava/util/List;

    move-result-object v2

    const-string v3, "Time taken to create a DictionaryLookup: time(ms)=%f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 54
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    long-to-double v6, v6

    long-to-double v0, v0

    sub-double/2addr v6, v0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 55
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 60
    new-instance v3, Lcom/amazon/kindle/dictionary/IDictionaryLookup;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lcom/amazon/kindle/dictionary/IDictionaryLookup;-><init>(J)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 62
    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 56
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized dispose()V
    .locals 5

    monitor-enter p0

    .line 129
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->handle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 130
    iget-object v0, p0, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->whatKindOfDictionary:Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    sget-object v1, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;->YJ:Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    if-ne v0, v1, :cond_0

    .line 131
    iget-wide v0, p0, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->handle:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/dictionary/YJDictionaryStore;->dispose(J)V

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->whatKindOfDictionary:Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    sget-object v1, Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;->MOBI:Lcom/amazon/kindle/dictionary/DictionaryStore$DictionaryType;

    if-ne v0, v1, :cond_1

    .line 133
    iget-wide v0, p0, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->handle:J

    invoke-static {v0, v1}, Lcom/amazon/kindle/dictionary/MobiDictionaryStore;->dispose(J)V

    .line 135
    :cond_1
    :goto_0
    iput-wide v2, p0, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->handle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .line 121
    invoke-virtual {p0}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->dispose()V

    return-void
.end method

.method public declared-synchronized heightForRenderedResult(Lcom/amazon/kindle/dictionary/IDictionaryResult;Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;I)I
    .locals 5

    monitor-enter p0

    .line 103
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 104
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->dictionaryResultHeight(Lcom/amazon/kindle/dictionary/IDictionaryResult;Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;I)I

    move-result p1

    const-string p2, "Time taken to get definition height: time(ms)=%f"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 105
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-double v3, v3

    long-to-double v0, v0

    sub-double/2addr v3, v0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized renderResultToBitmap(Lcom/amazon/kindle/dictionary/IDictionaryResult;Landroid/graphics/Bitmap;Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;)Ljava/lang/String;
    .locals 5

    monitor-enter p0

    .line 80
    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/dictionary/IDictionaryDoc;->renderNativeBitmap(Lcom/amazon/kindle/dictionary/IDictionaryResult;Landroid/graphics/Bitmap;Lcom/amazon/kindle/dictionary/DictionaryRenderingSettings;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Time taken to render a image: time(ms)=%f"

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 82
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-double v3, v3

    long-to-double v0, v0

    sub-double/2addr v3, v0

    const-wide v0, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    aput-object v0, p3, v2

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
