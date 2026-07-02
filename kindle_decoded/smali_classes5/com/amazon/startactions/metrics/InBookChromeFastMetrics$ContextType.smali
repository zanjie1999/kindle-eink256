.class public final enum Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;
.super Ljava/lang/Enum;
.source "InBookChromeFastMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/startactions/metrics/InBookChromeFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

.field public static final enum CHROME:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

.field public static final enum END_ACTIONS:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

.field public static final enum LEFT_NAVIGATION_MENU:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

.field public static final enum OVERFLOW_MENU:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

.field public static final enum START_ACTIONS:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;


# instance fields
.field final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 28
    new-instance v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    const/4 v1, 0x0

    const-string v2, "CHROME"

    const-string v3, "Chrome"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    .line 29
    new-instance v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    const/4 v2, 0x1

    const-string v3, "LEFT_NAVIGATION_MENU"

    const-string v4, "LeftNavMenu"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    .line 30
    new-instance v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    const/4 v3, 0x2

    const-string v4, "OVERFLOW_MENU"

    const-string v5, "OverflowMenu"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->OVERFLOW_MENU:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    .line 31
    new-instance v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    const/4 v4, 0x3

    const-string v5, "START_ACTIONS"

    const-string v6, "StartActions"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->START_ACTIONS:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    .line 32
    new-instance v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    const/4 v5, 0x4

    const-string v6, "END_ACTIONS"

    const-string v7, "EndActions"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->END_ACTIONS:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    .line 27
    sget-object v7, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->OVERFLOW_MENU:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->START_ACTIONS:Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->$VALUES:[Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

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

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->$VALUES:[Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    invoke-virtual {v0}, [Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/startactions/metrics/InBookChromeFastMetrics$ContextType;

    return-object v0
.end method
