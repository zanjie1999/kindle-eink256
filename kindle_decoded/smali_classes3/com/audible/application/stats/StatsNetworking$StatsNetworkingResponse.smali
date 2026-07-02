.class Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;
.super Ljava/lang/Object;
.source "StatsNetworking.java"

# interfaces
.implements Lcom/audible/application/stats/StatsNetworking$IStatsNetworkingResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/application/stats/StatsNetworking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StatsNetworkingResponse"
.end annotation


# static fields
.field private static final STATS_POSTED_TIMESTAMP:Ljava/lang/String; = "stats_posted_timestamp"

.field private static final STATS_RESPONSE:Ljava/lang/String; = "stats_response"


# instance fields
.field private mErrorStatsEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/ListeningStatsEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsClientError:Z

.field private mIsError:Z

.field private timestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/audible/application/stats/StatsNetworking;)V
    .locals 0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->mErrorStatsEvents:Ljava/util/List;

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->mIsError:Z

    .line 107
    iput-boolean p1, p0, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->mIsClientError:Z

    return-void
.end method


# virtual methods
.method public addErrorStatsEvent(Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->mErrorStatsEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getErrorStatsEvents()[Lcom/audible/mobile/stats/domain/ListeningStatsEvent;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->mErrorStatsEvents:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    return-object v0
.end method

.method public getStatsPostedTimestamp()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->timestamp:Ljava/lang/String;

    return-object v0
.end method

.method public isClientError()Z
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->mIsClientError:Z

    return v0
.end method

.method public isError()Z
    .locals 1

    .line 134
    iget-boolean v0, p0, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->mIsError:Z

    return v0
.end method

.method public setIsClientError(Z)V
    .locals 0

    .line 117
    iput-boolean p1, p0, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->mIsClientError:Z

    return-void
.end method

.method public setIsError(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->mIsError:Z

    return-void
.end method

.method public setStatsNetworkingJSON(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "stats_response"

    .line 148
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "stats_posted_timestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/application/stats/StatsNetworking$StatsNetworkingResponse;->timestamp:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "StatsNetworking setStatsNetworkingJSON failed to report timestamp, "

    .line 150
    invoke-static {v0, p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
