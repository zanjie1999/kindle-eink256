.class public Lcom/audible/mobile/stats/domain/BadgeMetadata;
.super Ljava/lang/Object;
.source "BadgeMetadata.java"

# interfaces
.implements Lcom/audible/mobile/stats/domain/BadgeIcon;


# static fields
.field private static final BADGE_METADATA_ID:Ljava/lang/String; = "badge_metadata_id"

.field private static final DESCRIPTION:Ljava/lang/String; = "reward_description"

.field private static final IMAGE_URL:Ljava/lang/String; = "image_url"

.field private static final LEVEL_METADATA:Ljava/lang/String; = "level_metadata"

.field private static final NAME:Ljava/lang/String; = "name"


# instance fields
.field private final badgeMetadataId:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final imageCacheId:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private levelMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/LevelMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->description:Ljava/lang/String;

    .line 44
    iput-object p3, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->imageUrl:Ljava/lang/String;

    .line 45
    iput-object p4, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->name:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->badgeMetadataId:Ljava/lang/String;

    .line 47
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->levelMetadata:Ljava/util/List;

    .line 48
    iput-object p5, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->imageCacheId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "badge_metadata_id"

    .line 60
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->badgeMetadataId:Ljava/lang/String;

    const-string v0, "reward_description"

    .line 61
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->description:Ljava/lang/String;

    goto :goto_0

    .line 64
    :cond_0
    iput-object v2, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->description:Ljava/lang/String;

    :goto_0
    const-string v0, "image_url"

    .line 69
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 70
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->imageUrl:Ljava/lang/String;

    goto :goto_1

    .line 72
    :cond_1
    iput-object v2, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->imageUrl:Ljava/lang/String;

    :goto_1
    const-string v0, "name"

    .line 74
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->name:Ljava/lang/String;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->levelMetadata:Ljava/util/List;

    const-string v0, "level_metadata"

    .line 76
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 78
    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->levelMetadata:Ljava/util/List;

    new-instance v3, Lcom/audible/mobile/stats/domain/LevelMetadata;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    iget-object v5, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->badgeMetadataId:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lcom/audible/mobile/stats/domain/LevelMetadata;-><init>(Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 82
    :cond_2
    iget-object p1, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->imageUrl:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 83
    iput-object v2, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->imageCacheId:Ljava/lang/String;

    goto :goto_3

    .line 85
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->badgeMetadataId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->imageUrl:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->imageCacheId:Ljava/lang/String;

    :goto_3
    return-void
.end method


# virtual methods
.method public getBadgeImageId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->imageCacheId:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeMetadataId()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->badgeMetadataId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelMetadata()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/LevelMetadata;",
            ">;"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->levelMetadata:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setLevelMetadata(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/LevelMetadata;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/BadgeMetadata;->levelMetadata:Ljava/util/List;

    return-void
.end method
