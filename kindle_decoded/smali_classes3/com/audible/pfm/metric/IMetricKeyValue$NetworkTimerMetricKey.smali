.class public final enum Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;
.super Ljava/lang/Enum;
.source "IMetricKeyValue.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IMetric$ITimerMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

.field public static final enum PfmModule_ForceUpdate_Timer:Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

.field public static final enum PfmModule_ModifiedSinceUpdate_Timer:Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 44
    new-instance v0, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

    const/4 v1, 0x0

    const-string v2, "PfmModule_ForceUpdate_Timer"

    invoke-direct {v0, v2, v1}, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;->PfmModule_ForceUpdate_Timer:Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

    .line 46
    new-instance v0, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

    const/4 v2, 0x1

    const-string v3, "PfmModule_ModifiedSinceUpdate_Timer"

    invoke-direct {v0, v3, v2}, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;->PfmModule_ModifiedSinceUpdate_Timer:Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

    .line 42
    sget-object v4, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;->PfmModule_ForceUpdate_Timer:Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;->$VALUES:[Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;
    .locals 1

    .line 42
    const-class v0, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;
    .locals 1

    .line 42
    sget-object v0, Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;->$VALUES:[Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

    invoke-virtual {v0}, [Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/pfm/metric/IMetricKeyValue$NetworkTimerMetricKey;

    return-object v0
.end method
