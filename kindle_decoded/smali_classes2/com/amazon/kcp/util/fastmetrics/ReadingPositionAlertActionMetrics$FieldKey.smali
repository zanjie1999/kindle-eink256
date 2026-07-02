.class public final enum Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;
.super Ljava/lang/Enum;
.source "ReadingPositionAlertActionMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FieldKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

.field public static final enum ACTION_ID:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

.field public static final enum ALERT_TYPE:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

.field public static final enum END_POSITION:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

.field public static final enum LPR_POSITION:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

.field public static final enum SHEET_STATE:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

.field public static final enum START_POSITION:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    const/4 v2, 0x0

    const-string v3, "ACTION_ID"

    const-string v4, "action_id"

    .line 9
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->ACTION_ID:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    const/4 v2, 0x1

    const-string v3, "ALERT_TYPE"

    const-string v4, "alert_type"

    .line 10
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->ALERT_TYPE:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    const/4 v2, 0x2

    const-string v3, "SHEET_STATE"

    const-string v4, "sheet_state"

    .line 11
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->SHEET_STATE:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    const/4 v2, 0x3

    const-string v3, "START_POSITION"

    const-string v4, "start_position"

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->START_POSITION:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    const/4 v2, 0x4

    const-string v3, "END_POSITION"

    const-string v4, "end_position"

    .line 13
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->END_POSITION:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    const/4 v2, 0x5

    const-string v3, "LPR_POSITION"

    const-string v4, "lpr_position"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->LPR_POSITION:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

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

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$FieldKey;->value:Ljava/lang/String;

    return-object v0
.end method
