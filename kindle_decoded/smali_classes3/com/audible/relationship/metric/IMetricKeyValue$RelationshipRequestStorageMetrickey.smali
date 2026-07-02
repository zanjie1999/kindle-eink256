.class public final enum Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;
.super Ljava/lang/Enum;
.source "IMetricKeyValue.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

.field public static final enum RelationshipRequestStorage_AddRequest_NullRequest:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

.field public static final enum RelationshipRequestStorage_AddRequest_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

.field public static final enum RelationshipRequestStorage_RemoveAllRequests_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

.field public static final enum RelationshipRequestStorage_RemoveRequest_NullRequest:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

.field public static final enum RelationshipRequestStorage_RemoveRequest_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 119
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    const/4 v1, 0x0

    const-string v2, "RelationshipRequestStorage_AddRequest_NullRequest"

    invoke-direct {v0, v2, v1}, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_AddRequest_NullRequest:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    .line 121
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    const/4 v2, 0x1

    const-string v3, "RelationshipRequestStorage_AddRequest_Status"

    invoke-direct {v0, v3, v2}, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_AddRequest_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    .line 123
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    const/4 v3, 0x2

    const-string v4, "RelationshipRequestStorage_RemoveRequest_NullRequest"

    invoke-direct {v0, v4, v3}, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_RemoveRequest_NullRequest:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    .line 125
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    const/4 v4, 0x3

    const-string v5, "RelationshipRequestStorage_RemoveRequest_Status"

    invoke-direct {v0, v5, v4}, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_RemoveRequest_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    .line 127
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    const/4 v5, 0x4

    const-string v6, "RelationshipRequestStorage_RemoveAllRequests_Status"

    invoke-direct {v0, v6, v5}, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_RemoveAllRequests_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    .line 117
    sget-object v7, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_AddRequest_NullRequest:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    aput-object v7, v6, v1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_AddRequest_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    aput-object v1, v6, v2

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_RemoveRequest_NullRequest:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    aput-object v1, v6, v3

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->RelationshipRequestStorage_RemoveRequest_Status:Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;
    .locals 1

    .line 117
    const-class v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    return-object p0
.end method

.method public static values()[Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;
    .locals 1

    .line 117
    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    invoke-virtual {v0}, [Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/relationship/metric/IMetricKeyValue$RelationshipRequestStorageMetrickey;

    return-object v0
.end method
