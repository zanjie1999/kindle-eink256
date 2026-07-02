.class public final Lcom/amazon/kindle/performance/AtlasPerformanceMarker;
.super Ljava/lang/Object;
.source "AtlasPerformanceMarker.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/performance/PerformanceMarker;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAtlasPerformanceMarker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AtlasPerformanceMarker.kt\ncom/amazon/kindle/performance/AtlasPerformanceMarker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,46:1\n734#2:47\n825#2,2:48\n1819#2,2:50\n*E\n*S KotlinDebug\n*F\n+ 1 AtlasPerformanceMarker.kt\ncom/amazon/kindle/performance/AtlasPerformanceMarker\n*L\n36#1:47\n36#1,2:48\n36#1,2:50\n*E\n"
.end annotation


# instance fields
.field private emitTime:J

.field private final metadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;->name:Ljava/lang/String;

    iput-wide p2, p0, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;->emitTime:J

    .line 13
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;->metadata:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public addMetadata(Ljava/lang/String;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;->metadata:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addMetadata(Ljava/util/List;)Lcom/amazon/kindle/krx/performance/PerformanceMarker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/kindle/krx/performance/PerformanceMarker;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 22
    iget-object v0, p0, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;->metadata:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public emit()V
    .locals 6

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object v1, p0, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;->metadata:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, ", "

    if-nez v1, :cond_4

    .line 36
    iget-object v1, p0, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;->metadata:Ljava/util/List;

    .line 47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_0

    .line 36
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string v1, ": "

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 39
    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    :goto_3
    iget-wide v1, p0, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;->emitTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PERF MARKER"

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public overrideTime(J)Lcom/amazon/kindle/krx/performance/PerformanceMarker;
    .locals 0

    .line 28
    iput-wide p1, p0, Lcom/amazon/kindle/performance/AtlasPerformanceMarker;->emitTime:J

    return-object p0
.end method
