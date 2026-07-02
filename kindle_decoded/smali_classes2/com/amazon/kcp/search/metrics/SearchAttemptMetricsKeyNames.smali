.class public final enum Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;
.super Ljava/lang/Enum;
.source "SearchAttemptMetricsKeyNames.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum BOOK_TYPE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum CONTEXT:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum FILE_SIZE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum HAS_IMAGE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum IS_CU:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum IS_DEVICE_OFFLINE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum IS_KU:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum IS_PRIME:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum IS_SERIES:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum IS_WIDGET:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum ITEM_POSITION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum ITEM_SECTION_POSITION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum ITEM_TYPE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum ITEM_VALUE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum LAST_ACCESSED:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum OUTCOME:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum OUTCOME_SEQ_NUM:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum PRICE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum READ_PROGRESS:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum REFINEMENTS:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum REVIEW_STARS:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum SEARCH_ID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum SEARCH_KEYWORD:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum SEARCH_KEYWORD_BEFORE_SUGGESTION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum SEARCH_SESSION_ID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum SEARCH_SUGGESTION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum SEARCH_SUGGESTION_SELECTED_POSITION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum SECTIONS_SHOWN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum SECTION_NAME:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum SECTION_POSITION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum SPELL_CORRECTED_KEYWORD:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum TOTAL_REVIEW:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum TOTAL_SHOWN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum TOTAL_STORE_RESULT:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum WAS_AVAILABLE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum WAS_DOWNLOADED:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

.field public static final enum WIDGET_ID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;


# instance fields
.field private final emitName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x25

    new-array v0, v0, [Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/4 v2, 0x0

    const-string v3, "SEARCH_ID"

    const-string v4, "search_id"

    .line 8
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_ID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/4 v2, 0x1

    const-string v3, "SEARCH_SESSION_ID"

    const-string v4, "search_session_id"

    .line 9
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_SESSION_ID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/4 v2, 0x2

    const-string v3, "SEARCH_KEYWORD"

    const-string v4, "search_keyword"

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_KEYWORD:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/4 v2, 0x3

    const-string v3, "CONTEXT"

    const-string v4, "context"

    .line 13
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->CONTEXT:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/4 v2, 0x4

    const-string v3, "SPELL_CORRECTED_KEYWORD"

    const-string v4, "spell_corrected_keyword"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SPELL_CORRECTED_KEYWORD:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/4 v2, 0x5

    const-string v3, "SEARCH_SUGGESTION"

    const-string v4, "search_suggestions"

    .line 15
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_SUGGESTION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/4 v2, 0x6

    const-string v3, "REFINEMENTS"

    const-string v4, "refinements"

    .line 16
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->REFINEMENTS:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/4 v2, 0x7

    const-string v3, "IS_DEVICE_OFFLINE"

    const-string v4, "is_device_offline"

    .line 17
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->IS_DEVICE_OFFLINE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x8

    const-string v3, "SEARCH_KEYWORD_BEFORE_SUGGESTION"

    const-string v4, "search_keyword_before_suggestion"

    .line 18
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_KEYWORD_BEFORE_SUGGESTION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x9

    const-string v3, "SEARCH_SUGGESTION_SELECTED_POSITION"

    const-string v4, "search_suggestion_selected_position"

    .line 19
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_SUGGESTION_SELECTED_POSITION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0xa

    const-string v3, "SECTION_NAME"

    const-string v4, "section_name"

    .line 22
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SECTION_NAME:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0xb

    const-string v3, "SECTION_POSITION"

    const-string v4, "section_position"

    .line 23
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SECTION_POSITION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0xc

    const-string v3, "TOTAL_SHOWN"

    const-string/jumbo v4, "total_shown"

    .line 24
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->TOTAL_SHOWN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0xd

    const-string v3, "IS_WIDGET"

    const-string v4, "is_widget"

    .line 25
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->IS_WIDGET:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0xe

    const-string v3, "WIDGET_ID"

    const-string/jumbo v4, "widget_id"

    .line 26
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->WIDGET_ID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0xf

    const-string v3, "OUTCOME"

    const-string v4, "outcome"

    .line 29
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->OUTCOME:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x10

    const-string v3, "ITEM_VALUE"

    const-string v4, "item_value"

    .line 30
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->ITEM_VALUE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x11

    const-string v3, "ITEM_TYPE"

    const-string v4, "item_type"

    .line 31
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->ITEM_TYPE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x12

    const-string v3, "ITEM_POSITION"

    const-string v4, "item_position"

    .line 32
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->ITEM_POSITION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x13

    const-string v3, "ITEM_SECTION_POSITION"

    const-string v4, "item_section_position"

    .line 33
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->ITEM_SECTION_POSITION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x14

    const-string v3, "OUTCOME_SEQ_NUM"

    const-string v4, "outcome_sequence_num"

    .line 34
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->OUTCOME_SEQ_NUM:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x15

    const-string v3, "SECTIONS_SHOWN"

    const-string v4, "sections_shown"

    .line 35
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SECTIONS_SHOWN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const-string v2, "TOTAL_STORE_RESULT"

    const/16 v3, 0x16

    const-string/jumbo v4, "total_store_found"

    .line 36
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->TOTAL_STORE_RESULT:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const-string v2, "HAS_IMAGE"

    const/16 v3, 0x17

    const-string/jumbo v4, "was_cover_image_shown"

    .line 39
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->HAS_IMAGE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const-string v2, "IS_PRIME"

    const/16 v3, 0x18

    const-string/jumbo v4, "was_prime_badge_shown"

    .line 40
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->IS_PRIME:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const-string v2, "IS_KU"

    const/16 v3, 0x19

    const-string/jumbo v4, "was_ku_badge_shown"

    .line 41
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->IS_KU:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const-string v2, "REVIEW_STARS"

    const/16 v3, 0x1a

    const-string v4, "review_stars"

    .line 42
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->REVIEW_STARS:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const-string v2, "TOTAL_REVIEW"

    const/16 v3, 0x1b

    const-string/jumbo v4, "total_reviews"

    .line 43
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->TOTAL_REVIEW:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const-string v2, "PRICE"

    const/16 v3, 0x1c

    const-string v4, "price"

    .line 44
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->PRICE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const-string v2, "WAS_AVAILABLE"

    const/16 v3, 0x1d

    const-string/jumbo v4, "was_available"

    .line 45
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->WAS_AVAILABLE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const-string v2, "READ_PROGRESS"

    const/16 v3, 0x1e

    const-string v4, "read_progress"

    .line 46
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->READ_PROGRESS:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const-string v2, "WAS_DOWNLOADED"

    const/16 v3, 0x1f

    const-string/jumbo v4, "was_downloaded"

    .line 47
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->WAS_DOWNLOADED:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const-string v2, "FILE_SIZE"

    const/16 v3, 0x20

    const-string v4, "file_size"

    .line 48
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->FILE_SIZE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const-string v2, "BOOK_TYPE"

    const/16 v3, 0x21

    const-string v4, "book_type"

    .line 49
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->BOOK_TYPE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const-string v2, "IS_SERIES"

    const/16 v3, 0x22

    const-string v4, "is_series"

    .line 50
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->IS_SERIES:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const-string v2, "IS_CU"

    const/16 v3, 0x23

    const-string/jumbo v4, "was_cu_badge_shown"

    .line 51
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->IS_CU:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const-string v2, "LAST_ACCESSED"

    const/16 v3, 0x24

    const-string v4, "last_accessed"

    .line 52
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->LAST_ACCESSED:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->$VALUES:[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->emitName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;
    .locals 1

    const-class v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->$VALUES:[Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    return-object v0
.end method


# virtual methods
.method public final getEmitName()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->emitName:Ljava/lang/String;

    return-object v0
.end method
