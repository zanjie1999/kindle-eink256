.class public Lcom/audible/mobile/stats/domain/BadgeMetadataPayload;
.super Lcom/audible/mobile/stats/domain/AudibleStatsAndBadgesPayload;
.source "BadgeMetadataPayload.java"


# direct methods
.method public constructor <init>(Lcom/audible/application/stats/integration/StoreType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1}, Lcom/audible/mobile/stats/domain/AudibleStatsAndBadgesPayload;-><init>(Lcom/audible/application/stats/integration/StoreType;)V

    return-void
.end method


# virtual methods
.method public toRestfulString()Ljava/lang/String;
    .locals 2

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/audible/mobile/stats/domain/AudibleStatsAndBadgesPayload;->toRestfulString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "since_last_metadata_update_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2000-11-20T15:12:43+00:00"

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
