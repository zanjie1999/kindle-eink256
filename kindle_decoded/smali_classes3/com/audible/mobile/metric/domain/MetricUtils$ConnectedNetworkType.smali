.class public final enum Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;
.super Ljava/lang/Enum;
.source "MetricUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/metric/domain/MetricUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectedNetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

.field public static final enum MOBILE:Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

.field public static final enum NONE:Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

.field public static final enum OTHER:Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

.field public static final enum WIFI:Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 20
    new-instance v0, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    const/4 v1, 0x0

    const-string v2, "MOBILE"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;->MOBILE:Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    new-instance v0, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    const/4 v2, 0x1

    const-string v3, "WIFI"

    invoke-direct {v0, v3, v2}, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;->WIFI:Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    new-instance v0, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    const/4 v3, 0x2

    const-string v4, "OTHER"

    invoke-direct {v0, v4, v3}, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;->OTHER:Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    new-instance v0, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    const/4 v4, 0x3

    const-string v5, "NONE"

    invoke-direct {v0, v5, v4}, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;->NONE:Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    .line 19
    sget-object v6, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;->MOBILE:Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;->WIFI:Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;->OTHER:Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;->$VALUES:[Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;
    .locals 1

    .line 19
    const-class v0, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;
    .locals 1

    .line 19
    sget-object v0, Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;->$VALUES:[Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    invoke-virtual {v0}, [Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/metric/domain/MetricUtils$ConnectedNetworkType;

    return-object v0
.end method
