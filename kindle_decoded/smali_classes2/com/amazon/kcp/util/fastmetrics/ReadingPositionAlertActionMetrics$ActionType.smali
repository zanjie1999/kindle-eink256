.class public final enum Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;
.super Ljava/lang/Enum;
.source "ReadingPositionAlertActionMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

.field public static final enum CANCEL:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

.field public static final enum NAVIGATE_TO_LOCAL:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

.field public static final enum NAVIGATE_TO_MRPR:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

.field public static final enum PRESENT_ALERT:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

.field public static final enum SWIPE_DOWN_DISMISS:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

.field public static final enum SYNC:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    const/4 v2, 0x0

    const-string v3, "SYNC"

    const-string v4, "sync"

    .line 24
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->SYNC:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    const/4 v2, 0x1

    const-string v3, "CANCEL"

    const-string v4, "cancel"

    .line 25
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->CANCEL:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    const/4 v2, 0x2

    const-string v3, "SWIPE_DOWN_DISMISS"

    const-string v4, "swipe_down_to_dismiss"

    .line 26
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->SWIPE_DOWN_DISMISS:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    const/4 v2, 0x3

    const-string v3, "NAVIGATE_TO_MRPR"

    const-string v4, "navigate_to_mrpr"

    .line 27
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->NAVIGATE_TO_MRPR:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    const/4 v2, 0x4

    const-string v3, "NAVIGATE_TO_LOCAL"

    const-string v4, "navigate_to_local"

    .line 28
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->NAVIGATE_TO_LOCAL:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    const/4 v2, 0x5

    const-string v3, "PRESENT_ALERT"

    const-string v4, "present_alert"

    .line 29
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->PRESENT_ALERT:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$ActionType;->value:Ljava/lang/String;

    return-object v0
.end method
