.class public final enum Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;
.super Ljava/lang/Enum;
.source "AudiblePlayerMetricsReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

.field public static final enum CANCEL_TO_DOWNLOAD:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

.field public static final enum NARRATION:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

.field public static final enum PAUSE:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

.field public static final enum PLAY:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

.field public static final enum REWIND30:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

.field public static final enum SWITCH_TO_PLAYER:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

.field public static final enum TAP_TO_DOWNLOAD:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 63
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    const/4 v1, 0x0

    const-string v2, "PLAY"

    const-string v3, "Play"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->PLAY:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    .line 64
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    const/4 v2, 0x1

    const-string v3, "PAUSE"

    const-string v4, "Pause"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->PAUSE:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    .line 65
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    const/4 v3, 0x2

    const-string v4, "TAP_TO_DOWNLOAD"

    const-string v5, "TapToDownload"

    invoke-direct {v0, v4, v3, v5}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->TAP_TO_DOWNLOAD:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    .line 66
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    const/4 v4, 0x3

    const-string v5, "CANCEL_TO_DOWNLOAD"

    const-string v6, "CancelDownload"

    invoke-direct {v0, v5, v4, v6}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->CANCEL_TO_DOWNLOAD:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    .line 67
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    const/4 v5, 0x4

    const-string v6, "REWIND30"

    const-string v7, "Rewind30"

    invoke-direct {v0, v6, v5, v7}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->REWIND30:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    .line 68
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    const/4 v6, 0x5

    const-string v7, "SWITCH_TO_PLAYER"

    const-string v8, "SwitchToPlayer"

    invoke-direct {v0, v7, v6, v8}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->SWITCH_TO_PLAYER:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    .line 69
    new-instance v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    const/4 v7, 0x6

    const-string v8, "NARRATION"

    const-string v9, "Narration"

    invoke-direct {v0, v8, v7, v9}, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->NARRATION:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    .line 62
    sget-object v9, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->PLAY:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    aput-object v9, v8, v1

    sget-object v1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->PAUSE:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    aput-object v1, v8, v2

    sget-object v1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->TAP_TO_DOWNLOAD:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    aput-object v1, v8, v3

    sget-object v1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->CANCEL_TO_DOWNLOAD:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    aput-object v1, v8, v4

    sget-object v1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->REWIND30:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    aput-object v1, v8, v5

    sget-object v1, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->SWITCH_TO_PLAYER:Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->$VALUES:[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

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

    .line 73
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    iput-object p3, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$400(Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;)Ljava/lang/String;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->value:Ljava/lang/String;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;
    .locals 1

    .line 62
    const-class v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;
    .locals 1

    .line 62
    sget-object v0, Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->$VALUES:[Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/metrics/AudiblePlayerMetricsReporter$ActionType;

    return-object v0
.end method
