.class public final enum Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;
.super Ljava/lang/Enum;
.source "HighlightActionMetricRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

.field public static final enum QUICK_HIGHLIGHT:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

.field public static final enum SELECTION_MENU:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    const/4 v2, 0x0

    const-string v3, "QUICK_HIGHLIGHT"

    const-string v4, "QuickHighlight"

    .line 26
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->QUICK_HIGHLIGHT:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    const/4 v2, 0x1

    const-string v3, "SELECTION_MENU"

    const-string v4, "SelectionMenu"

    .line 27
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->SELECTION_MENU:Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    const/4 v2, 0x2

    const-string v3, "HANDLEBAR"

    const-string v4, "HandleBar"

    .line 28
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    const/4 v2, 0x3

    const-string v3, "NOTEBOOK_ITEM"

    const-string v4, "NotebookItem"

    .line 29
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

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

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/EntryPoint;->value:Ljava/lang/String;

    return-object v0
.end method
