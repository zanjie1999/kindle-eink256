.class final enum Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;
.super Ljava/lang/Enum;
.source "SearchMetricsDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ActionID"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

.field public static final enum CLEAR_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

.field public static final enum EXPANDER_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

.field public static final enum GUI_UP_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

.field public static final enum OS_BACK_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

.field public static final enum RECENT_SEARCH_EMPTY_STATE_VISIBLE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

.field public static final enum RECENT_SEARCH_HISTORY_CLEARED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

.field public static final enum RECENT_SEARCH_LIST_VISIBLE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

.field public static final enum RESULT_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

.field public static final enum SEARCH_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

.field public static final enum SEARCH_FROM_AUTO_COMPLETE_TERM:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

.field public static final enum SEARCH_FROM_RECENT_SEARCH:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

.field public static final enum SEARCH_FROM_SELECTION:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

.field public static final enum SEARCH_RESULTS_VISIBLE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

.field public static final enum TEXT_AREA_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 390
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/4 v1, 0x0

    const-string v2, "SEARCH_BUTTON_CLICKED"

    const-string v3, "SearchButtonClick"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 391
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/4 v2, 0x1

    const-string v3, "SEARCH_FROM_SELECTION"

    const-string v4, "SearchFromSelection"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_FROM_SELECTION:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 392
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/4 v3, 0x2

    const-string v4, "SEARCH_FROM_AUTO_COMPLETE_TERM"

    const-string v5, "SearchFromAutoComplete"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_FROM_AUTO_COMPLETE_TERM:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 393
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/4 v4, 0x3

    const-string v5, "TEXT_AREA_CLICKED"

    const-string v6, "TextareaClick"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->TEXT_AREA_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 394
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/4 v5, 0x4

    const-string v6, "CLEAR_BUTTON_CLICKED"

    const-string v7, "ClearButtonClick"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->CLEAR_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 395
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/4 v6, 0x5

    const-string v7, "EXPANDER_CLICKED"

    const-string v8, "ExpanderClick"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->EXPANDER_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 396
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/4 v7, 0x6

    const-string v8, "RESULT_CLICKED"

    const-string v9, "ResultClick"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->RESULT_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 397
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/4 v8, 0x7

    const-string v9, "OS_BACK_BUTTON_CLICKED"

    const-string v10, "OSBackButtonClick"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->OS_BACK_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 398
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/16 v9, 0x8

    const-string v10, "GUI_UP_BUTTON_CLICKED"

    const-string v11, "GUIBackButtonClick"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->GUI_UP_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 399
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/16 v10, 0x9

    const-string v11, "SEARCH_RESULTS_VISIBLE"

    const-string v12, "SearchResultsVisible"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_RESULTS_VISIBLE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 400
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/16 v11, 0xa

    const-string v12, "SEARCH_FROM_RECENT_SEARCH"

    const-string v13, "SearchFromRecentSearch"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_FROM_RECENT_SEARCH:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 401
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/16 v12, 0xb

    const-string v13, "RECENT_SEARCH_HISTORY_CLEARED"

    const-string v14, "RecentSearchHistoryCleared"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->RECENT_SEARCH_HISTORY_CLEARED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 402
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/16 v13, 0xc

    const-string v14, "RECENT_SEARCH_EMPTY_STATE_VISIBLE"

    const-string v15, "RecentSearchEmptyStateVisible"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->RECENT_SEARCH_EMPTY_STATE_VISIBLE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 403
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/16 v14, 0xd

    const-string v15, "RECENT_SEARCH_LIST_VISIBLE"

    const-string v13, "RecentSearchListVisible"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->RECENT_SEARCH_LIST_VISIBLE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/16 v13, 0xe

    new-array v13, v13, [Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    .line 389
    sget-object v15, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    aput-object v15, v13, v1

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_FROM_SELECTION:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_FROM_AUTO_COMPLETE_TERM:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->TEXT_AREA_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->CLEAR_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->EXPANDER_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->RESULT_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->OS_BACK_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->GUI_UP_BUTTON_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_RESULTS_VISIBLE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->SEARCH_FROM_RECENT_SEARCH:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    aput-object v1, v13, v11

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->RECENT_SEARCH_HISTORY_CLEARED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    aput-object v1, v13, v12

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->RECENT_SEARCH_EMPTY_STATE_VISIBLE:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    aput-object v0, v13, v14

    sput-object v13, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->$VALUES:[Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

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

    .line 413
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 414
    iput-object p3, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;
    .locals 1

    .line 389
    const-class v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;
    .locals 1

    .line 389
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->$VALUES:[Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$ActionID;->name:Ljava/lang/String;

    return-object v0
.end method
