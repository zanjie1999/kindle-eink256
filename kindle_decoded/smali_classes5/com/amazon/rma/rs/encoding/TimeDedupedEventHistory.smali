.class public Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;
.super Ljava/lang/Object;
.source "TimeDedupedEventHistory.java"


# instance fields
.field private final contextToSettingToTimestampInMillis:Ljava/util/Map;

.field private final millisecondsToDedupe:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->contextToSettingToTimestampInMillis:Ljava/util/Map;

    .line 17
    iput-wide p1, p0, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->millisecondsToDedupe:J

    return-void
.end method

.method private getSettingToTimestampMap(Ljava/lang/String;)Ljava/util/Map;
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->contextToSettingToTimestampInMillis:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 59
    iget-object v1, p0, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->contextToSettingToTimestampInMillis:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->contextToSettingToTimestampInMillis:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public recordedSettingContext(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->getSettingToTimestampMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p3, p4}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shouldDedupeSettingContext(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->getSettingToTimestampMap(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 52
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr p3, p1

    iget-wide p1, p0, Lcom/amazon/rma/rs/encoding/TimeDedupedEventHistory;->millisecondsToDedupe:J

    cmp-long v0, p3, p1

    if-gez v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
