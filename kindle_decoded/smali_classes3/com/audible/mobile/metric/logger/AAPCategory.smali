.class public final enum Lcom/audible/mobile/metric/logger/AAPCategory;
.super Ljava/lang/Enum;
.source "AAPCategory.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/Metric$Category;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/metric/logger/AAPCategory;",
        ">;",
        "Lcom/audible/mobile/metric/domain/Metric$Category;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/metric/logger/AAPCategory;

.field public static final enum ACLS:Lcom/audible/mobile/metric/logger/AAPCategory;

.field public static final enum AColS:Lcom/audible/mobile/metric/logger/AAPCategory;

.field public static final enum AGLS:Lcom/audible/mobile/metric/logger/AAPCategory;

.field public static final enum Annotations:Lcom/audible/mobile/metric/logger/AAPCategory;

.field public static final enum Chapters:Lcom/audible/mobile/metric/logger/AAPCategory;

.field public static final enum DrmPlayer:Lcom/audible/mobile/metric/logger/AAPCategory;

.field public static final enum ExoPlayer:Lcom/audible/mobile/metric/logger/AAPCategory;

.field public static final enum Hls:Lcom/audible/mobile/metric/logger/AAPCategory;

.field public static final enum LegacyAudibleSdk:Lcom/audible/mobile/metric/logger/AAPCategory;

.field public static final enum Lph:Lcom/audible/mobile/metric/logger/AAPCategory;

.field public static final enum PlayReady:Lcom/audible/mobile/metric/logger/AAPCategory;

.field public static final enum Player:Lcom/audible/mobile/metric/logger/AAPCategory;

.field public static final enum Search:Lcom/audible/mobile/metric/logger/AAPCategory;

.field public static final enum Voucher:Lcom/audible/mobile/metric/logger/AAPCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 6
    new-instance v0, Lcom/audible/mobile/metric/logger/AAPCategory;

    const/4 v1, 0x0

    const-string v2, "Player"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/metric/logger/AAPCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->Player:Lcom/audible/mobile/metric/logger/AAPCategory;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPCategory;

    const/4 v2, 0x1

    const-string v3, "PlayReady"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/metric/logger/AAPCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->PlayReady:Lcom/audible/mobile/metric/logger/AAPCategory;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPCategory;

    const/4 v3, 0x2

    const-string v4, "Hls"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/metric/logger/AAPCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->Hls:Lcom/audible/mobile/metric/logger/AAPCategory;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPCategory;

    const/4 v4, 0x3

    const-string v5, "DrmPlayer"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/metric/logger/AAPCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->DrmPlayer:Lcom/audible/mobile/metric/logger/AAPCategory;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPCategory;

    const/4 v5, 0x4

    const-string v6, "ExoPlayer"

    invoke-direct {v0, v6, v5}, Lcom/audible/mobile/metric/logger/AAPCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->ExoPlayer:Lcom/audible/mobile/metric/logger/AAPCategory;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPCategory;

    const/4 v6, 0x5

    const-string v7, "Lph"

    invoke-direct {v0, v7, v6}, Lcom/audible/mobile/metric/logger/AAPCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->Lph:Lcom/audible/mobile/metric/logger/AAPCategory;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPCategory;

    const/4 v7, 0x6

    const-string v8, "LegacyAudibleSdk"

    invoke-direct {v0, v8, v7}, Lcom/audible/mobile/metric/logger/AAPCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->LegacyAudibleSdk:Lcom/audible/mobile/metric/logger/AAPCategory;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPCategory;

    const/4 v8, 0x7

    const-string v9, "ACLS"

    invoke-direct {v0, v9, v8}, Lcom/audible/mobile/metric/logger/AAPCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->ACLS:Lcom/audible/mobile/metric/logger/AAPCategory;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPCategory;

    const/16 v9, 0x8

    const-string v10, "Voucher"

    invoke-direct {v0, v10, v9}, Lcom/audible/mobile/metric/logger/AAPCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->Voucher:Lcom/audible/mobile/metric/logger/AAPCategory;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPCategory;

    const/16 v10, 0x9

    const-string v11, "Chapters"

    invoke-direct {v0, v11, v10}, Lcom/audible/mobile/metric/logger/AAPCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->Chapters:Lcom/audible/mobile/metric/logger/AAPCategory;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPCategory;

    const/16 v11, 0xa

    const-string v12, "AGLS"

    invoke-direct {v0, v12, v11}, Lcom/audible/mobile/metric/logger/AAPCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->AGLS:Lcom/audible/mobile/metric/logger/AAPCategory;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPCategory;

    const/16 v12, 0xb

    const-string v13, "AColS"

    invoke-direct {v0, v13, v12}, Lcom/audible/mobile/metric/logger/AAPCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->AColS:Lcom/audible/mobile/metric/logger/AAPCategory;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPCategory;

    const/16 v13, 0xc

    const-string v14, "Annotations"

    invoke-direct {v0, v14, v13}, Lcom/audible/mobile/metric/logger/AAPCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->Annotations:Lcom/audible/mobile/metric/logger/AAPCategory;

    new-instance v0, Lcom/audible/mobile/metric/logger/AAPCategory;

    const/16 v14, 0xd

    const-string v15, "Search"

    invoke-direct {v0, v15, v14}, Lcom/audible/mobile/metric/logger/AAPCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->Search:Lcom/audible/mobile/metric/logger/AAPCategory;

    const/16 v15, 0xe

    new-array v15, v15, [Lcom/audible/mobile/metric/logger/AAPCategory;

    .line 5
    sget-object v16, Lcom/audible/mobile/metric/logger/AAPCategory;->Player:Lcom/audible/mobile/metric/logger/AAPCategory;

    aput-object v16, v15, v1

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->PlayReady:Lcom/audible/mobile/metric/logger/AAPCategory;

    aput-object v1, v15, v2

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->Hls:Lcom/audible/mobile/metric/logger/AAPCategory;

    aput-object v1, v15, v3

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->DrmPlayer:Lcom/audible/mobile/metric/logger/AAPCategory;

    aput-object v1, v15, v4

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->ExoPlayer:Lcom/audible/mobile/metric/logger/AAPCategory;

    aput-object v1, v15, v5

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->Lph:Lcom/audible/mobile/metric/logger/AAPCategory;

    aput-object v1, v15, v6

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->LegacyAudibleSdk:Lcom/audible/mobile/metric/logger/AAPCategory;

    aput-object v1, v15, v7

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->ACLS:Lcom/audible/mobile/metric/logger/AAPCategory;

    aput-object v1, v15, v8

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->Voucher:Lcom/audible/mobile/metric/logger/AAPCategory;

    aput-object v1, v15, v9

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->Chapters:Lcom/audible/mobile/metric/logger/AAPCategory;

    aput-object v1, v15, v10

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->AGLS:Lcom/audible/mobile/metric/logger/AAPCategory;

    aput-object v1, v15, v11

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->AColS:Lcom/audible/mobile/metric/logger/AAPCategory;

    aput-object v1, v15, v12

    sget-object v1, Lcom/audible/mobile/metric/logger/AAPCategory;->Annotations:Lcom/audible/mobile/metric/logger/AAPCategory;

    aput-object v1, v15, v13

    aput-object v0, v15, v14

    sput-object v15, Lcom/audible/mobile/metric/logger/AAPCategory;->$VALUES:[Lcom/audible/mobile/metric/logger/AAPCategory;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/metric/logger/AAPCategory;
    .locals 1

    .line 5
    const-class v0, Lcom/audible/mobile/metric/logger/AAPCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/metric/logger/AAPCategory;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/metric/logger/AAPCategory;
    .locals 1

    .line 5
    sget-object v0, Lcom/audible/mobile/metric/logger/AAPCategory;->$VALUES:[Lcom/audible/mobile/metric/logger/AAPCategory;

    invoke-virtual {v0}, [Lcom/audible/mobile/metric/logger/AAPCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/metric/logger/AAPCategory;

    return-object v0
.end method
