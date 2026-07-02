.class public final enum Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;
.super Ljava/lang/Enum;
.source "InBookChromeMetricsReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

.field public static final enum SWITCH_TO_LISTENING:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

.field public static final enum SWITCH_TO_READING:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

.field public static final enum UPGRADE_WITH_AUDIO:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;


# instance fields
.field final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 56
    new-instance v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    const/4 v1, 0x0

    const-string v2, "SWITCH_TO_LISTENING"

    const-string v3, "SwitchToListening"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->SWITCH_TO_LISTENING:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    .line 57
    new-instance v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    const/4 v2, 0x1

    const-string v3, "SWITCH_TO_READING"

    const-string v4, "SwitchToReading"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->SWITCH_TO_READING:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    .line 58
    new-instance v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    const/4 v3, 0x2

    const-string v4, "UPGRADE_WITH_AUDIO"

    const-string v5, "UpgradeWithAudio"

    invoke-direct {v0, v4, v3, v5}, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->UPGRADE_WITH_AUDIO:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    .line 55
    sget-object v5, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->SWITCH_TO_LISTENING:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->SWITCH_TO_READING:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->$VALUES:[Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

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

    .line 62
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 63
    iput-object p3, p0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;
    .locals 1

    .line 55
    const-class v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;
    .locals 1

    .line 55
    sget-object v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->$VALUES:[Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ActionType;

    return-object v0
.end method
