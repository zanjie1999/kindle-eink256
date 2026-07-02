.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$CounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field public static final enum ChapterBack:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field public static final enum ChapterForward:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field public static final enum JumpBackFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field public static final enum JumpBackFromLibraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field public static final enum JumpBackFromMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field public static final enum JumpForward:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field public static final enum PauseFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field public static final enum PauseFromLibraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field public static final enum PauseFromMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field public static final enum PauseFromNotification:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field public static final enum PlayFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field public static final enum PlayFromLibraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field public static final enum PlayFromMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field public static final enum PlayFromNotification:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field public static final enum PlayerError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 195
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/4 v1, 0x0

    const-string v2, "JumpForward"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->JumpForward:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 198
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/4 v2, 0x1

    const-string v3, "ChapterBack"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->ChapterBack:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 201
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/4 v3, 0x2

    const-string v4, "ChapterForward"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->ChapterForward:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 204
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/4 v4, 0x3

    const-string v5, "PlayFromNotification"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PlayFromNotification:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 207
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/4 v5, 0x4

    const-string v6, "PauseFromNotification"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PauseFromNotification:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 210
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/4 v6, 0x5

    const-string v7, "PlayFromMiniPlayer"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PlayFromMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 213
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/4 v7, 0x6

    const-string v8, "PlayFromFullPlayer"

    invoke-direct {v0, v8, v7}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PlayFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 216
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/4 v8, 0x7

    const-string v9, "PlayFromLibraryMiniPlayer"

    invoke-direct {v0, v9, v8}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PlayFromLibraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 219
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/16 v9, 0x8

    const-string v10, "PauseFromMiniPlayer"

    invoke-direct {v0, v10, v9}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PauseFromMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 222
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/16 v10, 0x9

    const-string v11, "PauseFromFullPlayer"

    invoke-direct {v0, v11, v10}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PauseFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 225
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/16 v11, 0xa

    const-string v12, "PauseFromLibraryMiniPlayer"

    invoke-direct {v0, v12, v11}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PauseFromLibraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 228
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/16 v12, 0xb

    const-string v13, "JumpBackFromMiniPlayer"

    invoke-direct {v0, v13, v12}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->JumpBackFromMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 231
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/16 v13, 0xc

    const-string v14, "JumpBackFromFullPlayer"

    invoke-direct {v0, v14, v13}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->JumpBackFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 234
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/16 v14, 0xd

    const-string v15, "JumpBackFromLibraryMiniPlayer"

    invoke-direct {v0, v15, v14}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->JumpBackFromLibraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 237
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/16 v15, 0xe

    const-string v14, "PlayerError"

    invoke-direct {v0, v14, v15}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PlayerError:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/16 v14, 0xf

    new-array v14, v14, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 193
    sget-object v16, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->JumpForward:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    aput-object v16, v14, v1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->ChapterBack:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    aput-object v1, v14, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->ChapterForward:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    aput-object v1, v14, v3

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PlayFromNotification:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    aput-object v1, v14, v4

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PauseFromNotification:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    aput-object v1, v14, v5

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PlayFromMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    aput-object v1, v14, v6

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PlayFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    aput-object v1, v14, v7

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PlayFromLibraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    aput-object v1, v14, v8

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PauseFromMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    aput-object v1, v14, v9

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PauseFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    aput-object v1, v14, v10

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PauseFromLibraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    aput-object v1, v14, v11

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->JumpBackFromMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    aput-object v1, v14, v12

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->JumpBackFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    aput-object v1, v14, v13

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->JumpBackFromLibraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;
    .locals 1

    .line 193
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;
    .locals 1

    .line 193
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    return-object v0
.end method
