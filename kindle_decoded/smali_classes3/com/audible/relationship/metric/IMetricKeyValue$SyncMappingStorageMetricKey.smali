.class public final enum Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;
.super Ljava/lang/Enum;
.source "IMetricKeyValue.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

.field public static final enum SyncMappingStorage_DeleteMapping_NullEbookAsin:Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

.field public static final enum SyncMappingStorage_SaveMapping_NullMapping:Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

.field public static final enum SyncMappingStorage_SaveMapping_Status:Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 95
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    const/4 v1, 0x0

    const-string v2, "SyncMappingStorage_SaveMapping_NullMapping"

    invoke-direct {v0, v2, v1}, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;->SyncMappingStorage_SaveMapping_NullMapping:Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    .line 97
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    const/4 v2, 0x1

    const-string v3, "SyncMappingStorage_SaveMapping_Status"

    invoke-direct {v0, v3, v2}, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;->SyncMappingStorage_SaveMapping_Status:Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    .line 99
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    const/4 v3, 0x2

    const-string v4, "SyncMappingStorage_DeleteMapping_NullEbookAsin"

    invoke-direct {v0, v4, v3}, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;->SyncMappingStorage_DeleteMapping_NullEbookAsin:Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    .line 93
    sget-object v5, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;->SyncMappingStorage_SaveMapping_NullMapping:Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;->SyncMappingStorage_SaveMapping_Status:Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;
    .locals 1

    .line 93
    const-class v0, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;
    .locals 1

    .line 93
    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    invoke-virtual {v0}, [Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/relationship/metric/IMetricKeyValue$SyncMappingStorageMetricKey;

    return-object v0
.end method
