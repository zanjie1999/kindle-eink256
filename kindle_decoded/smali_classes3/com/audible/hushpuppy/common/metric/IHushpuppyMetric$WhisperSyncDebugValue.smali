.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IMetric$IMetricValue;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

.field public static final enum Asin_id:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

.field public static final enum File_invalid:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

.field public static final enum File_path:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

.field public static final enum File_path_invalid:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 676
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    const/4 v1, 0x0

    const-string v2, "File_path"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;->File_path:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    .line 678
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    const/4 v2, 0x1

    const-string v3, "Asin_id"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;->Asin_id:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    .line 680
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    const/4 v3, 0x2

    const-string v4, "File_path_invalid"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;->File_path_invalid:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    .line 682
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    const/4 v4, 0x3

    const-string v5, "File_invalid"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;->File_invalid:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    .line 674
    sget-object v6, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;->File_path:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;->Asin_id:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;->File_path_invalid:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 674
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;
    .locals 1

    .line 674
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;
    .locals 1

    .line 674
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$WhisperSyncDebugValue;

    return-object v0
.end method
