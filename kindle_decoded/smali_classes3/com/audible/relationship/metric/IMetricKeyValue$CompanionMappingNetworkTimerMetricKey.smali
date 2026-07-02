.class public final enum Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;
.super Ljava/lang/Enum;
.source "IMetricKeyValue.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

.field public static final enum CompanionMapping_AsinPairNetwork_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

.field public static final enum CompanionMapping_PaginationNetwork_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

.field public static final enum CompanionMapping_RequestSyncFileAcr_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 157
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    const/4 v1, 0x0

    const-string v2, "CompanionMapping_AsinPairNetwork_Timer"

    invoke-direct {v0, v2, v1}, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;->CompanionMapping_AsinPairNetwork_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    .line 159
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    const/4 v2, 0x1

    const-string v3, "CompanionMapping_PaginationNetwork_Timer"

    invoke-direct {v0, v3, v2}, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;->CompanionMapping_PaginationNetwork_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    .line 161
    new-instance v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    const/4 v3, 0x2

    const-string v4, "CompanionMapping_RequestSyncFileAcr_Timer"

    invoke-direct {v0, v4, v3}, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;->CompanionMapping_RequestSyncFileAcr_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    .line 155
    sget-object v5, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;->CompanionMapping_AsinPairNetwork_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;->CompanionMapping_PaginationNetwork_Timer:Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 155
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;
    .locals 1

    .line 155
    const-class v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;
    .locals 1

    .line 155
    sget-object v0, Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;->$VALUES:[Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    invoke-virtual {v0}, [Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/relationship/metric/IMetricKeyValue$CompanionMappingNetworkTimerMetricKey;

    return-object v0
.end method
