.class public final enum Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;
.super Ljava/lang/Enum;
.source "IMetricKeyValue.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

.field public static final enum RelationshipStorage_DeleteAll_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

.field public static final enum RelationshipStorage_DeleteList_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

.field public static final enum RelationshipStorage_DeleteOldSession_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

.field public static final enum RelationshipStorage_DeleteSingle_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

.field public static final enum RelationshipStorage_QueryAll_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

.field public static final enum RelationshipStorage_QuerySample_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

.field public static final enum RelationshipStorage_SaveList_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 75
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    const/4 v1, 0x0

    const-string v2, "RelationshipStorage_SaveList_Timer"

    invoke-direct {v0, v2, v1}, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_SaveList_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    .line 77
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    const/4 v2, 0x1

    const-string v3, "RelationshipStorage_QuerySample_Timer"

    invoke-direct {v0, v3, v2}, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_QuerySample_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    .line 79
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    const/4 v3, 0x2

    const-string v4, "RelationshipStorage_QueryAll_Timer"

    invoke-direct {v0, v4, v3}, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_QueryAll_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    .line 81
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    const/4 v4, 0x3

    const-string v5, "RelationshipStorage_DeleteSingle_Timer"

    invoke-direct {v0, v5, v4}, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_DeleteSingle_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    .line 83
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    const/4 v5, 0x4

    const-string v6, "RelationshipStorage_DeleteList_Timer"

    invoke-direct {v0, v6, v5}, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_DeleteList_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    .line 85
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    const/4 v6, 0x5

    const-string v7, "RelationshipStorage_DeleteAll_Timer"

    invoke-direct {v0, v7, v6}, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_DeleteAll_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    .line 87
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    const/4 v7, 0x6

    const-string v8, "RelationshipStorage_DeleteOldSession_Timer"

    invoke-direct {v0, v8, v7}, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_DeleteOldSession_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    .line 73
    sget-object v9, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_SaveList_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    aput-object v9, v8, v1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_QuerySample_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    aput-object v1, v8, v2

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_QueryAll_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    aput-object v1, v8, v3

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_DeleteSingle_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    aput-object v1, v8, v4

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_DeleteList_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    aput-object v1, v8, v5

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->RelationshipStorage_DeleteAll_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;
    .locals 1

    .line 73
    const-class v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;
    .locals 1

    .line 73
    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    invoke-virtual {v0}, [Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipStorageTimerMetricKey;

    return-object v0
.end method
