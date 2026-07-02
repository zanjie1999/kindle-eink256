.class public final enum Lcom/amazon/kcp/reader/DialogAction;
.super Ljava/lang/Enum;
.source "DialogMetricsRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/DialogAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/DialogAction;

.field public static final enum CANCEL:Lcom/amazon/kcp/reader/DialogAction;

.field public static final enum OK:Lcom/amazon/kcp/reader/DialogAction;

.field public static final enum SYNC:Lcom/amazon/kcp/reader/DialogAction;


# instance fields
.field private final metricName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/reader/DialogAction;

    new-instance v1, Lcom/amazon/kcp/reader/DialogAction;

    const/4 v2, 0x0

    const-string v3, "SYNC"

    const-string v4, "Sync"

    .line 20
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/reader/DialogAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/reader/DialogAction;->SYNC:Lcom/amazon/kcp/reader/DialogAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/reader/DialogAction;

    const/4 v2, 0x1

    const-string v3, "CANCEL"

    const-string v4, "Cancel"

    .line 21
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/reader/DialogAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/reader/DialogAction;->CANCEL:Lcom/amazon/kcp/reader/DialogAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/reader/DialogAction;

    const-string v2, "OK"

    const/4 v3, 0x2

    .line 22
    invoke-direct {v1, v2, v3, v2}, Lcom/amazon/kcp/reader/DialogAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/reader/DialogAction;->OK:Lcom/amazon/kcp/reader/DialogAction;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kcp/reader/DialogAction;->$VALUES:[Lcom/amazon/kcp/reader/DialogAction;

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

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/reader/DialogAction;->metricName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/DialogAction;
    .locals 1

    const-class v0, Lcom/amazon/kcp/reader/DialogAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/DialogAction;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/DialogAction;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/reader/DialogAction;->$VALUES:[Lcom/amazon/kcp/reader/DialogAction;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/DialogAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/DialogAction;

    return-object v0
.end method


# virtual methods
.method public final getMetricName()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/reader/DialogAction;->metricName:Ljava/lang/String;

    return-object v0
.end method
