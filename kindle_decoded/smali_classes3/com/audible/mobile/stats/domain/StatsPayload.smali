.class public Lcom/audible/mobile/stats/domain/StatsPayload;
.super Lcom/audible/mobile/stats/domain/AudibleStatsAndBadgesPayload;
.source "StatsPayload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/stats/domain/StatsPayload$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>([Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Lcom/audible/mobile/stats/domain/AudibleStatsAndBadgesPayload;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p1, v0, [Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    .line 20
    :cond_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 21
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 22
    aget-object v2, p1, v0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "stats"

    .line 24
    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method
