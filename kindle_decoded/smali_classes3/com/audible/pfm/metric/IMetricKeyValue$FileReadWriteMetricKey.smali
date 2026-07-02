.class public final enum Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;
.super Ljava/lang/Enum;
.source "IMetricKeyValue.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

.field public static final enum PfmModule_FailedToReadJsonFile_:Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

.field public static final enum PfmModule_FailedToUpdateFileTimestamp:Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

.field public static final enum PfmModule_FailedToWriteJsonFile_:Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    const/4 v1, 0x0

    const-string v2, "PfmModule_FailedToWriteJsonFile_"

    invoke-direct {v0, v2, v1}, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;->PfmModule_FailedToWriteJsonFile_:Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    .line 34
    new-instance v0, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    const/4 v2, 0x1

    const-string v3, "PfmModule_FailedToReadJsonFile_"

    invoke-direct {v0, v3, v2}, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;->PfmModule_FailedToReadJsonFile_:Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    .line 36
    new-instance v0, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    const/4 v3, 0x2

    const-string v4, "PfmModule_FailedToUpdateFileTimestamp"

    invoke-direct {v0, v4, v3}, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;->PfmModule_FailedToUpdateFileTimestamp:Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    .line 30
    sget-object v5, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;->PfmModule_FailedToWriteJsonFile_:Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;->PfmModule_FailedToReadJsonFile_:Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;->$VALUES:[Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;
    .locals 1

    .line 30
    const-class v0, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;
    .locals 1

    .line 30
    sget-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;->$VALUES:[Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    invoke-virtual {v0}, [Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/pfm/metric/IMetricKeyValue$FileReadWriteMetricKey;

    return-object v0
.end method
