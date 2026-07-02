.class public Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;
.super Lorg/json/JSONObject;
.source "AggregatedStatsResponse.java"


# instance fields
.field private mDaily:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/audible/mobile/stats/domain/CustomerListeningStat;",
            ">;"
        }
    .end annotation
.end field

.field private mMonthly:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/audible/mobile/stats/domain/CustomerListeningStat;",
            ">;"
        }
    .end annotation
.end field

.field private mTotal:Lcom/audible/mobile/stats/domain/CustomerListeningStat;

.field private timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;->mDaily:Ljava/util/LinkedList;

    const-string p1, "aggregated_daily_listening_stats"

    .line 36
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "interval_identifier"

    const/4 v3, 0x0

    const-string v4, "aggregated_sum"

    const-string v5, "unit"

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 37
    :goto_0
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 39
    new-instance v7, Lcom/audible/mobile/stats/domain/CustomerListeningStat;

    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 40
    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v9, v6}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v6, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;->mDaily:Ljava/util/LinkedList;

    invoke-virtual {v6, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;->mMonthly:Ljava/util/LinkedList;

    const-string p1, "aggregated_monthly_listening_stats"

    .line 46
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    :goto_1
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v3, v1, :cond_1

    .line 48
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 49
    new-instance v6, Lcom/audible/mobile/stats/domain/CustomerListeningStat;

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 50
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v7, v8, v1}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v1, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;->mMonthly:Ljava/util/LinkedList;

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const-string p1, "aggregated_total_listening_stats"

    .line 55
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 56
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 65
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 66
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v2, "AggregatedStatsResponse - No UNIT defined by service"

    .line 68
    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    const-string v2, "MilliSeconds"

    :goto_2
    const-wide/16 v5, 0x0

    .line 71
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 72
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 74
    :cond_3
    new-instance v1, Lcom/audible/mobile/stats/domain/CustomerListeningStat;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v1, v3, p1, v2}, Lcom/audible/mobile/stats/domain/CustomerListeningStat;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;->mTotal:Lcom/audible/mobile/stats/domain/CustomerListeningStat;

    :cond_4
    const-string p1, "stats_posted_timestamp"

    .line 77
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 80
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;->timestamp:Ljava/lang/String;

    :cond_5
    return-void
.end method


# virtual methods
.method public getDaily()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/CustomerListeningStat;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;->mDaily:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getMonthly()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/CustomerListeningStat;",
            ">;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;->mMonthly:Ljava/util/LinkedList;

    return-object v0
.end method

.method public getTotal()Lcom/audible/mobile/stats/domain/CustomerListeningStat;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/AggregatedStatsResponse;->mTotal:Lcom/audible/mobile/stats/domain/CustomerListeningStat;

    return-object v0
.end method
