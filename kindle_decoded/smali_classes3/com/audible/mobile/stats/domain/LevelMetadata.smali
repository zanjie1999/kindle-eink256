.class public Lcom/audible/mobile/stats/domain/LevelMetadata;
.super Ljava/lang/Object;
.source "LevelMetadata.java"

# interfaces
.implements Lcom/audible/mobile/stats/domain/BadgeIcon;


# static fields
.field private static final DESCRIPTION:Ljava/lang/String; = "description"

.field private static final IMAGE_URL:Ljava/lang/String; = "image_url"

.field private static final LEVEL_METADATA_ID:Ljava/lang/String; = "level_metadata_id"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final REWARD_DESCRIPTION:Ljava/lang/String; = "reward_description"

.field private static final SHARE_MESSAGE:Ljava/lang/String; = "brag_message"

.field private static final SHARE_SUBJECT:Ljava/lang/String; = "brag_subject"


# instance fields
.field private final badgeMetadataId:Ljava/lang/String;

.field private final description:Ljava/lang/String;

.field private final imageCacheId:Ljava/lang/String;

.field private final imageUrl:Ljava/lang/String;

.field private final levelMetadataId:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final shareMessage:Ljava/lang/String;

.field private final shareSubject:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->levelMetadataId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->description:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->imageUrl:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->name:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->badgeMetadataId:Ljava/lang/String;

    .line 41
    iput-object p6, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->imageCacheId:Ljava/lang/String;

    .line 42
    iput-object p7, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->shareSubject:Ljava/lang/String;

    .line 43
    iput-object p8, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->shareMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "level_metadata_id"

    .line 49
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->levelMetadataId:Ljava/lang/String;

    const-string v0, "reward_description"

    .line 50
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->description:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "description"

    .line 57
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->description:Ljava/lang/String;

    goto :goto_0

    .line 60
    :cond_1
    iput-object v2, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->description:Ljava/lang/String;

    :goto_0
    const-string v0, "image_url"

    .line 66
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->imageUrl:Ljava/lang/String;

    goto :goto_1

    .line 69
    :cond_2
    iput-object v2, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->imageUrl:Ljava/lang/String;

    :goto_1
    const-string v0, "name"

    .line 71
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->name:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->badgeMetadataId:Ljava/lang/String;

    .line 74
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->imageUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 75
    iput-object v2, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->imageCacheId:Ljava/lang/String;

    goto :goto_2

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->levelMetadataId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->imageUrl:Ljava/lang/String;

    const-string v1, "."

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->imageCacheId:Ljava/lang/String;

    :goto_2
    const-string p2, "brag_subject"

    .line 80
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->shareSubject:Ljava/lang/String;

    goto :goto_3

    .line 83
    :cond_4
    iput-object v2, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->shareSubject:Ljava/lang/String;

    :goto_3
    const-string p2, "brag_message"

    .line 86
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 87
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->shareMessage:Ljava/lang/String;

    goto :goto_4

    .line 89
    :cond_5
    iput-object v2, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->shareMessage:Ljava/lang/String;

    :goto_4
    return-void
.end method


# virtual methods
.method public getBadgeImageId()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->imageCacheId:Ljava/lang/String;

    return-object v0
.end method

.method public getBadgeMetadataId()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->badgeMetadataId:Ljava/lang/String;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLevelMetadataId()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->levelMetadataId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getShareMessage()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->shareMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getShareSubject()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/LevelMetadata;->shareSubject:Ljava/lang/String;

    return-object v0
.end method
