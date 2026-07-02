.class public final enum Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;
.super Ljava/lang/Enum;
.source "FastNavigationMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cs/FastNavigationMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NavMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

.field public static final enum HORIZONTAL:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

.field public static final enum VERTICAL:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    new-instance v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    const/4 v2, 0x0

    const-string v3, "HORIZONTAL"

    const-string v4, "Horizontal"

    .line 51
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;->HORIZONTAL:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    const/4 v2, 0x1

    const-string v3, "VERTICAL"

    const-string v4, "Vertical"

    .line 52
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;->VERTICAL:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;->$VALUES:[Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

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

    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;
    .locals 1

    const-class v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;->$VALUES:[Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavMode;->id:Ljava/lang/String;

    return-object v0
.end method
