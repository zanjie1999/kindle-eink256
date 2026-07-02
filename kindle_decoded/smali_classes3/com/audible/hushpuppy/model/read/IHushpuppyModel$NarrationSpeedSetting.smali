.class public final enum Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;
.super Ljava/lang/Enum;
.source "IHushpuppyModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/model/read/IHushpuppyModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NarrationSpeedSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

.field private static final DEFAULT_NARRATION_SPEED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

.field public static final enum SPEED_1:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

.field public static final enum SPEED_1_PT_25:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

.field public static final enum SPEED_1_PT_5:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

.field public static final enum SPEED_2:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

.field public static final enum SPEED_2_PT_5:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

.field public static final enum SPEED_3:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

.field public static final enum SPEED_PT_5:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

.field public static final enum SPEED_PT_75:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;


# instance fields
.field private final metricKey:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;

.field private final rate:F


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 66
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;->Speed_050:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;

    const/4 v2, 0x0

    const-string v3, "SPEED_PT_5"

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;-><init>(Ljava/lang/String;IFLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_PT_5:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    .line 68
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;->Speed_075:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;

    const/4 v3, 0x1

    const-string v4, "SPEED_PT_75"

    const/high16 v5, 0x3f400000    # 0.75f

    invoke-direct {v0, v4, v3, v5, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;-><init>(Ljava/lang/String;IFLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_PT_75:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    .line 70
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;->Speed_100:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;

    const/4 v4, 0x2

    const-string v5, "SPEED_1"

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v4, v6, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;-><init>(Ljava/lang/String;IFLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_1:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    .line 72
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;->Speed_125:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;

    const/4 v5, 0x3

    const-string v6, "SPEED_1_PT_25"

    const/high16 v7, 0x3fa00000    # 1.25f

    invoke-direct {v0, v6, v5, v7, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;-><init>(Ljava/lang/String;IFLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_1_PT_25:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    .line 74
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;->Speed_150:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;

    const/4 v6, 0x4

    const-string v7, "SPEED_1_PT_5"

    const/high16 v8, 0x3fc00000    # 1.5f

    invoke-direct {v0, v7, v6, v8, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;-><init>(Ljava/lang/String;IFLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_1_PT_5:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    .line 76
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;->Speed_200:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;

    const/4 v7, 0x5

    const-string v8, "SPEED_2"

    const/high16 v9, 0x40000000    # 2.0f

    invoke-direct {v0, v8, v7, v9, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;-><init>(Ljava/lang/String;IFLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_2:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    .line 78
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;->Speed_250:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;

    const/4 v8, 0x6

    const-string v9, "SPEED_2_PT_5"

    const/high16 v10, 0x40200000    # 2.5f

    invoke-direct {v0, v9, v8, v10, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;-><init>(Ljava/lang/String;IFLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_2_PT_5:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    .line 80
    new-instance v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    sget-object v1, Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;->Speed_300:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;

    const/4 v9, 0x7

    const-string v10, "SPEED_3"

    const/high16 v11, 0x40400000    # 3.0f

    invoke-direct {v0, v10, v9, v11, v1}, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;-><init>(Ljava/lang/String;IFLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;)V

    sput-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_3:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    const/16 v1, 0x8

    new-array v1, v1, [Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    .line 64
    sget-object v10, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_PT_5:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    aput-object v10, v1, v2

    sget-object v2, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_PT_75:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    aput-object v2, v1, v3

    sget-object v2, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_1:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    aput-object v2, v1, v4

    sget-object v3, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_1_PT_25:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    aput-object v3, v1, v5

    sget-object v3, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_1_PT_5:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    aput-object v3, v1, v6

    sget-object v3, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_2:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    aput-object v3, v1, v7

    sget-object v3, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->SPEED_2_PT_5:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    aput-object v3, v1, v8

    aput-object v0, v1, v9

    sput-object v1, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->$VALUES:[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    .line 83
    sput-object v2, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->DEFAULT_NARRATION_SPEED:Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFLcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 97
    iput p3, p0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->rate:F

    .line 98
    iput-object p4, p0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->metricKey:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;
    .locals 1

    .line 64
    const-class v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;
    .locals 1

    .line 64
    sget-object v0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->$VALUES:[Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;

    return-object v0
.end method


# virtual methods
.method public metricKey()Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->metricKey:Lcom/audible/hushpuppy/common/metric/IHushpuppyMetric$NarrationSpeedDialogKey;

    return-object v0
.end method

.method public rate()F
    .locals 1

    .line 106
    iget v0, p0, Lcom/audible/hushpuppy/model/read/IHushpuppyModel$NarrationSpeedSetting;->rate:F

    return v0
.end method
