.class public final enum Lcom/amazon/kcp/util/fastmetrics/annotations/Action;
.super Ljava/lang/Enum;
.source "HighlightActionMetricRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/annotations/Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

.field public static final enum ADD:Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

.field public static final enum CHANGE_COLOR:Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

.field public static final enum EDIT:Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

.field public static final enum REMOVE:Lcom/amazon/kcp/util/fastmetrics/annotations/Action;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    const/4 v2, 0x0

    const-string v3, "ADD"

    const-string v4, "Add"

    .line 33
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;->ADD:Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    const/4 v2, 0x1

    const-string v3, "EDIT"

    const-string v4, "Edit"

    .line 34
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;->EDIT:Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    const/4 v2, 0x2

    const-string v3, "REMOVE"

    const-string v4, "Remove"

    .line 35
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;->REMOVE:Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    const/4 v2, 0x3

    const-string v3, "CHANGE_COLOR"

    const-string v4, "ChangeColor"

    .line 36
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;->CHANGE_COLOR:Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    const/4 v2, 0x4

    const-string v3, "TOGGLE_STAR"

    const-string v4, "ToggleStar"

    .line 37
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/annotations/Action;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/annotations/Action;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/annotations/Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/annotations/Action;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/Action;->value:Ljava/lang/String;

    return-object v0
.end method
