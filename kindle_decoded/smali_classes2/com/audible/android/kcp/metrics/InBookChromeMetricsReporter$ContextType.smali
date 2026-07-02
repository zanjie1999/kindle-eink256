.class public final enum Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;
.super Ljava/lang/Enum;
.source "InBookChromeMetricsReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

.field public static final enum CHROME:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

.field public static final enum LEFT_NAVIGATION_MENU:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

.field public static final enum OVERFLOW_MENU:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;


# instance fields
.field final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 40
    new-instance v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    const/4 v1, 0x0

    const-string v2, "CHROME"

    const-string v3, "Chrome"

    invoke-direct {v0, v2, v1, v3}, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;->CHROME:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    .line 41
    new-instance v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    const/4 v2, 0x1

    const-string v3, "LEFT_NAVIGATION_MENU"

    const-string v4, "LeftNavMenu"

    invoke-direct {v0, v3, v2, v4}, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;->LEFT_NAVIGATION_MENU:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    .line 42
    new-instance v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    const/4 v3, 0x2

    const-string v4, "OVERFLOW_MENU"

    const-string v5, "OverflowMenu"

    invoke-direct {v0, v4, v3, v5}, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;->OVERFLOW_MENU:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    .line 39
    sget-object v5, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;->CHROME:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;->LEFT_NAVIGATION_MENU:Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;->$VALUES:[Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

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

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-object p3, p0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;
    .locals 1

    .line 39
    const-class v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    return-object p0
.end method

.method public static values()[Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;
    .locals 1

    .line 39
    sget-object v0, Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;->$VALUES:[Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    invoke-virtual {v0}, [Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/android/kcp/metrics/InBookChromeMetricsReporter$ContextType;

    return-object v0
.end method
