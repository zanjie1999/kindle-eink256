.class public Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;
.super Ljava/lang/Object;
.source "CustomerBadgeProgress.java"


# static fields
.field private static final BADGE_METADATA:Ljava/lang/String; = "badge_metadata"

.field private static final BADGE_METADATA_ID:Ljava/lang/String; = "badge_metadata_id"

.field private static final EARNED_BADGE_LEVEL:Ljava/lang/String; = "earned_badge_level"

.field private static final LEVEL_ACQUIRED_TIME:Ljava/lang/String; = "level_acquired_time"

.field private static final LEVEL_METADATA:Ljava/lang/String; = "level_metadata"

.field private static final LEVEL_METADATA_ID:Ljava/lang/String; = "level_metadata_id"

.field private static final NEXT_BADGE_LEVEL_METADATA_ID:Ljava/lang/String; = "next_badge_level_metadata_id"

.field private static final PERCENT_PROGRESS_TO_NEXT_LEVEL:Ljava/lang/String; = "percent_progress_to_next_level"


# instance fields
.field private final badgeMetadataId:Ljava/lang/String;

.field private final levelAcquiredTime:Ljava/util/Date;

.field private final levelMetadataId:Ljava/lang/String;

.field private final nextBadgeLevelMetadataId:Ljava/lang/String;

.field private final percentProgressToNextLevel:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Date;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->badgeMetadataId:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->nextBadgeLevelMetadataId:Ljava/lang/String;

    .line 36
    iput-object p3, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->percentProgressToNextLevel:Ljava/lang/Integer;

    .line 37
    iput-object p4, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->levelAcquiredTime:Ljava/util/Date;

    .line 38
    iput-object p5, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->levelMetadataId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "badge_metadata"

    .line 44
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "badge_metadata_id"

    .line 45
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->badgeMetadataId:Ljava/lang/String;

    const-string v0, "next_badge_level_metadata_id"

    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->nextBadgeLevelMetadataId:Ljava/lang/String;

    goto :goto_0

    .line 49
    :cond_0
    iput-object v2, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->nextBadgeLevelMetadataId:Ljava/lang/String;

    :goto_0
    const-string v0, "percent_progress_to_next_level"

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->percentProgressToNextLevel:Ljava/lang/Integer;

    goto :goto_1

    .line 54
    :cond_1
    iput-object v2, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->percentProgressToNextLevel:Ljava/lang/Integer;

    :goto_1
    const-string v0, "earned_badge_level"

    .line 56
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v3, "original"

    if-eqz v1, :cond_5

    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "level_acquired_time"

    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 59
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/audible/application/stats/util/Util;->parseFromISO8601(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->levelAcquiredTime:Ljava/util/Date;

    goto :goto_2

    .line 62
    :cond_2
    iput-object v2, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->levelAcquiredTime:Ljava/util/Date;

    :goto_2
    const-string v0, "level_metadata"

    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "level_metadata_id"

    .line 66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->levelMetadataId:Ljava/lang/String;

    goto :goto_3

    .line 69
    :cond_3
    iput-object v3, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->levelMetadataId:Ljava/lang/String;

    goto :goto_3

    .line 72
    :cond_4
    iput-object v3, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->levelMetadataId:Ljava/lang/String;

    goto :goto_3

    .line 75
    :cond_5
    iput-object v3, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->levelMetadataId:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->levelAcquiredTime:Ljava/util/Date;

    :goto_3
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 113
    :cond_0
    instance-of v1, p1, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    if-eqz v1, :cond_2

    .line 114
    check-cast p1, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    .line 115
    iget-object v1, p1, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->badgeMetadataId:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->badgeMetadataId:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getLevelMetadataId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getLevelMetadataId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 120
    :cond_1
    iget-object v1, p1, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->badgeMetadataId:Ljava/lang/String;

    iget-object v2, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->badgeMetadataId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getLevelMetadataId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getLevelMetadataId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method public getBadgeMetadataId()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->badgeMetadataId:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelAcquiredTime()Ljava/util/Date;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->levelAcquiredTime:Ljava/util/Date;

    return-object v0
.end method

.method public getLevelMetadataId()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->levelMetadataId:Ljava/lang/String;

    return-object v0
.end method

.method public getNextBadgeLevelMetadataId()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->nextBadgeLevelMetadataId:Ljava/lang/String;

    return-object v0
.end method
