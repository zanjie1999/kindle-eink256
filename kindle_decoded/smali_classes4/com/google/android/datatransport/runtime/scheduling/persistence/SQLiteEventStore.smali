.class public Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;
.super Ljava/lang/Object;
.source "SQLiteEventStore.java"

# interfaces
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStore;
.implements Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard;
.implements Lcom/google/android/datatransport/runtime/scheduling/persistence/ClientHealthMetricsStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;,
        Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;,
        Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;
    }
.end annotation


# static fields
.field private static final LOCK_RETRY_BACK_OFF_MILLIS:I = 0x32

.field private static final LOG_TAG:Ljava/lang/String; = "SQLiteEventStore"

.field private static final PROTOBUF_ENCODING:Lcom/google/android/datatransport/Encoding;


# instance fields
.field private final config:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

.field private final monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

.field private final packageName:Lcom/google/android/datatransport/runtime/dagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/datatransport/runtime/dagger/Lazy<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

.field private final wallClock:Lcom/google/android/datatransport/runtime/time/Clock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "proto"

    .line 69
    invoke-static {v0}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->PROTOBUF_ENCODING:Lcom/google/android/datatransport/Encoding;

    return-void
.end method

.method constructor <init>(Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/time/Clock;Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;Lcom/google/android/datatransport/runtime/dagger/Lazy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            "Lcom/google/android/datatransport/runtime/time/Clock;",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;",
            "Lcom/google/android/datatransport/runtime/dagger/Lazy<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p4, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    .line 86
    iput-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 87
    iput-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    .line 88
    iput-object p3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    .line 89
    iput-object p5, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->packageName:Lcom/google/android/datatransport/runtime/dagger/Lazy;

    return-void
.end method

.method private convertToReason(I)Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;
    .locals 2

    .line 613
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->REASON_UNKNOWN:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 614
    sget-object p1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->REASON_UNKNOWN:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    return-object p1

    .line 615
    :cond_0
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MESSAGE_TOO_OLD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 616
    sget-object p1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MESSAGE_TOO_OLD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    return-object p1

    .line 617
    :cond_1
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->CACHE_FULL:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 618
    sget-object p1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->CACHE_FULL:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    return-object p1

    .line 619
    :cond_2
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->PAYLOAD_TOO_BIG:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 620
    sget-object p1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->PAYLOAD_TOO_BIG:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    return-object p1

    .line 621
    :cond_3
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MAX_RETRIES_REACHED:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 622
    sget-object p1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MAX_RETRIES_REACHED:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    return-object p1

    .line 623
    :cond_4
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->INVALID_PAYLOD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v0

    if-ne p1, v0, :cond_5

    .line 624
    sget-object p1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->INVALID_PAYLOD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    return-object p1

    .line 625
    :cond_5
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->SERVER_ERROR:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 626
    sget-object p1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->SERVER_ERROR:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    return-object p1

    .line 632
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "SQLiteEventStore"

    const-string v1, "%n is not valid. No matched LogEventDropped-Reason found. Treated it as REASON_UNKNOWN"

    .line 628
    invoke-static {v0, v1, p1}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 633
    sget-object p1, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->REASON_UNKNOWN:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    return-object p1
.end method

.method private ensureBeginTransaction(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 739
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$r4wK-nM0pt6LHxN6EBAgBUDxBb8;

    invoke-direct {v0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$r4wK-nM0pt6LHxN6EBAgBUDxBb8;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    sget-object p1, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$wiIHvRquvjAoMOT5r2q0O3rXLo4;->INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$wiIHvRquvjAoMOT5r2q0O3rXLo4;

    invoke-direct {p0, v0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->retryIfDbLocked(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    return-void
.end method

.method private ensureTransportContext(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)J
    .locals 4

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getTransportContextId(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 178
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 179
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "backend_name"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "priority"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v1, 0x0

    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "next_request_ms"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 182
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 183
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    move-result-object p2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const-string v1, "extras"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p2, 0x0

    const-string v1, "transport_contexts"

    .line 186
    invoke-virtual {p1, v1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p1

    return-wide p1
.end method

.method private getGlobalMetrics()Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;
    .locals 4

    .line 704
    invoke-static {}, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;->newBuilder()Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics$Builder;

    move-result-object v0

    .line 706
    invoke-static {}, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;->newBuilder()Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;

    move-result-object v1

    .line 707
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getByteSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;->setCurrentCacheSizeBytes(J)Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;

    sget-object v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->DEFAULT:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    .line 708
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getMaxStorageSizeInBytes()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;->setMaxCacheSizeBytes(J)Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;

    .line 709
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics$Builder;->build()Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;

    move-result-object v1

    .line 705
    invoke-virtual {v0, v1}, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics$Builder;->setStorageMetrics(Lcom/google/android/datatransport/runtime/firebase/transport/StorageMetrics;)Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics$Builder;

    .line 710
    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics$Builder;->build()Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;

    move-result-object v0

    return-object v0
.end method

.method private getPageCount()J
    .locals 2

    .line 806
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA page_count"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private getPageSize()J
    .locals 2

    .line 798
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "PRAGMA page_size"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v0

    return-wide v0
.end method

.method private getTimeWindow()Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;
    .locals 3

    .line 688
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-interface {v0}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v0

    .line 690
    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$wzCpiiV4_HVv1NwILWN-0xbptVk;

    invoke-direct {v2, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$wzCpiiV4_HVv1NwILWN-0xbptVk;-><init>(J)V

    invoke-virtual {p0, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    return-object v0
.end method

.method private getTransportContextId(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Long;
    .locals 13

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "backend_name = ? and priority = ?"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 195
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 196
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    .line 194
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 198
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, " and extras = ?"

    .line 199
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getExtras()[B

    move-result-object p2

    invoke-static {p2, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, " and extras is null"

    .line 202
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p2, "_id"

    .line 205
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object v7

    .line 209
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array p2, v4, [Ljava/lang/String;

    .line 210
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, [Ljava/lang/String;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v6, "transport_contexts"

    move-object v5, p1

    .line 206
    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object p2, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$huP16S6r4seAEE6hUvL2Fl-E7jI;->INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$huP16S6r4seAEE6hUvL2Fl-E7jI;

    .line 205
    invoke-static {p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    return-object p1
.end method

.method private isStorageAtLimit()Z
    .locals 5

    .line 786
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getPageCount()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getPageSize()J

    move-result-wide v2

    mul-long v0, v0, v2

    .line 788
    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getMaxStorageSizeInBytes()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private join(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;",
            ">;>;)",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;"
        }
    .end annotation

    .line 547
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 548
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 549
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    .line 550
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 553
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getEvent()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/EventInternal;->toBuilder()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v2

    .line 555
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;

    .line 556
    iget-object v5, v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;->key:Ljava/lang/String;

    iget-object v4, v4, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;->value:Ljava/lang/String;

    invoke-virtual {v2, v5, v4}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->addMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    goto :goto_1

    .line 559
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getId()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getTransportContext()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object v1

    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->build()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object v2

    invoke-static {v3, v4, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->create(JLcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    move-result-object v1

    .line 558
    invoke-interface {v0, v1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method static synthetic lambda$ensureBeginTransaction$24(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 0

    .line 741
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$ensureBeginTransaction$25(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 2

    .line 745
    new-instance v0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    const-string v1, "Timed out while trying to acquire the lock."

    invoke-direct {v0, v1, p0}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic lambda$getDb$0(Ljava/lang/Throwable;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 97
    new-instance v0, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;

    const-string v1, "Timed out while trying to open db."

    invoke-direct {v0, v1, p0}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic lambda$getNextCallTime$5(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    .line 288
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 289
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v0, 0x0

    .line 291
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getTimeWindow$21(JLandroid/database/Cursor;)Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;
    .locals 2

    .line 697
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    const/4 v0, 0x0

    .line 698
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 699
    invoke-static {}, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;->newBuilder()Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;

    move-result-object p2

    invoke-virtual {p2, v0, v1}, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;->setStartMs(J)Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;

    invoke-virtual {p2, p0, p1}, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;->setEndMs(J)Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;

    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow$Builder;->build()Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getTimeWindow$22(JLandroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SELECT last_metrics_upload_ms FROM global_log_event_state LIMIT 1"

    .line 693
    invoke-virtual {p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$nwfpM1g8FNfuF-y58M0M31EIvx4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$nwfpM1g8FNfuF-y58M0M31EIvx4;-><init>(J)V

    .line 692
    invoke-static {p2, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    return-object p0
.end method

.method static synthetic lambda$getTransportContextId$2(Landroid/database/Cursor;)Ljava/lang/Long;
    .locals 2

    .line 215
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 218
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$loadActiveContexts$10(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id"

    .line 351
    invoke-virtual {p0, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$8DhP1OvEO8M6Rk0AUupPmfOot0Y;->INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$8DhP1OvEO8M6Rk0AUupPmfOot0Y;

    .line 350
    invoke-static {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method static synthetic lambda$loadActiveContexts$9(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3

    .line 356
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 357
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    invoke-static {}, Lcom/google/android/datatransport/runtime/TransportContext;->builder()Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 360
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setBackendName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    const/4 v2, 0x2

    .line 361
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->valueOf(I)Lcom/google/android/datatransport/Priority;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setPriority(Lcom/google/android/datatransport/Priority;)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    const/4 v2, 0x3

    .line 362
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->maybeBase64Decode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->setExtras([B)Lcom/google/android/datatransport/runtime/TransportContext$Builder;

    .line 363
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/TransportContext$Builder;->build()Lcom/google/android/datatransport/runtime/TransportContext;

    move-result-object v1

    .line 358
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic lambda$loadMetadata$16(Ljava/util/Map;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 5

    .line 530
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 531
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 532
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 534
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 535
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    :cond_0
    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$1;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method static synthetic lambda$readPayload$15(Landroid/database/Cursor;)[B
    .locals 6

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 484
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 485
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 486
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 487
    array-length v3, v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 490
    :cond_0
    new-array p0, v2, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 492
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 493
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    .line 494
    array-length v5, v4

    invoke-static {v4, v1, p0, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 495
    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method static synthetic lambda$recordLogEventDropped$17(Landroid/database/Cursor;)Ljava/lang/Boolean;
    .locals 0

    .line 594
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$recordLogEventDropped$18(Ljava/lang/String;Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 592
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    const-string v3, "SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?"

    .line 594
    invoke-virtual {p4, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    sget-object v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$owZ5jXLTVeOk7pcUNJL0LV1Qcms;->INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$owZ5jXLTVeOk7pcUNJL0LV1Qcms;

    invoke-static {v1, v3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 596
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "log_source"

    .line 597
    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "reason"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "events_dropped_count"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p0, "log_event_dropped"

    .line 600
    invoke-virtual {p4, p0, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 602
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " WHERE log_source = ? AND reason = ?"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array p3, v0, [Ljava/lang/String;

    aput-object p0, p3, v2

    .line 606
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->getNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, p3, v4

    invoke-virtual {p4, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-object v3
.end method

.method static synthetic lambda$recordNextCallTime$7(JLcom/google/android/datatransport/runtime/TransportContext;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 3

    .line 316
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 317
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "next_request_ms"

    invoke-virtual {v0, p1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    .line 324
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, p0, v1

    .line 325
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, p0, v1

    const-string p1, "transport_contexts"

    const-string v2, "backend_name = ? and priority = ?"

    .line 319
    invoke-virtual {p3, p1, v0, v2, p0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    const/4 v2, 0x0

    if-ge p0, v1, :cond_0

    .line 329
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "backend_name"

    invoke-virtual {v0, v1, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p2, "priority"

    invoke-virtual {v0, p2, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 331
    invoke-virtual {p3, p1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    :cond_0
    return-object v2
.end method

.method private loadEvents(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Lcom/google/android/datatransport/runtime/TransportContext;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 419
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 420
    invoke-direct/range {p0 .. p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getTransportContextId(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Long;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const-string v3, "_id"

    const-string v4, "transport_name"

    const-string v5, "timestamp_ms"

    const-string v6, "uptime_ms"

    const-string v7, "payload_encoding"

    const-string v8, "payload"

    const-string v9, "code"

    const-string v10, "inline"

    .line 425
    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v13

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 439
    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v15, v3

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    iget-object v2, v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    .line 443
    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getLoadBatchSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    const-string v12, "events"

    const-string v14, "context_id = ?"

    move-object/from16 v11, p1

    .line 426
    invoke-virtual/range {v11 .. v19}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    new-instance v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$Z9Nyi01vIWTYyw0ogeZM6wViZ9E;

    move-object/from16 v4, p2

    invoke-direct {v3, v0, v1, v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$Z9Nyi01vIWTYyw0ogeZM6wViZ9E;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Ljava/util/List;Lcom/google/android/datatransport/runtime/TransportContext;)V

    .line 425
    invoke-static {v2, v3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    return-object v1
.end method

.method private loadMetadata(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/Set<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata;",
            ">;>;"
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "event_id IN ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 512
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 513
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 514
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_0

    const/16 v3, 0x2c

    .line 515
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 p2, 0x29

    .line 518
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p2, "event_id"

    const-string v2, "name"

    const-string v3, "value"

    .line 520
    filled-new-array {p2, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 524
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v5, "event_metadata"

    move-object v4, p1

    .line 521
    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$hZpWOFgGLAWGsBKZCxi6HgvZV9A;

    invoke-direct {p2, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$hZpWOFgGLAWGsBKZCxi6HgvZV9A;-><init>(Ljava/util/Map;)V

    .line 520
    invoke-static {p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    return-object v0
.end method

.method private static maybeBase64Decode(Ljava/lang/String;)[B
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 414
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method private populateLogSourcesMetrics(Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;",
            ">;>;)V"
        }
    .end annotation

    .line 678
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 680
    invoke-static {}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;->newBuilder()Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;

    move-result-object v1

    .line 681
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;->setLogSource(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;

    .line 682
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;->setLogEventDroppedList(Ljava/util/List;)Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;

    .line 683
    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics$Builder;->build()Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;

    move-result-object v0

    .line 679
    invoke-virtual {p1, v0}, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->addLogSourceMetrics(Lcom/google/android/datatransport/runtime/firebase/transport/LogSourceMetrics;)Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private readPayload(J)[B
    .locals 8

    .line 472
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "bytes"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    new-array v4, v1, [Ljava/lang/String;

    .line 477
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const-string v1, "event_payloads"

    const-string v3, "event_id = ?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "sequence_num"

    .line 473
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object p2, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$gjP7BXU8kEkB9Oj8TDPg75icJLs;->INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$gjP7BXU8kEkB9Oj8TDPg75icJLs;

    .line 471
    invoke-static {p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method private retryIfDbLocked(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer<",
            "TT;>;",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function<",
            "Ljava/lang/Throwable;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 565
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-interface {v0}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v0

    .line 568
    :goto_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;->produce()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDatabaseLockedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v2

    .line 570
    iget-object v3, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->monotonicClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-interface {v3}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    invoke-virtual {v5}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getCriticalSectionEnterTimeoutMs()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v5, v0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    .line 571
    invoke-interface {p2, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/16 v2, 0x32

    .line 573
    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0
.end method

.method private static toEncoding(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;
    .locals 0

    if-nez p0, :cond_0

    .line 503
    sget-object p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->PROTOBUF_ENCODING:Lcom/google/android/datatransport/Encoding;

    return-object p0

    .line 505
    :cond_0
    invoke-static {p0}, Lcom/google/android/datatransport/Encoding;->of(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object p0

    return-object p0
.end method

.method private static toIdList(Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 266
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 267
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    invoke-virtual {v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 269
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x2c

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/16 p0, 0x29

    .line 273
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function<",
            "Landroid/database/Cursor;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 812
    :try_start_0
    invoke-interface {p1, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 815
    throw p1
.end method


# virtual methods
.method public cleanUp()I
    .locals 4

    .line 371
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->wallClock:Lcom/google/android/datatransport/runtime/time/Clock;

    invoke-interface {v0}, Lcom/google/android/datatransport/runtime/time/Clock;->getTime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getEventCleanUpAge()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 372
    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$nEgCxdZ1lOF3FjmNyczICTViGOw;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$nEgCxdZ1lOF3FjmNyczICTViGOw;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;J)V

    invoke-virtual {p0, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    return-void
.end method

.method getByteSize()J
    .locals 4

    .line 793
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getPageCount()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getPageSize()J

    move-result-wide v2

    mul-long v0, v0, v2

    return-wide v0
.end method

.method getDb()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->schemaManager:Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;

    .line 95
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$iV7-zVaNm3OzwRKNnkXrWOPrqvk;

    invoke-direct {v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$iV7-zVaNm3OzwRKNnkXrWOPrqvk;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SchemaManager;)V

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$um25oEoA60fAOv07ztYlCvK_sgs;->INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$um25oEoA60fAOv07ztYlCvK_sgs;

    .line 94
    invoke-direct {p0, v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->retryIfDbLocked(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public getNextCallTime(Lcom/google/android/datatransport/runtime/TransportContext;)J
    .locals 4

    .line 280
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 284
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 285
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/util/PriorityMapping;->toInt(Lcom/google/android/datatransport/Priority;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const-string p1, "SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?"

    .line 281
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$zvTv0_H2M35sUq4UNH-dCTdACM8;->INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$zvTv0_H2M35sUq4UNH-dCTdACM8;

    .line 279
    invoke-static {p1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasPendingEventsFor(Lcom/google/android/datatransport/runtime/TransportContext;)Z
    .locals 1

    .line 297
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$A2mSSJWOsHmIbersM8x4y1FZA-I;

    invoke-direct {v0, p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$A2mSSJWOsHmIbersM8x4y1FZA-I;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/TransportContext;)V

    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function<",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "TT;>;)TT;"
        }
    .end annotation

    .line 764
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 765
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 767
    :try_start_0
    invoke-interface {p1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 768
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 772
    throw p1
.end method

.method public synthetic lambda$cleanUp$11$SQLiteEventStore(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    .line 382
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 383
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    .line 384
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, v0

    .line 385
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MESSAGE_TOO_OLD:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->recordLogEventDropped(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$cleanUp$12$SQLiteEventStore(JLandroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 378
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v0, p2

    const-string p1, "SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name"

    .line 380
    invoke-virtual {p3, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p2, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$ThCXczQ0nMKqNne3_YH_7gzLLEY;

    invoke-direct {p2, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$ThCXczQ0nMKqNne3_YH_7gzLLEY;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;)V

    .line 379
    invoke-static {p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    const-string p1, "events"

    const-string p2, "timestamp_ms < ?"

    .line 391
    invoke-virtual {p3, p1, p2, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$hasPendingEventsFor$6$SQLiteEventStore(Lcom/google/android/datatransport/runtime/TransportContext;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Boolean;
    .locals 2

    .line 299
    invoke-direct {p0, p2, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getTransportContextId(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    .line 301
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 307
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, p2

    const-string p1, "SELECT 1 FROM events WHERE context_id = ? LIMIT 1"

    .line 305
    invoke-virtual {v0, p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    sget-object p2, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$ky9PmMQY9PhnKcqK77KNYHUaLEk;->INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$ky9PmMQY9PhnKcqK77KNYHUaLEk;

    .line 303
    invoke-static {p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public synthetic lambda$loadBatch$8$SQLiteEventStore(Lcom/google/android/datatransport/runtime/TransportContext;Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/List;
    .locals 0

    .line 341
    invoke-direct {p0, p2, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->loadEvents(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/util/List;

    move-result-object p1

    .line 342
    invoke-direct {p0, p2, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->loadMetadata(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)Ljava/util/Map;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->join(Ljava/util/List;Ljava/util/Map;)Ljava/util/List;

    return-object p1
.end method

.method public synthetic lambda$loadClientMetrics$19$SQLiteEventStore(Ljava/util/Map;Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;Landroid/database/Cursor;)Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;
    .locals 5

    .line 653
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 654
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 655
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->convertToReason(I)Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    move-result-object v1

    const/4 v2, 0x2

    .line 656
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 657
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 658
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    :cond_0
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 663
    invoke-static {}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;->newBuilder()Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;

    move-result-object v4

    .line 664
    invoke-virtual {v4, v1}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;->setReason(Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;)Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;

    .line 665
    invoke-virtual {v4, v2, v3}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;->setEventsDroppedCount(J)Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;

    .line 666
    invoke-virtual {v4}, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Builder;->build()Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped;

    move-result-object v1

    .line 662
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 668
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->populateLogSourcesMetrics(Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;Ljava/util/Map;)V

    .line 669
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getTimeWindow()Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->setWindow(Lcom/google/android/datatransport/runtime/firebase/transport/TimeWindow;)Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;

    .line 670
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getGlobalMetrics()Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->setGlobalMetrics(Lcom/google/android/datatransport/runtime/firebase/transport/GlobalMetrics;)Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;

    .line 671
    iget-object p1, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->packageName:Lcom/google/android/datatransport/runtime/dagger/Lazy;

    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/dagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->setAppNamespace(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;

    .line 672
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;->build()Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$loadClientMetrics$20$SQLiteEventStore(Ljava/lang/String;Ljava/util/Map;Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;Landroid/database/sqlite/SQLiteDatabase;)Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 651
    invoke-virtual {p4, p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    new-instance p4, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$99gq7jDaW192binKaaLhAN5bm6s;

    invoke-direct {p4, p0, p2, p3}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$99gq7jDaW192binKaaLhAN5bm6s;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Ljava/util/Map;Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;)V

    .line 650
    invoke-static {p1, p4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;

    return-object p1
.end method

.method public synthetic lambda$loadEvents$14$SQLiteEventStore(Ljava/util/List;Lcom/google/android/datatransport/runtime/TransportContext;Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 6

    .line 445
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 446
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x7

    .line 447
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 449
    :cond_0
    invoke-static {}, Lcom/google/android/datatransport/runtime/EventInternal;->builder()Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    move-result-object v3

    .line 450
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setTransportName(Ljava/lang/String;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    const/4 v4, 0x2

    .line 451
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setEventMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    const/4 v4, 0x3

    .line 452
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setUptimeMillis(J)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    const/4 v4, 0x4

    if-eqz v0, :cond_1

    .line 454
    new-instance v0, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 455
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->toEncoding(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v4

    const/4 v5, 0x5

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    .line 454
    invoke-virtual {v3, v0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setEncodedPayload(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    goto :goto_1

    .line 457
    :cond_1
    new-instance v0, Lcom/google/android/datatransport/runtime/EncodedPayload;

    .line 458
    invoke-interface {p3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->toEncoding(Ljava/lang/String;)Lcom/google/android/datatransport/Encoding;

    move-result-object v4

    invoke-direct {p0, v1, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->readPayload(J)[B

    move-result-object v5

    invoke-direct {v0, v4, v5}, Lcom/google/android/datatransport/runtime/EncodedPayload;-><init>(Lcom/google/android/datatransport/Encoding;[B)V

    .line 457
    invoke-virtual {v3, v0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setEncodedPayload(Lcom/google/android/datatransport/runtime/EncodedPayload;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    :goto_1
    const/4 v0, 0x6

    .line 460
    invoke-interface {p3, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 461
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->setCode(Ljava/lang/Integer;)Lcom/google/android/datatransport/runtime/EventInternal$Builder;

    .line 463
    :cond_2
    invoke-virtual {v3}, Lcom/google/android/datatransport/runtime/EventInternal$Builder;->build()Lcom/google/android/datatransport/runtime/EventInternal;

    move-result-object v0

    invoke-static {v1, v2, p2, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->create(JLcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$persist$1$SQLiteEventStore(Lcom/google/android/datatransport/runtime/EventInternal;Lcom/google/android/datatransport/runtime/TransportContext;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Long;
    .locals 11

    .line 116
    invoke-direct {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->isStorageAtLimit()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p2, 0x1

    .line 117
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->CACHE_FULL:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    .line 118
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getTransportName()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p0, p2, p3, v0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->recordLogEventDropped(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    const-wide/16 p1, -0x1

    .line 119
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 122
    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->ensureTransportContext(Landroid/database/sqlite/SQLiteDatabase;Lcom/google/android/datatransport/runtime/TransportContext;)J

    move-result-wide v0

    .line 123
    iget-object p2, p0, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->config:Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;

    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/EventStoreConfig;->getMaxBlobByteSizePerRow()I

    move-result p2

    .line 125
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getBytes()[B

    move-result-object v2

    .line 126
    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-gt v3, p2, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 127
    :goto_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 128
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "context_id"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 129
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getTransportName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "transport_name"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getEventMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "timestamp_ms"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 131
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getUptimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "uptime_ms"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 132
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getEncodedPayload()Lcom/google/android/datatransport/runtime/EncodedPayload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/datatransport/runtime/EncodedPayload;->getEncoding()Lcom/google/android/datatransport/Encoding;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/datatransport/Encoding;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "payload_encoding"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getCode()Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "num_attempts"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 135
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "inline"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz v3, :cond_2

    move-object v0, v2

    goto :goto_1

    :cond_2
    new-array v0, v4, [B

    :goto_1
    const-string v1, "payload"

    .line 136
    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    const-string v1, "events"

    .line 137
    invoke-virtual {p3, v1, v0, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    const-string v1, "event_id"

    if-nez v3, :cond_3

    .line 139
    array-length v3, v2

    int-to-double v3, v3

    int-to-double v8, p2

    div-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    :goto_2
    if-gt v5, v3, :cond_3

    add-int/lit8 v4, v5, -0x1

    mul-int v4, v4, p2

    mul-int v8, v5, p2

    .line 142
    array-length v9, v2

    .line 146
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 143
    invoke-static {v2, v4, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 147
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 148
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v1, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 149
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "sequence_num"

    invoke-virtual {v8, v10, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "bytes"

    .line 150
    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v4, "event_payloads"

    .line 151
    invoke-virtual {p3, v4, v0, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 156
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/EventInternal;->getMetadata()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 157
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 158
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 159
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v3, "value"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "event_metadata"

    .line 161
    invoke-virtual {p3, p2, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_3

    .line 163
    :cond_4
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public synthetic lambda$recordFailure$3$SQLiteEventStore(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 4

    .line 241
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 242
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const/4 v1, 0x1

    .line 243
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    int-to-long v2, v0

    .line 244
    sget-object v0, Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;->MAX_RETRIES_REACHED:Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->recordLogEventDropped(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic lambda$recordFailure$4$SQLiteEventStore(Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 1

    .line 237
    invoke-virtual {p3, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    const/4 p1, 0x0

    .line 239
    invoke-virtual {p3, p2, p1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$zyIfJUgrKN-DmNUtAf1_v1tCYKQ;

    invoke-direct {v0, p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$zyIfJUgrKN-DmNUtAf1_v1tCYKQ;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;)V

    .line 238
    invoke-static {p2, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->tryWithCursor(Landroid/database/Cursor;Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    const-string p2, "DELETE FROM events WHERE num_attempts >= 16"

    .line 249
    invoke-virtual {p3, p2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p2

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-object p1
.end method

.method public loadActiveContexts()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/TransportContext;",
            ">;"
        }
    .end annotation

    .line 348
    sget-object v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$_zNmnq_oSh5TqXd-sai-M-G51KU;->INSTANCE:Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$_zNmnq_oSh5TqXd-sai-M-G51KU;

    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method

.method public loadBatch(Lcom/google/android/datatransport/runtime/TransportContext;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/datatransport/runtime/TransportContext;",
            ")",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;"
        }
    .end annotation

    .line 339
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$zh_Af5fxcB0xQ-gbZvgWMd-3xyM;

    invoke-direct {v0, p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$zh_Af5fxcB0xQ-gbZvgWMd-3xyM;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/TransportContext;)V

    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    return-object p1
.end method

.method public loadClientMetrics()Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;
    .locals 4

    .line 644
    invoke-static {}, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;->newBuilder()Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;

    move-result-object v0

    .line 645
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 648
    new-instance v2, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$GJqQKZZOdxLTDFyLfs8ssKO4vhU;

    const-string v3, "SELECT log_source, reason, events_dropped_count FROM log_event_dropped"

    invoke-direct {v2, p0, v3, v1, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$GJqQKZZOdxLTDFyLfs8ssKO4vhU;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics$Builder;)V

    invoke-virtual {p0, v2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/datatransport/runtime/firebase/transport/ClientMetrics;

    return-object v0
.end method

.method public persist(Lcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 107
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getPriority()Lcom/google/android/datatransport/Priority;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 108
    invoke-virtual {p2}, Lcom/google/android/datatransport/runtime/EventInternal;->getTransportName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 109
    invoke-virtual {p1}, Lcom/google/android/datatransport/runtime/TransportContext;->getBackendName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "SQLiteEventStore"

    const-string v2, "Storing event with priority=%s, name=%s for destination %s"

    .line 104
    invoke-static {v1, v2, v0}, Lcom/google/android/datatransport/runtime/logging/Logging;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$ft-cBCu_vYdT1Vl5z3_0-VRiBNY;

    invoke-direct {v0, p0, p2, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$ft-cBCu_vYdT1Vl5z3_0-VRiBNY;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Lcom/google/android/datatransport/runtime/EventInternal;Lcom/google/android/datatransport/runtime/TransportContext;)V

    .line 111
    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 169
    :cond_0
    invoke-static {v0, v1, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;->create(JLcom/google/android/datatransport/runtime/TransportContext;Lcom/google/android/datatransport/runtime/EventInternal;)Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;

    move-result-object p1

    return-object p1
.end method

.method public recordFailure(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;)V"
        }
    .end annotation

    .line 224
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->toIdList(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 235
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$I8XvHwSMZmWycZm6KqIlR8hTuVI;

    const-string v1, "SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name"

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$I8XvHwSMZmWycZm6KqIlR8hTuVI;-><init>(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    return-void
.end method

.method public recordLogEventDropped(JLcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;Ljava/lang/String;)V
    .locals 1

    .line 588
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$JgREO163F4-2-QREPxb6kBorzgQ;

    invoke-direct {v0, p4, p3, p1, p2}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$JgREO163F4-2-QREPxb6kBorzgQ;-><init>(Ljava/lang/String;Lcom/google/android/datatransport/runtime/firebase/transport/LogEventDropped$Reason;J)V

    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    return-void
.end method

.method public recordNextCallTime(Lcom/google/android/datatransport/runtime/TransportContext;J)V
    .locals 1

    .line 314
    new-instance v0, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$vKs4wfjnuJB4pZ3kVXRrNmI1W5c;

    invoke-direct {v0, p2, p3, p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/-$$Lambda$SQLiteEventStore$vKs4wfjnuJB4pZ3kVXRrNmI1W5c;-><init>(JLcom/google/android/datatransport/runtime/TransportContext;)V

    invoke-virtual {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->inTransaction(Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function;)Ljava/lang/Object;

    return-void
.end method

.method public recordSuccess(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/google/android/datatransport/runtime/scheduling/persistence/PersistedEvent;",
            ">;)V"
        }
    .end annotation

    .line 256
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 260
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELETE FROM events WHERE _id in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->toIdList(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    return-void
.end method

.method public runCriticalSection(Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 751
    invoke-virtual {p0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->getDb()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 752
    invoke-direct {p0, v0}, Lcom/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore;->ensureBeginTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 754
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/datatransport/runtime/synchronization/SynchronizationGuard$CriticalSection;->execute()Ljava/lang/Object;

    move-result-object p1

    .line 755
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 758
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 759
    throw p1
.end method
