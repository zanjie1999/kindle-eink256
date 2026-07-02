.class public final enum Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;
.super Ljava/lang/Enum;
.source "DateMoshiMetricsName.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/Metric$Name;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;",
        ">;",
        "Lcom/audible/mobile/metric/domain/Metric$Name;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;

.field public static final enum DATE_DESERIALIZATION_FAILED:Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;

    const/4 v1, 0x0

    const-string v2, "DATE_DESERIALIZATION_FAILED"

    invoke-direct {v0, v2, v1}, Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;->DATE_DESERIALIZATION_FAILED:Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;

    aput-object v0, v2, v1

    .line 5
    sput-object v2, Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;->$VALUES:[Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;
    .locals 1

    .line 5
    const-class v0, Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;
    .locals 1

    .line 5
    sget-object v0, Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;->$VALUES:[Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;

    invoke-virtual {v0}, [Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/network/adapters/DateMoshiMetricsName;

    return-object v0
.end method
