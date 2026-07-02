.class public final enum Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;
.super Ljava/lang/Enum;
.source "IMetricKeyValue.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

.field public static final enum KeyValueStorage_DeleteKey_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

.field public static final enum KeyValueStorage_IncrementKey_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 45
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

    const/4 v1, 0x0

    const-string v2, "KeyValueStorage_IncrementKey_Timer"

    invoke-direct {v0, v2, v1}, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;->KeyValueStorage_IncrementKey_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

    .line 47
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

    const/4 v2, 0x1

    const-string v3, "KeyValueStorage_DeleteKey_Timer"

    invoke-direct {v0, v3, v2}, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;->KeyValueStorage_DeleteKey_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

    .line 43
    sget-object v4, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;->KeyValueStorage_IncrementKey_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;
    .locals 1

    .line 43
    const-class v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;
    .locals 1

    .line 43
    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

    invoke-virtual {v0}, [Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageTimerMetricKey;

    return-object v0
.end method
