.class public final enum Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;
.super Ljava/lang/Enum;
.source "InBookChromeFastMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContextType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

.field public static final enum AUDIBLE_PLAYER:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

.field public static final enum CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

.field public static final enum DIALOG:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

.field public static final enum END_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

.field public static final enum FULL_PAGE_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

.field public static final enum LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

.field public static final enum LIBRARY:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

.field public static final enum NAVIGATION_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

.field public static final enum OVERFLOW_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

.field public static final enum START_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

.field public static final enum SYSTEM:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

.field public static final enum TABLE_OF_CONTENTS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    const/4 v2, 0x0

    const-string v3, "CHROME"

    const-string v4, "Chrome"

    .line 42
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    const/4 v2, 0x1

    const-string v3, "LIBRARY"

    const-string v4, "Library"

    .line 43
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LIBRARY:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    const/4 v2, 0x2

    const-string v3, "FULL_PAGE_VIEW"

    const-string v4, "FullPageView"

    .line 44
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->FULL_PAGE_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    const/4 v2, 0x3

    const-string v3, "NAVIGATION_VIEW"

    const-string v4, "NavigationView"

    .line 45
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->NAVIGATION_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    const/4 v2, 0x4

    const-string v3, "LEFT_NAVIGATION_MENU"

    const-string v4, "LeftNavMenu"

    .line 46
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->LEFT_NAVIGATION_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    const/4 v2, 0x5

    const-string v3, "OVERFLOW_MENU"

    const-string v4, "OverflowMenu"

    .line 47
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->OVERFLOW_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    const/4 v2, 0x6

    const-string v3, "SYSTEM"

    const-string v4, "System"

    .line 48
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->SYSTEM:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    const/4 v2, 0x7

    const-string v3, "END_ACTIONS"

    const-string v4, "EndActions"

    .line 49
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->END_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    const/16 v2, 0x8

    const-string v3, "START_ACTIONS"

    const-string v4, "StartActions"

    .line 50
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->START_ACTIONS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    const/16 v2, 0x9

    const-string v3, "DIALOG"

    const-string v4, "Dialog"

    .line 51
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->DIALOG:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    const/16 v2, 0xa

    const-string v3, "AUDIBLE_PLAYER"

    const-string v4, "AudiblePlayer"

    .line 52
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->AUDIBLE_PLAYER:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    const/16 v2, 0xb

    const-string v3, "TABLE_OF_CONTENTS"

    const-string v4, "TableOfContents"

    .line 53
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->TABLE_OF_CONTENTS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

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

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ContextType;->value:Ljava/lang/String;

    return-object v0
.end method
