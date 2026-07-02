.class final enum Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;
.super Ljava/lang/Enum;
.source "SearchMetricsDelegate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MetadataKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

.field public static final enum ACTION_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

.field public static final enum ACTION_INDEX:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

.field public static final enum CHARS_TYPED_BEFORE_AUTOCOMPLETE_TERM_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

.field public static final enum CONTEXT_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

.field public static final enum PROVIDER:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

.field public static final enum RECENT_SEARCH_TERM_COUNT:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

.field public static final enum ROW_IN_PROVIDER:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

.field public static final enum SEARCH_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

.field public static final enum SEARCH_STATUS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

.field public static final enum SECTION_RESULTS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

.field public static final enum SECTION_STATUS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

.field public static final enum TOTAL_RESULTS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

.field public static final enum WERE_SUGGESTIONS_AVAILABLE_ON_SEARCH_EXECUTION:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 319
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    const/4 v1, 0x0

    const-string v2, "CONTEXT_ID"

    const-string v3, "ContextID"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->CONTEXT_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    .line 320
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    const/4 v2, 0x1

    const-string v3, "SEARCH_ID"

    const-string v4, "SearchID"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SEARCH_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    .line 321
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    const/4 v3, 0x2

    const-string v4, "ACTION_ID"

    const-string v5, "ActionID"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->ACTION_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    .line 322
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    const/4 v4, 0x3

    const-string v5, "ACTION_INDEX"

    const-string v6, "ActionIndex"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->ACTION_INDEX:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    .line 323
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    const/4 v5, 0x4

    const-string v6, "SEARCH_STATUS"

    const-string v7, "SearchStatus"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SEARCH_STATUS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    .line 324
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    const/4 v6, 0x5

    const-string v7, "TOTAL_RESULTS"

    const-string v8, "TotalResults"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->TOTAL_RESULTS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    .line 325
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    const/4 v7, 0x6

    const-string v8, "PROVIDER"

    const-string v9, "Provider"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->PROVIDER:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    .line 326
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    const/4 v8, 0x7

    const-string v9, "ROW_IN_PROVIDER"

    const-string v10, "RowInProvider"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->ROW_IN_PROVIDER:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    .line 327
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    const/16 v9, 0x8

    const-string v10, "SECTION_RESULTS"

    const-string v11, "SectionResults"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SECTION_RESULTS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    .line 328
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    const/16 v10, 0x9

    const-string v11, "SECTION_STATUS"

    const-string v12, "SectionStatus"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SECTION_STATUS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    .line 329
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    const/16 v11, 0xa

    const-string v12, "CHARS_TYPED_BEFORE_AUTOCOMPLETE_TERM_CLICKED"

    const-string v13, "CharsTypeBeforeAutoCompleteClick"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->CHARS_TYPED_BEFORE_AUTOCOMPLETE_TERM_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    .line 330
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    const/16 v12, 0xb

    const-string v13, "WERE_SUGGESTIONS_AVAILABLE_ON_SEARCH_EXECUTION"

    const-string v14, "WereSuggestionsAvailableOnSearch"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->WERE_SUGGESTIONS_AVAILABLE_ON_SEARCH_EXECUTION:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    .line 331
    new-instance v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    const/16 v13, 0xc

    const-string v14, "RECENT_SEARCH_TERM_COUNT"

    const-string v15, "RecentSearchTermCount"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->RECENT_SEARCH_TERM_COUNT:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    const/16 v14, 0xd

    new-array v14, v14, [Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    .line 318
    sget-object v15, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->CONTEXT_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SEARCH_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->ACTION_ID:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->ACTION_INDEX:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SEARCH_STATUS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->TOTAL_RESULTS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->PROVIDER:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->ROW_IN_PROVIDER:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SECTION_RESULTS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->SECTION_STATUS:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->CHARS_TYPED_BEFORE_AUTOCOMPLETE_TERM_CLICKED:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->WERE_SUGGESTIONS_AVAILABLE_ON_SEARCH_EXECUTION:Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    aput-object v1, v14, v12

    aput-object v0, v14, v13

    sput-object v14, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->$VALUES:[Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

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

    .line 341
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 342
    iput-object p3, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;
    .locals 1

    .line 318
    const-class v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;
    .locals 1

    .line 318
    sget-object v0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->$VALUES:[Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/amazon/kcp/search/enhancedsearch/SearchMetricsDelegate$MetadataKey;->name:Ljava/lang/String;

    return-object v0
.end method
