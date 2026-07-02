.class public final enum Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;
.super Ljava/lang/Enum;
.source "IMetricKeyValue.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IMetric$ICounterMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

.field public static final enum CompanionMapping_AsinPairLimitExceeded:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

.field public static final enum CompanionMapping_AsinPairNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

.field public static final enum CompanionMapping_PaginationNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

.field public static final enum CompanionMapping_SyncFileAcrNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 143
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    const/4 v1, 0x0

    const-string v2, "CompanionMapping_AsinPairLimitExceeded"

    invoke-direct {v0, v2, v1}, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_AsinPairLimitExceeded:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    .line 145
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    const/4 v2, 0x1

    const-string v3, "CompanionMapping_AsinPairNetwork"

    invoke-direct {v0, v3, v2}, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_AsinPairNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    .line 147
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    const/4 v3, 0x2

    const-string v4, "CompanionMapping_PaginationNetwork"

    invoke-direct {v0, v4, v3}, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_PaginationNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    .line 149
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    const/4 v4, 0x3

    const-string v5, "CompanionMapping_SyncFileAcrNetwork"

    invoke-direct {v0, v5, v4}, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_SyncFileAcrNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    .line 141
    sget-object v6, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_AsinPairLimitExceeded:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_AsinPairNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->CompanionMapping_PaginationNetwork:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 141
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;
    .locals 1

    .line 141
    const-class v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;
    .locals 1

    .line 141
    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    invoke-virtual {v0}, [Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkMetricKey;

    return-object v0
.end method
