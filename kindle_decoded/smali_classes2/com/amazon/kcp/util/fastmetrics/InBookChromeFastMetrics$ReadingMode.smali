.class public final enum Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;
.super Ljava/lang/Enum;
.source "InBookChromeFastMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadingMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

.field public static final enum AUDIBLE_PLAYER:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

.field public static final enum HORIZONTAL:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

.field public static final enum VERTICAL:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

    const/4 v2, 0x0

    const-string v3, "HORIZONTAL"

    const-string v4, "Horizontal"

    .line 99
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;->HORIZONTAL:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

    const/4 v2, 0x1

    const-string v3, "VERTICAL"

    const-string v4, "Vertical"

    .line 100
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;->VERTICAL:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

    const/4 v2, 0x2

    const-string v3, "AUDIBLE_PLAYER"

    const-string v4, "AudiblePlayer"

    .line 101
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;->AUDIBLE_PLAYER:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

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

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ReadingMode;->value:Ljava/lang/String;

    return-object v0
.end method
