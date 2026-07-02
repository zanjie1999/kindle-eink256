.class public final enum Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;
.super Ljava/lang/Enum;
.source "IHushpuppyMetric.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$TimerMetricKey;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;",
        ">;",
        "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$TimerMetricKey;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

.field public static final enum CheckHushpuppyEnabledTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

.field public static final enum ExtensionFactoryCreationTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

.field public static final enum HushpuppyObjectGraphCreationTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

.field public static final enum HushpuppyObjectGraphGetObjectTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

.field public static final enum HushpuppyObjectGraphInjectTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

.field public static final enum InitAudibleServicesTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

.field public static final enum PluginDisabledTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

.field public static final enum PluginEnabledTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

.field public static final enum PluginInitializationTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

.field public static final enum UpdatePfmsTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 565
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    const/4 v1, 0x0

    const-string v2, "PluginInitializationTimer_"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->PluginInitializationTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    .line 567
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    const/4 v2, 0x1

    const-string v3, "PluginEnabledTimer_"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->PluginEnabledTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    .line 569
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    const/4 v3, 0x2

    const-string v4, "PluginDisabledTimer_"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->PluginDisabledTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    .line 571
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    const/4 v4, 0x3

    const-string v5, "InitAudibleServicesTimer"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->InitAudibleServicesTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    .line 573
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    const/4 v5, 0x4

    const-string v6, "HushpuppyObjectGraphCreationTimer"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->HushpuppyObjectGraphCreationTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    .line 575
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    const/4 v6, 0x5

    const-string v7, "HushpuppyObjectGraphGetObjectTimer_"

    invoke-direct {v0, v7, v6}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->HushpuppyObjectGraphGetObjectTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    .line 577
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    const/4 v7, 0x6

    const-string v8, "HushpuppyObjectGraphInjectTimer_"

    invoke-direct {v0, v8, v7}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->HushpuppyObjectGraphInjectTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    .line 579
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    const/4 v8, 0x7

    const-string v9, "ExtensionFactoryCreationTimer"

    invoke-direct {v0, v9, v8}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->ExtensionFactoryCreationTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    .line 581
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    const/16 v9, 0x8

    const-string v10, "CheckHushpuppyEnabledTimer"

    invoke-direct {v0, v10, v9}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->CheckHushpuppyEnabledTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    .line 583
    new-instance v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    const/16 v10, 0x9

    const-string v11, "UpdatePfmsTimer"

    invoke-direct {v0, v11, v10}, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->UpdatePfmsTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    .line 563
    sget-object v12, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->PluginInitializationTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    aput-object v12, v11, v1

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->PluginEnabledTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    aput-object v1, v11, v2

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->PluginDisabledTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    aput-object v1, v11, v3

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->InitAudibleServicesTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    aput-object v1, v11, v4

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->HushpuppyObjectGraphCreationTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    aput-object v1, v11, v5

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->HushpuppyObjectGraphGetObjectTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    aput-object v1, v11, v6

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->HushpuppyObjectGraphInjectTimer_:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    aput-object v1, v11, v7

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->ExtensionFactoryCreationTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    aput-object v1, v11, v8

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->CheckHushpuppyEnabledTimer:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 563
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;
    .locals 1

    .line 563
    const-class v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;
    .locals 1

    .line 563
    sget-object v0, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->$VALUES:[Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$PluginPerformanceMetricKey;

    return-object v0
.end method
