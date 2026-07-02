.class public final enum Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;
.super Ljava/lang/Enum;
.source "ReadingPositionAlertActionMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SheetState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

.field public static final enum AT_LOCAL:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

.field public static final enum AT_MRPR:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

.field public static final enum NOT_APPLICABLE:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    const/4 v2, 0x0

    const-string v3, "AT_MRPR"

    const-string v4, "at_mrpr"

    .line 33
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->AT_MRPR:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    const/4 v2, 0x1

    const-string v3, "AT_LOCAL"

    const-string v4, "at_local"

    .line 34
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->AT_LOCAL:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    const/4 v2, 0x2

    const-string v3, "NOT_APPLICABLE"

    const/4 v4, 0x0

    .line 35
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->NOT_APPLICABLE:Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/ReadingPositionAlertActionMetrics$SheetState;->value:Ljava/lang/String;

    return-object v0
.end method
