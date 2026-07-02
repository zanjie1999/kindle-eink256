.class public final enum Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;
.super Ljava/lang/Enum;
.source "AudiblePlayerMetricsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

.field public static final enum INBOOK_FULL_PLAYER:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

.field public static final enum INBOOK_MINI_PLAYER:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

.field public static final enum IN_APP:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

.field public static final enum OUT_OF_APP:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 29
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    const/4 v1, 0x0

    const-string v2, "IN_APP"

    const-string v3, "InApp"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->IN_APP:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    .line 30
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    const/4 v2, 0x1

    const-string v3, "INBOOK_MINI_PLAYER"

    const-string v4, "InBookMiniPlayer"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->INBOOK_MINI_PLAYER:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    .line 31
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    const/4 v3, 0x2

    const-string v4, "INBOOK_FULL_PLAYER"

    const-string v5, "InBookFullPlayer"

    invoke-direct {v0, v4, v3, v5}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->INBOOK_FULL_PLAYER:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    .line 32
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    const/4 v4, 0x3

    const-string v5, "OUT_OF_APP"

    const-string v6, "OutOfApp"

    invoke-direct {v0, v5, v4, v6}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->OUT_OF_APP:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    .line 27
    sget-object v6, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->IN_APP:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->INBOOK_MINI_PLAYER:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->INBOOK_FULL_PLAYER:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->$VALUES:[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

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

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput-object p3, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;)Ljava/lang/String;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;
    .locals 1

    .line 27
    const-class v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;
    .locals 1

    .line 27
    sget-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->$VALUES:[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsHelper$ContextType;->value:Ljava/lang/String;

    return-object v0
.end method
