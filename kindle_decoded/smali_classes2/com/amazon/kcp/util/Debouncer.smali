.class public Lcom/amazon/kcp/util/Debouncer;
.super Ljava/lang/Object;
.source "Debouncer.java"


# static fields
.field private static final instance:Lcom/amazon/kcp/util/Debouncer;


# instance fields
.field private final debounceTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kcp/util/Debouncer;

    invoke-direct {v0}, Lcom/amazon/kcp/util/Debouncer;-><init>()V

    sput-object v0, Lcom/amazon/kcp/util/Debouncer;->instance:Lcom/amazon/kcp/util/Debouncer;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/util/Debouncer;->debounceTimeMap:Ljava/util/Map;

    return-void
.end method

.method public static getInstance()Lcom/amazon/kcp/util/Debouncer;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kcp/util/Debouncer;->instance:Lcom/amazon/kcp/util/Debouncer;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized debounce(Ljava/lang/String;Ljava/lang/Runnable;J)V
    .locals 5

    monitor-enter p0

    .line 41
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/util/Debouncer;->debounceTimeMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    .line 45
    :cond_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 48
    :cond_1
    iget-object p2, p0, Lcom/amazon/kcp/util/Debouncer;->debounceTimeMap:Ljava/util/Map;

    add-long/2addr v1, p3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
