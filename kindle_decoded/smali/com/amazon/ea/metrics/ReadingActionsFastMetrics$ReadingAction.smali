.class public final enum Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;
.super Ljava/lang/Enum;
.source "ReadingActionsFastMetrics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/metrics/ReadingActionsFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReadingAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

.field public static final enum END_ACTIONS:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

.field public static final enum START_ACTIONS:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;


# instance fields
.field private final text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 29
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

    const/4 v1, 0x0

    const-string v2, "START_ACTIONS"

    const-string v3, "Start Actions"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->START_ACTIONS:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

    .line 30
    new-instance v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

    const/4 v2, 0x1

    const-string v3, "END_ACTIONS"

    const-string v4, "End Actions"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->END_ACTIONS:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

    .line 28
    sget-object v4, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->START_ACTIONS:Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->$VALUES:[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->text:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;
    .locals 1

    .line 28
    const-class v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;
    .locals 1

    .line 28
    sget-object v0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->$VALUES:[Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

    invoke-virtual {v0}, [Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/ea/metrics/ReadingActionsFastMetrics$ReadingAction;->text:Ljava/lang/String;

    return-object v0
.end method
