.class public final enum Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;
.super Ljava/lang/Enum;
.source "NotesActionMetricRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

.field public static final enum ADD:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

.field public static final enum EDIT:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

.field public static final enum REMOVE:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    const/4 v2, 0x0

    const-string v3, "ADD"

    const-string v4, "Add"

    .line 39
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;->ADD:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    const/4 v2, 0x1

    const-string v3, "EDIT"

    const-string v4, "Edit"

    .line 40
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;->EDIT:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    const/4 v2, 0x2

    const-string v3, "REMOVE"

    const-string v4, "Remove"

    .line 41
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;->REMOVE:Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

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

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/FastMetricsNotesActionMetricRecorder$Action;->value:Ljava/lang/String;

    return-object v0
.end method
