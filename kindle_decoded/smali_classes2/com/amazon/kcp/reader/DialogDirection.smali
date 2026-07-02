.class public final enum Lcom/amazon/kcp/reader/DialogDirection;
.super Ljava/lang/Enum;
.source "DialogMetricsRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/DialogDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/DialogDirection;

.field public static final enum BACKWARD:Lcom/amazon/kcp/reader/DialogDirection;

.field public static final enum FORWARD:Lcom/amazon/kcp/reader/DialogDirection;


# instance fields
.field private final metricName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/reader/DialogDirection;

    new-instance v1, Lcom/amazon/kcp/reader/DialogDirection;

    const/4 v2, 0x0

    const-string v3, "FORWARD"

    const-string v4, "SyncForward"

    .line 26
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/reader/DialogDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/reader/DialogDirection;->FORWARD:Lcom/amazon/kcp/reader/DialogDirection;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/reader/DialogDirection;

    const/4 v2, 0x1

    const-string v3, "BACKWARD"

    const-string v4, "SyncBackward"

    .line 27
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/reader/DialogDirection;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/reader/DialogDirection;->BACKWARD:Lcom/amazon/kcp/reader/DialogDirection;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/reader/DialogDirection;->$VALUES:[Lcom/amazon/kcp/reader/DialogDirection;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/reader/DialogDirection;->metricName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/DialogDirection;
    .locals 1

    const-class v0, Lcom/amazon/kcp/reader/DialogDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/DialogDirection;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/DialogDirection;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/reader/DialogDirection;->$VALUES:[Lcom/amazon/kcp/reader/DialogDirection;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/DialogDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/DialogDirection;

    return-object v0
.end method


# virtual methods
.method public final getMetricName()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/reader/DialogDirection;->metricName:Ljava/lang/String;

    return-object v0
.end method
