.class public final enum Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;
.super Ljava/lang/Enum;
.source "IMetricKeyValue.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

.field public static final enum Asin_key:Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

.field public static final enum File_is_invalid_key:Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 201
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

    const/4 v1, 0x0

    const-string v2, "Asin_key"

    invoke-direct {v0, v2, v1}, Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;->Asin_key:Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

    .line 203
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

    const/4 v2, 0x1

    const-string v3, "File_is_invalid_key"

    invoke-direct {v0, v3, v2}, Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;->File_is_invalid_key:Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

    .line 199
    sget-object v4, Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;->Asin_key:Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 199
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;
    .locals 1

    .line 199
    const-class v0, Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

    return-object p0
.end method

.method public static values()[Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;
    .locals 1

    .line 199
    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

    invoke-virtual {v0}, [Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/relationship/metric/IMetricKeyValue$WhisperSyncDebugMetric;

    return-object v0
.end method
