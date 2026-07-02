.class final enum Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;
.super Ljava/lang/Enum;
.source "LocationSeekerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/LocationSeekerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PlayerActionMetric"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

.field public static final enum JumpBackMetric:Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

.field public static final enum PausedMetric:Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

.field public static final enum PlayedMetric:Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;


# instance fields
.field private final fullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field private final libraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

.field private final miniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 415
    new-instance v6, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    sget-object v3, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PauseFromMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    sget-object v4, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PauseFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    sget-object v5, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PauseFromLibraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const-string v1, "PausedMetric"

    const/4 v2, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;-><init>(Ljava/lang/String;ILcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;)V

    sput-object v6, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->PausedMetric:Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    .line 420
    new-instance v0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    sget-object v10, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PlayFromMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    sget-object v11, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PlayFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    sget-object v12, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->PlayFromLibraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const-string v8, "PlayedMetric"

    const/4 v9, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;-><init>(Ljava/lang/String;ILcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->PlayedMetric:Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    .line 425
    new-instance v0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    sget-object v4, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->JumpBackFromMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    sget-object v5, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->JumpBackFromFullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    sget-object v6, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;->JumpBackFromLibraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    const-string v2, "JumpBackMetric"

    const/4 v3, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;-><init>(Ljava/lang/String;ILcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;)V

    sput-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->JumpBackMetric:Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    .line 413
    sget-object v2, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->PausedMetric:Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->PlayedMetric:Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->$VALUES:[Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;",
            "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;",
            "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;",
            ")V"
        }
    .end annotation

    .line 440
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 441
    iput-object p3, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->miniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 442
    iput-object p4, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->fullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    .line 443
    iput-object p5, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->libraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    return-void
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->miniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    return-object p0
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->fullPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    return-object p0
.end method

.method static synthetic access$400(Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;
    .locals 0

    .line 413
    iget-object p0, p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->libraryMiniPlayer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PlayerMetricKey;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;
    .locals 1

    .line 413
    const-class v0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;
    .locals 1

    .line 413
    sget-object v0, Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->$VALUES:[Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/controller/LocationSeekerController$PlayerActionMetric;

    return-object v0
.end method
