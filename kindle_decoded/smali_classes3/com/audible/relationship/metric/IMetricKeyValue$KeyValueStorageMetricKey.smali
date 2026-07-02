.class public final enum Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;
.super Ljava/lang/Enum;
.source "IMetricKeyValue.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

.field public static final enum KeyValueStorage_DeleteKey_NullKey:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

.field public static final enum KeyValueStorage_DeleteKey_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

.field public static final enum KeyValueStorage_GetValue_NullKeyOrDb:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

.field public static final enum KeyValueStorage_GetValue_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

.field public static final enum KeyValueStorage_IncrementKey_NullKey:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

.field public static final enum KeyValueStorage_IncrementKey_NumberFormatException:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

.field public static final enum KeyValueStorage_IncrementKey_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

.field public static final enum KeyValueStorage_SetValue_NullKeyValueOrDb:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

.field public static final enum KeyValueStorage_SetValue_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 21
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    const/4 v1, 0x0

    const-string v2, "KeyValueStorage_IncrementKey_NullKey"

    invoke-direct {v0, v2, v1}, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_IncrementKey_NullKey:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    .line 23
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    const/4 v2, 0x1

    const-string v3, "KeyValueStorage_IncrementKey_NumberFormatException"

    invoke-direct {v0, v3, v2}, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_IncrementKey_NumberFormatException:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    .line 25
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    const/4 v3, 0x2

    const-string v4, "KeyValueStorage_IncrementKey_Status"

    invoke-direct {v0, v4, v3}, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_IncrementKey_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    .line 27
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    const/4 v4, 0x3

    const-string v5, "KeyValueStorage_DeleteKey_NullKey"

    invoke-direct {v0, v5, v4}, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_DeleteKey_NullKey:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    .line 29
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    const/4 v5, 0x4

    const-string v6, "KeyValueStorage_DeleteKey_Status"

    invoke-direct {v0, v6, v5}, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_DeleteKey_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    .line 31
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    const/4 v6, 0x5

    const-string v7, "KeyValueStorage_GetValue_NullKeyOrDb"

    invoke-direct {v0, v7, v6}, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_GetValue_NullKeyOrDb:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    .line 33
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    const/4 v7, 0x6

    const-string v8, "KeyValueStorage_GetValue_Status"

    invoke-direct {v0, v8, v7}, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_GetValue_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    .line 35
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    const/4 v8, 0x7

    const-string v9, "KeyValueStorage_SetValue_NullKeyValueOrDb"

    invoke-direct {v0, v9, v8}, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_SetValue_NullKeyValueOrDb:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    .line 37
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    const/16 v9, 0x8

    const-string v10, "KeyValueStorage_SetValue_Status"

    invoke-direct {v0, v10, v9}, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_SetValue_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    .line 19
    sget-object v11, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_IncrementKey_NullKey:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    aput-object v11, v10, v1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_IncrementKey_NumberFormatException:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    aput-object v1, v10, v2

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_IncrementKey_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    aput-object v1, v10, v3

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_DeleteKey_NullKey:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    aput-object v1, v10, v4

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_DeleteKey_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    aput-object v1, v10, v5

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_GetValue_NullKeyOrDb:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    aput-object v1, v10, v6

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_GetValue_Status:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    aput-object v1, v10, v7

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->KeyValueStorage_SetValue_NullKeyValueOrDb:Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;
    .locals 1

    .line 19
    const-class v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;
    .locals 1

    .line 19
    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    invoke-virtual {v0}, [Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/relationship/metric/IMetricKeyValue$KeyValueStorageMetricKey;

    return-object v0
.end method
