.class public final enum Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;
.super Ljava/lang/Enum;
.source "RecordComicsMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

.field public static final enum ADVANCE:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

.field public static final enum CLOSE:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

.field public static final enum PREVIOUS:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

.field public static final enum VIEW:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;


# instance fields
.field private final metricName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    const/4 v2, 0x0

    const-string v3, "VIEW"

    const-string/jumbo v4, "view"

    .line 83
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->VIEW:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    const/4 v2, 0x1

    const-string v3, "ADVANCE"

    const-string v4, "advance"

    .line 84
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->ADVANCE:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    const/4 v2, 0x2

    const-string v3, "PREVIOUS"

    const-string v4, "previous"

    .line 85
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->PREVIOUS:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    const/4 v2, 0x3

    const-string v3, "CLOSE"

    const-string v4, "close"

    .line 86
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->CLOSE:Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

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

    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->metricName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;

    return-object v0
.end method


# virtual methods
.method public final getMetricName()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/OnboardingCXUserAction;->metricName:Ljava/lang/String;

    return-object v0
.end method
