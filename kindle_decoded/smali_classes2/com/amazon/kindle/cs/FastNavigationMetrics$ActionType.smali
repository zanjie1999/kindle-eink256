.class public final enum Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;
.super Ljava/lang/Enum;
.source "FastNavigationMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cs/FastNavigationMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

.field public static final enum BREADCRUMB_PRESS:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

.field public static final enum CHROME_HIDDEN:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

.field public static final enum CHROME_SHOWN:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

.field public static final enum PAGE_FLIP_SCROLL:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

.field public static final enum PAGE_PIN_PRESS:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

.field public static final enum PAGE_TURN:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

.field public static final enum RUBBERBAND:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

.field public static final enum SCROLL:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

.field public static final enum SCRUBBER:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    new-instance v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    const/4 v2, 0x0

    const-string v3, "PAGE_PIN_PRESS"

    const-string v4, "PagePinPress"

    .line 28
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_PIN_PRESS:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    const/4 v2, 0x1

    const-string v3, "BREADCRUMB_PRESS"

    const-string v4, "BreadcrumbPress"

    .line 29
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->BREADCRUMB_PRESS:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    const/4 v2, 0x2

    const-string v3, "SCRUBBER"

    const-string v4, "Scrubber"

    .line 30
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->SCRUBBER:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    const/4 v2, 0x3

    const-string v3, "CHROME_SHOWN"

    const-string v4, "ChromeShown"

    .line 31
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->CHROME_SHOWN:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    const/4 v2, 0x4

    const-string v3, "CHROME_HIDDEN"

    const-string v4, "ChromeHidden"

    .line 32
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->CHROME_HIDDEN:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    const/4 v2, 0x5

    const-string v3, "RUBBERBAND"

    const-string v4, "Rubberband"

    .line 33
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->RUBBERBAND:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    const/4 v2, 0x6

    const-string v3, "PAGE_FLIP_SCROLL"

    const-string v4, "PageFlipScroll"

    .line 34
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_FLIP_SCROLL:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    const/4 v2, 0x7

    const-string v3, "SCROLL"

    const-string v4, "Scroll"

    .line 35
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->SCROLL:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    const/16 v2, 0x8

    const-string v3, "PAGE_TURN"

    const-string v4, "PageTurn"

    .line 36
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_TURN:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->$VALUES:[Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

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

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->id:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->$VALUES:[Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    return-object v0
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->id:Ljava/lang/String;

    return-object v0
.end method
