.class public final enum Lcom/audible/license/metrics/VoucherMetricSource;
.super Ljava/lang/Enum;
.source "VoucherMetricSource.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/Metric$Source;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/license/metrics/VoucherMetricSource;",
        ">;",
        "Lcom/audible/mobile/metric/domain/Metric$Source;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/license/metrics/VoucherMetricSource;

.field public static final enum MultipleAccountsVoucherManager:Lcom/audible/license/metrics/VoucherMetricSource;

.field public static final enum VoucherExpiredRule:Lcom/audible/license/metrics/VoucherMetricSource;

.field public static final enum VoucherFetcher:Lcom/audible/license/metrics/VoucherMetricSource;

.field public static final enum VoucherFileRepository:Lcom/audible/license/metrics/VoucherMetricSource;

.field public static final enum VoucherManager:Lcom/audible/license/metrics/VoucherMetricSource;

.field public static final enum VoucherProvider:Lcom/audible/license/metrics/VoucherMetricSource;

.field public static final enum VoucherRefresher:Lcom/audible/license/metrics/VoucherMetricSource;

.field public static final enum VoucherRepository:Lcom/audible/license/metrics/VoucherMetricSource;

.field public static final enum VoucherRulesParser:Lcom/audible/license/metrics/VoucherMetricSource;

.field public static final enum VoucherValidator:Lcom/audible/license/metrics/VoucherMetricSource;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 17
    new-instance v0, Lcom/audible/license/metrics/VoucherMetricSource;

    const/4 v1, 0x0

    const-string v2, "MultipleAccountsVoucherManager"

    invoke-direct {v0, v2, v1}, Lcom/audible/license/metrics/VoucherMetricSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/VoucherMetricSource;->MultipleAccountsVoucherManager:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 22
    new-instance v0, Lcom/audible/license/metrics/VoucherMetricSource;

    const/4 v2, 0x1

    const-string v3, "VoucherManager"

    invoke-direct {v0, v3, v2}, Lcom/audible/license/metrics/VoucherMetricSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherManager:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 27
    new-instance v0, Lcom/audible/license/metrics/VoucherMetricSource;

    const/4 v3, 0x2

    const-string v4, "VoucherRepository"

    invoke-direct {v0, v4, v3}, Lcom/audible/license/metrics/VoucherMetricSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 32
    new-instance v0, Lcom/audible/license/metrics/VoucherMetricSource;

    const/4 v4, 0x3

    const-string v5, "VoucherFileRepository"

    invoke-direct {v0, v5, v4}, Lcom/audible/license/metrics/VoucherMetricSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherFileRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 37
    new-instance v0, Lcom/audible/license/metrics/VoucherMetricSource;

    const/4 v5, 0x4

    const-string v6, "VoucherRulesParser"

    invoke-direct {v0, v6, v5}, Lcom/audible/license/metrics/VoucherMetricSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRulesParser:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 42
    new-instance v0, Lcom/audible/license/metrics/VoucherMetricSource;

    const/4 v6, 0x5

    const-string v7, "VoucherExpiredRule"

    invoke-direct {v0, v7, v6}, Lcom/audible/license/metrics/VoucherMetricSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherExpiredRule:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 48
    new-instance v0, Lcom/audible/license/metrics/VoucherMetricSource;

    const/4 v7, 0x6

    const-string v8, "VoucherFetcher"

    invoke-direct {v0, v8, v7}, Lcom/audible/license/metrics/VoucherMetricSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherFetcher:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 53
    new-instance v0, Lcom/audible/license/metrics/VoucherMetricSource;

    const/4 v8, 0x7

    const-string v9, "VoucherValidator"

    invoke-direct {v0, v9, v8}, Lcom/audible/license/metrics/VoucherMetricSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherValidator:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 58
    new-instance v0, Lcom/audible/license/metrics/VoucherMetricSource;

    const/16 v9, 0x8

    const-string v10, "VoucherProvider"

    invoke-direct {v0, v10, v9}, Lcom/audible/license/metrics/VoucherMetricSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherProvider:Lcom/audible/license/metrics/VoucherMetricSource;

    .line 63
    new-instance v0, Lcom/audible/license/metrics/VoucherMetricSource;

    const/16 v10, 0x9

    const-string v11, "VoucherRefresher"

    invoke-direct {v0, v11, v10}, Lcom/audible/license/metrics/VoucherMetricSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRefresher:Lcom/audible/license/metrics/VoucherMetricSource;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/audible/license/metrics/VoucherMetricSource;

    .line 11
    sget-object v12, Lcom/audible/license/metrics/VoucherMetricSource;->MultipleAccountsVoucherManager:Lcom/audible/license/metrics/VoucherMetricSource;

    aput-object v12, v11, v1

    sget-object v1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherManager:Lcom/audible/license/metrics/VoucherMetricSource;

    aput-object v1, v11, v2

    sget-object v1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    aput-object v1, v11, v3

    sget-object v1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherFileRepository:Lcom/audible/license/metrics/VoucherMetricSource;

    aput-object v1, v11, v4

    sget-object v1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherRulesParser:Lcom/audible/license/metrics/VoucherMetricSource;

    aput-object v1, v11, v5

    sget-object v1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherExpiredRule:Lcom/audible/license/metrics/VoucherMetricSource;

    aput-object v1, v11, v6

    sget-object v1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherFetcher:Lcom/audible/license/metrics/VoucherMetricSource;

    aput-object v1, v11, v7

    sget-object v1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherValidator:Lcom/audible/license/metrics/VoucherMetricSource;

    aput-object v1, v11, v8

    sget-object v1, Lcom/audible/license/metrics/VoucherMetricSource;->VoucherProvider:Lcom/audible/license/metrics/VoucherMetricSource;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/audible/license/metrics/VoucherMetricSource;->$VALUES:[Lcom/audible/license/metrics/VoucherMetricSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/license/metrics/VoucherMetricSource;
    .locals 1

    .line 11
    const-class v0, Lcom/audible/license/metrics/VoucherMetricSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/license/metrics/VoucherMetricSource;

    return-object p0
.end method

.method public static values()[Lcom/audible/license/metrics/VoucherMetricSource;
    .locals 1

    .line 11
    sget-object v0, Lcom/audible/license/metrics/VoucherMetricSource;->$VALUES:[Lcom/audible/license/metrics/VoucherMetricSource;

    invoke-virtual {v0}, [Lcom/audible/license/metrics/VoucherMetricSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/license/metrics/VoucherMetricSource;

    return-object v0
.end method
