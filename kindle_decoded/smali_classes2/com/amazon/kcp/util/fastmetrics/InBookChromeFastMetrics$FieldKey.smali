.class public final enum Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;
.super Ljava/lang/Enum;
.source "InBookChromeFastMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FieldKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

.field public static final enum ACTION:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

.field public static final enum ACTION_CAUSE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

.field public static final enum CONTEXT:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

.field public static final enum CURRENT_POSITION:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

.field public static final enum DEVICE_ORIENTATION:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

.field public static final enum IN_MULTI_WINDOW_MODE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

.field public static final enum NLN_SUPPORTED:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

.field public static final enum READING_MODE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

.field public static final enum READING_PROGRESS_TYPE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    const/4 v2, 0x0

    const-string v3, "CONTEXT"

    const-string v4, "context"

    .line 30
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->CONTEXT:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    const/4 v2, 0x1

    const-string v3, "ACTION"

    const-string v4, "action"

    .line 31
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->ACTION:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    const/4 v2, 0x2

    const-string v3, "NLN_SUPPORTED"

    const-string v4, "nln_supported"

    .line 32
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->NLN_SUPPORTED:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    const/4 v2, 0x3

    const-string v3, "READING_MODE"

    const-string v4, "reading_mode"

    .line 33
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->READING_MODE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    const/4 v2, 0x4

    const-string v3, "IN_MULTI_WINDOW_MODE"

    const-string v4, "in_multi_window_mode"

    .line 34
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->IN_MULTI_WINDOW_MODE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    const/4 v2, 0x5

    const-string v3, "DEVICE_ORIENTATION"

    const-string v4, "device_orientation"

    .line 35
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->DEVICE_ORIENTATION:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    const/4 v2, 0x6

    const-string v3, "CURRENT_POSITION"

    const-string v4, "current_position"

    .line 36
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->CURRENT_POSITION:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    const/4 v2, 0x7

    const-string v3, "READING_PROGRESS_TYPE"

    const-string v4, "reading_progress_type"

    .line 37
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->READING_PROGRESS_TYPE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    const/16 v2, 0x8

    const-string v3, "ACTION_CAUSE"

    const-string v4, "action_cause"

    .line 38
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->ACTION_CAUSE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

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

    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$FieldKey;->value:Ljava/lang/String;

    return-object v0
.end method
