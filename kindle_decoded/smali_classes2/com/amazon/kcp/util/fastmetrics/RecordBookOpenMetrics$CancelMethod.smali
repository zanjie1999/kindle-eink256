.class public final enum Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;
.super Ljava/lang/Enum;
.source "RecordBookOpenMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CancelMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

.field public static final enum HARDWARE_BACK_BUTTON:Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

.field public static final enum KILL_SWITCH_CHEVRON:Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

    const/4 v2, 0x0

    const-string v3, "KILL_SWITCH_LEGACY"

    const-string v4, "canceled_kill_switch_legacy"

    .line 35
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

    const/4 v2, 0x1

    const-string v3, "KILL_SWITCH_CHEVRON"

    const-string v4, "canceled_kill_switch_chevron"

    .line 36
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;->KILL_SWITCH_CHEVRON:Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

    const/4 v2, 0x2

    const-string v3, "HARDWARE_BACK_BUTTON"

    const-string v4, "canceled_back_button"

    .line 37
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;->HARDWARE_BACK_BUTTON:Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/RecordBookOpenMetrics$CancelMethod;->value:Ljava/lang/String;

    return-object v0
.end method
