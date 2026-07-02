.class public final enum Lcom/audible/mobile/domain/ContentDeliveryType;
.super Ljava/lang/Enum;
.source "ContentDeliveryType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/domain/ContentDeliveryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum AudioPart:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum Bundle:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum Credits:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum GiftMembership:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum Hardgood:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum Hardware:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum LanguageLearning:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum MultiPartBook:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum MultiPartIssue:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum Periodical:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum PodcastEpisode:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum PodcastParent:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum PodcastSeason:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum SinglePartBook:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum SinglePartIssue:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum Subscription:Lcom/audible/mobile/domain/ContentDeliveryType;

.field public static final enum Unknown:Lcom/audible/mobile/domain/ContentDeliveryType;


# instance fields
.field itemDeliveryType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 19
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const/4 v1, 0x0

    const-string v2, "SinglePartBook"

    const-string v3, "Single Part Book"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->SinglePartBook:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 20
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const/4 v2, 0x1

    const-string v3, "MultiPartBook"

    const-string v4, "Multi Part Book"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->MultiPartBook:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 21
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const/4 v3, 0x2

    const-string v4, "Subscription"

    invoke-direct {v0, v4, v3, v4}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->Subscription:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 22
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const/4 v4, 0x3

    const-string v5, "AudioPart"

    const-string v6, "Audio Part"

    invoke-direct {v0, v5, v4, v6}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->AudioPart:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 23
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const/4 v5, 0x4

    const-string v6, "SinglePartIssue"

    const-string v7, "Single Part Issue"

    invoke-direct {v0, v6, v5, v7}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->SinglePartIssue:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 24
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const/4 v6, 0x5

    const-string v7, "MultiPartIssue"

    const-string v8, "Multi Part Issue"

    invoke-direct {v0, v7, v6, v8}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->MultiPartIssue:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 25
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const/4 v7, 0x6

    const-string v8, "Periodical"

    invoke-direct {v0, v8, v7, v8}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->Periodical:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 26
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const/4 v8, 0x7

    const-string v9, "Bundle"

    invoke-direct {v0, v9, v8, v9}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->Bundle:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 27
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const/16 v9, 0x8

    const-string v10, "Hardgood"

    invoke-direct {v0, v10, v9, v10}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->Hardgood:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 28
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const/16 v10, 0x9

    const-string v11, "GiftMembership"

    const-string v12, "Gift Membership"

    invoke-direct {v0, v11, v10, v12}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->GiftMembership:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 29
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const/16 v11, 0xa

    const-string v12, "Hardware"

    invoke-direct {v0, v12, v11, v12}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->Hardware:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 30
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const/16 v12, 0xb

    const-string v13, "Credits"

    invoke-direct {v0, v13, v12, v13}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->Credits:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 31
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const/16 v13, 0xc

    const-string v14, "LanguageLearning"

    const-string v15, "Language Learning"

    invoke-direct {v0, v14, v13, v15}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->LanguageLearning:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 32
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const/16 v14, 0xd

    const-string v15, "PodcastParent"

    invoke-direct {v0, v15, v14, v15}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->PodcastParent:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 33
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const-string v15, "PodcastSeason"

    const/16 v14, 0xe

    invoke-direct {v0, v15, v14, v15}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->PodcastSeason:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 34
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const-string v14, "PodcastEpisode"

    const/16 v15, 0xf

    const-string v13, "PodcastEpisode"

    invoke-direct {v0, v14, v15, v13}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->PodcastEpisode:Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 35
    new-instance v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    const-string v13, "Unknown"

    const/16 v14, 0x10

    const-string v15, "Unknown"

    invoke-direct {v0, v13, v14, v15}, Lcom/audible/mobile/domain/ContentDeliveryType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->Unknown:Lcom/audible/mobile/domain/ContentDeliveryType;

    const/16 v13, 0x11

    new-array v13, v13, [Lcom/audible/mobile/domain/ContentDeliveryType;

    .line 17
    sget-object v14, Lcom/audible/mobile/domain/ContentDeliveryType;->SinglePartBook:Lcom/audible/mobile/domain/ContentDeliveryType;

    aput-object v14, v13, v1

    sget-object v1, Lcom/audible/mobile/domain/ContentDeliveryType;->MultiPartBook:Lcom/audible/mobile/domain/ContentDeliveryType;

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/domain/ContentDeliveryType;->Subscription:Lcom/audible/mobile/domain/ContentDeliveryType;

    aput-object v1, v13, v3

    sget-object v1, Lcom/audible/mobile/domain/ContentDeliveryType;->AudioPart:Lcom/audible/mobile/domain/ContentDeliveryType;

    aput-object v1, v13, v4

    sget-object v1, Lcom/audible/mobile/domain/ContentDeliveryType;->SinglePartIssue:Lcom/audible/mobile/domain/ContentDeliveryType;

    aput-object v1, v13, v5

    sget-object v1, Lcom/audible/mobile/domain/ContentDeliveryType;->MultiPartIssue:Lcom/audible/mobile/domain/ContentDeliveryType;

    aput-object v1, v13, v6

    sget-object v1, Lcom/audible/mobile/domain/ContentDeliveryType;->Periodical:Lcom/audible/mobile/domain/ContentDeliveryType;

    aput-object v1, v13, v7

    sget-object v1, Lcom/audible/mobile/domain/ContentDeliveryType;->Bundle:Lcom/audible/mobile/domain/ContentDeliveryType;

    aput-object v1, v13, v8

    sget-object v1, Lcom/audible/mobile/domain/ContentDeliveryType;->Hardgood:Lcom/audible/mobile/domain/ContentDeliveryType;

    aput-object v1, v13, v9

    sget-object v1, Lcom/audible/mobile/domain/ContentDeliveryType;->GiftMembership:Lcom/audible/mobile/domain/ContentDeliveryType;

    aput-object v1, v13, v10

    sget-object v1, Lcom/audible/mobile/domain/ContentDeliveryType;->Hardware:Lcom/audible/mobile/domain/ContentDeliveryType;

    aput-object v1, v13, v11

    sget-object v1, Lcom/audible/mobile/domain/ContentDeliveryType;->Credits:Lcom/audible/mobile/domain/ContentDeliveryType;

    aput-object v1, v13, v12

    sget-object v1, Lcom/audible/mobile/domain/ContentDeliveryType;->LanguageLearning:Lcom/audible/mobile/domain/ContentDeliveryType;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/domain/ContentDeliveryType;->PodcastParent:Lcom/audible/mobile/domain/ContentDeliveryType;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/domain/ContentDeliveryType;->PodcastSeason:Lcom/audible/mobile/domain/ContentDeliveryType;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/audible/mobile/domain/ContentDeliveryType;->PodcastEpisode:Lcom/audible/mobile/domain/ContentDeliveryType;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    const/16 v1, 0x10

    aput-object v0, v13, v1

    sput-object v13, Lcom/audible/mobile/domain/ContentDeliveryType;->$VALUES:[Lcom/audible/mobile/domain/ContentDeliveryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput-object p3, p0, Lcom/audible/mobile/domain/ContentDeliveryType;->itemDeliveryType:Ljava/lang/String;

    return-void
.end method

.method public static safeValueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/ContentDeliveryType;
    .locals 0

    .line 57
    :try_start_0
    invoke-static {p0}, Lcom/audible/mobile/domain/ContentDeliveryType;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/ContentDeliveryType;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 59
    :catch_0
    sget-object p0, Lcom/audible/mobile/domain/ContentDeliveryType;->Unknown:Lcom/audible/mobile/domain/ContentDeliveryType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/domain/ContentDeliveryType;
    .locals 1

    .line 17
    const-class v0, Lcom/audible/mobile/domain/ContentDeliveryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/domain/ContentDeliveryType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/domain/ContentDeliveryType;
    .locals 1

    .line 17
    sget-object v0, Lcom/audible/mobile/domain/ContentDeliveryType;->$VALUES:[Lcom/audible/mobile/domain/ContentDeliveryType;

    invoke-virtual {v0}, [Lcom/audible/mobile/domain/ContentDeliveryType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/domain/ContentDeliveryType;

    return-object v0
.end method
