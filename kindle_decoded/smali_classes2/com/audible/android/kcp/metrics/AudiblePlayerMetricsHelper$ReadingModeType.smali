.class public final enum Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;
.super Ljava/lang/Enum;
.source "AudiblePlayerMetricsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadingModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;

.field public static final enum PAGINATED:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;

.field public static final enum VERTICAL_SCROLL:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 47
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;

    const/4 v1, 0x0

    const-string v2, "PAGINATED"

    const-string v3, "Paginated"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;->PAGINATED:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;

    .line 48
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;

    const/4 v2, 0x1

    const-string v3, "VERTICAL_SCROLL"

    const-string v4, "VerticalScroll"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;->VERTICAL_SCROLL:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;

    .line 45
    sget-object v4, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;->PAGINATED:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;->$VALUES:[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;

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

    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;
    .locals 1

    .line 45
    const-class v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;
    .locals 1

    .line 45
    sget-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;->$VALUES:[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ReadingModeType;

    return-object v0
.end method
