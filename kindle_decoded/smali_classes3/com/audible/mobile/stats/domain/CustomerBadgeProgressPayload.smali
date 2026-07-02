.class public Lcom/audible/mobile/stats/domain/CustomerBadgeProgressPayload;
.super Lcom/audible/mobile/stats/domain/AudibleStatsAndBadgesPayload;
.source "CustomerBadgeProgressPayload.java"


# direct methods
.method public constructor <init>(Lcom/audible/application/stats/integration/StoreType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1}, Lcom/audible/mobile/stats/domain/AudibleStatsAndBadgesPayload;-><init>(Lcom/audible/application/stats/integration/StoreType;)V

    return-void
.end method
