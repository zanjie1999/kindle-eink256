.class public final enum Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;
.super Ljava/lang/Enum;
.source "FastNavigationMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cs/FastNavigationMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Context"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

.field public static final enum CHROME:Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

.field public static final enum READING:Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    new-instance v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    const/4 v2, 0x0

    const-string v3, "READING"

    const-string v4, "Reading"

    .line 43
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;->READING:Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    const/4 v2, 0x1

    const-string v3, "CHROME"

    const-string v4, "Chrome"

    .line 44
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;->CHROME:Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;->$VALUES:[Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

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

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;
    .locals 1

    const-class v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;->$VALUES:[Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kindle/cs/FastNavigationMetrics$Context;->id:Ljava/lang/String;

    return-object v0
.end method
