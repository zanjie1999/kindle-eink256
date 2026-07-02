.class public final enum Lcom/amazon/kcp/util/fastmetrics/ActionType;
.super Ljava/lang/Enum;
.source "RecordLibraryContextMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/ActionType;

.field public static final enum CLEAR_FILTER:Lcom/amazon/kcp/util/fastmetrics/ActionType;

.field public static final enum HIDE_READ_ITEMS:Lcom/amazon/kcp/util/fastmetrics/ActionType;

.field public static final enum LIBRARY_VIEW_CHANGE:Lcom/amazon/kcp/util/fastmetrics/ActionType;

.field public static final enum OPEN_FILTER_MENU:Lcom/amazon/kcp/util/fastmetrics/ActionType;

.field public static final enum PRESENT_LIBRARY:Lcom/amazon/kcp/util/fastmetrics/ActionType;

.field public static final enum SEE_SERIES_BUTTON_PRESSED:Lcom/amazon/kcp/util/fastmetrics/ActionType;

.field public static final enum SET_FILTER:Lcom/amazon/kcp/util/fastmetrics/ActionType;

.field public static final enum SHOW_READ_ITEMS:Lcom/amazon/kcp/util/fastmetrics/ActionType;

.field public static final enum UNSET_FILTER:Lcom/amazon/kcp/util/fastmetrics/ActionType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/ActionType;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;

    const/4 v2, 0x0

    const-string v3, "SET_FILTER"

    const-string v4, "setFilter"

    .line 40
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;->SET_FILTER:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;

    const/4 v2, 0x1

    const-string v3, "UNSET_FILTER"

    const-string/jumbo v4, "unsetFilter"

    .line 41
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;->UNSET_FILTER:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;

    const/4 v2, 0x2

    const-string v3, "CLEAR_FILTER"

    const-string v4, "clearFilter"

    .line 42
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;->CLEAR_FILTER:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;

    const/4 v2, 0x3

    const-string v3, "PRESENT_LIBRARY"

    const-string v4, "presentLibrary"

    .line 43
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;->PRESENT_LIBRARY:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;

    const/4 v2, 0x4

    const-string v3, "OPEN_FILTER_MENU"

    const-string v4, "openFilterMenu"

    .line 44
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;->OPEN_FILTER_MENU:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;

    const/4 v2, 0x5

    const-string v3, "SEE_SERIES_BUTTON_PRESSED"

    const-string v4, "seeSeriesButtonPressed"

    .line 45
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;->SEE_SERIES_BUTTON_PRESSED:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;

    const/4 v2, 0x6

    const-string v3, "HIDE_READ_ITEMS"

    const-string v4, "hideReadItems"

    .line 46
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;->HIDE_READ_ITEMS:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;

    const/4 v2, 0x7

    const-string v3, "SHOW_READ_ITEMS"

    const-string v4, "showReadItems"

    .line 47
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;->SHOW_READ_ITEMS:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;

    const/16 v2, 0x8

    const-string v3, "LIBRARY_VIEW_CHANGE"

    const-string v4, "libraryViewChange"

    .line 48
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/ActionType;->LIBRARY_VIEW_CHANGE:Lcom/amazon/kcp/util/fastmetrics/ActionType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/ActionType;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/ActionType;

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

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/ActionType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/ActionType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/ActionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/ActionType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/ActionType;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/ActionType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/ActionType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/ActionType;->value:Ljava/lang/String;

    return-object v0
.end method
