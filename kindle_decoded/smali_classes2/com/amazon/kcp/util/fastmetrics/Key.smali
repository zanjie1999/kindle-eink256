.class public final enum Lcom/amazon/kcp/util/fastmetrics/Key;
.super Ljava/lang/Enum;
.source "RecordLibraryContextMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/Key;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/Key;

.field public static final enum ACTION_TYPE:Lcom/amazon/kcp/util/fastmetrics/Key;

.field public static final enum ACTION_VALUE:Lcom/amazon/kcp/util/fastmetrics/Key;

.field public static final enum DISPLAYED_ITEMS_COUNT:Lcom/amazon/kcp/util/fastmetrics/Key;

.field public static final enum LIBRARY_TYPE:Lcom/amazon/kcp/util/fastmetrics/Key;

.field public static final enum SELECTED_FILTERS:Lcom/amazon/kcp/util/fastmetrics/Key;

.field public static final enum SELECTED_SORT:Lcom/amazon/kcp/util/fastmetrics/Key;

.field public static final enum SELECTED_VIEWMODE:Lcom/amazon/kcp/util/fastmetrics/Key;

.field public static final enum SUBLIBRARY_ID:Lcom/amazon/kcp/util/fastmetrics/Key;

.field public static final enum TIME_IN_LAST_CONTEXT_STATE:Lcom/amazon/kcp/util/fastmetrics/Key;

.field public static final enum VIEWED_ITEMS_COUNT:Lcom/amazon/kcp/util/fastmetrics/Key;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xa

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/Key;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/Key;

    const/4 v2, 0x0

    const-string v3, "LIBRARY_TYPE"

    const-string v4, "lc_library_type"

    .line 13
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/Key;->LIBRARY_TYPE:Lcom/amazon/kcp/util/fastmetrics/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/Key;

    const/4 v2, 0x1

    const-string v3, "SUBLIBRARY_ID"

    const-string v4, "lc_sublibrary_identifier"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/Key;->SUBLIBRARY_ID:Lcom/amazon/kcp/util/fastmetrics/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/Key;

    const/4 v2, 0x2

    const-string v3, "ACTION_TYPE"

    const-string v4, "action_type"

    .line 15
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/Key;->ACTION_TYPE:Lcom/amazon/kcp/util/fastmetrics/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/Key;

    const/4 v2, 0x3

    const-string v3, "SELECTED_FILTERS"

    const-string v4, "lc_selected_filters"

    .line 16
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/Key;->SELECTED_FILTERS:Lcom/amazon/kcp/util/fastmetrics/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/Key;

    const/4 v2, 0x4

    const-string v3, "SELECTED_VIEWMODE"

    const-string v4, "lc_selected_viewmode"

    .line 17
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/Key;->SELECTED_VIEWMODE:Lcom/amazon/kcp/util/fastmetrics/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/Key;

    const/4 v2, 0x5

    const-string v3, "SELECTED_SORT"

    const-string v4, "lc_selected_sort"

    .line 18
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/Key;->SELECTED_SORT:Lcom/amazon/kcp/util/fastmetrics/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/Key;

    const/4 v2, 0x6

    const-string v3, "ACTION_VALUE"

    const-string v4, "action_value"

    .line 19
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/Key;->ACTION_VALUE:Lcom/amazon/kcp/util/fastmetrics/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/Key;

    const/4 v2, 0x7

    const-string v3, "TIME_IN_LAST_CONTEXT_STATE"

    const-string v4, "lcm_time_in_last_context_state"

    .line 20
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/Key;->TIME_IN_LAST_CONTEXT_STATE:Lcom/amazon/kcp/util/fastmetrics/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/Key;

    const/16 v2, 0x8

    const-string v3, "VIEWED_ITEMS_COUNT"

    const-string v4, "lcm_viewed_items_count"

    .line 21
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/Key;->VIEWED_ITEMS_COUNT:Lcom/amazon/kcp/util/fastmetrics/Key;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/Key;

    const/16 v2, 0x9

    const-string v3, "DISPLAYED_ITEMS_COUNT"

    const-string v4, "displayed_items_count"

    .line 22
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/Key;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/Key;->DISPLAYED_ITEMS_COUNT:Lcom/amazon/kcp/util/fastmetrics/Key;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/Key;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/Key;

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

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/Key;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/Key;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/Key;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/Key;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/Key;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/Key;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/Key;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/Key;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/Key;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/Key;->value:Ljava/lang/String;

    return-object v0
.end method
