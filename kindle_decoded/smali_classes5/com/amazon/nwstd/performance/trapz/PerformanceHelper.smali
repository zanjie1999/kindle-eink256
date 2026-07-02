.class public Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;
.super Ljava/lang/Object;
.source "PerformanceHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformanceHelper"

.field private static asin:Ljava/lang/String;

.field private static final kindleConstantList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final nwstdConstantList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->nwstdConstantList:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->kindleConstantList:Ljava/util/List;

    return-void
.end method

.method public static endTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V
    .locals 3

    .line 56
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->nwstdConstantList:Ljava/util/List;

    monitor-enter v0

    .line 58
    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->nwstdConstantList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getStartMetricString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 59
    monitor-exit v0

    return-void

    .line 62
    :cond_0
    sget-object v1, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->nwstdConstantList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getStartMetricString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 63
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    invoke-virtual {p0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getEndMetricString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->asin:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 63
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static getAsin()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public static initialize()V
    .locals 3

    .line 21
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->kindleConstantList:Ljava/util/List;

    monitor-enter v0

    .line 22
    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->kindleConstantList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 25
    sget-object v1, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->kindleConstantList:Ljava/util/List;

    sget-object v2, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->BOOK_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v2}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getStartMetricString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", t: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PerformanceHelper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setAsin(Ljava/lang/String;)V
    .locals 0

    .line 34
    sput-object p0, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->asin:Ljava/lang/String;

    return-void
.end method

.method public static setTitle(Ljava/lang/String;)V
    .locals 0

    .line 42
    sput-object p0, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->title:Ljava/lang/String;

    return-void
.end method

.method public static startTrace(Lcom/amazon/nwstd/performance/trapz/NwstdPerformanceConstants;)V
    .locals 3

    .line 46
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    sget-object v0, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->nwstdConstantList:Ljava/util/List;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->nwstdConstantList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getStartMetricString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 49
    sget-object v1, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->nwstdConstantList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getStartMetricString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {p0}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getStartMetricString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->asin:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amazon/nwstd/performance/trapz/PerformanceHelper;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 50
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method
