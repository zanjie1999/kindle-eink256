.class public final enum Lcom/amazon/kcp/util/fastmetrics/annotations/Key;
.super Ljava/lang/Enum;
.source "HighlightActionMetricRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/annotations/Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

.field public static final enum ACTION:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

.field public static final enum COLOR:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

.field public static final enum END_POSITION:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

.field public static final enum ENTRY_POINT:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

.field public static final enum HIGHLIGHT_MENU_SETTING:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

.field public static final enum STARRED:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

.field public static final enum START_POSITION:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    const/4 v2, 0x0

    const-string v3, "ACTION"

    const-string v4, "action"

    .line 42
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->ACTION:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    const/4 v2, 0x1

    const-string v3, "ENTRY_POINT"

    const-string v4, "entry_point"

    .line 43
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->ENTRY_POINT:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    const/4 v2, 0x2

    const-string v3, "START_POSITION"

    const-string v4, "start_position"

    .line 44
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->START_POSITION:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    const/4 v2, 0x3

    const-string v3, "END_POSITION"

    const-string v4, "end_position"

    .line 45
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->END_POSITION:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    const/4 v2, 0x4

    const-string v3, "COLOR"

    const-string v4, "color"

    .line 46
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->COLOR:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    const/4 v2, 0x5

    const-string v3, "STARRED"

    const-string v4, "starred"

    .line 47
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->STARRED:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    const/4 v2, 0x6

    const-string v3, "HIGHLIGHT_MENU_SETTING"

    const-string v4, "highlight_menu_setting"

    .line 48
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->HIGHLIGHT_MENU_SETTING:Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    const/4 v2, 0x7

    const-string v3, "WORD_COUNT"

    const-string/jumbo v4, "word_count"

    .line 49
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

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

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/annotations/Key;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/annotations/Key;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/annotations/Key;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/annotations/Key;->value:Ljava/lang/String;

    return-object v0
.end method
