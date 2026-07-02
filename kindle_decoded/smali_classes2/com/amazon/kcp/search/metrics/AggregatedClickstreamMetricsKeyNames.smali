.class public final enum Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;
.super Ljava/lang/Enum;
.source "AggregatedClickstreamMetricsKeyNames.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum ALIAS_OR_INDEX:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum ASIN_DATA:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum HIT_TYPE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum IMPRESSIONS:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum INFO_LINE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum IS_GLANCE_VIEW:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum IS_SEARCH_PAGE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum KEYWORDS:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum LEGAL_ENTITY_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum PAGE_TYPE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum PAGE_TYPE_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum QUERY_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum RANK:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum REFINEMENTS:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum REFMAKER:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum REMOTE_ADDRESS:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum REQUEST_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum SEARCH_PREFIX:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum SESSION_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum SITE_VARIANT:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum SPELL_CORRECTION:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum SR:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum STATUS_CODE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum SUB_PAGE_TYPE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum TAB_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum TEAM_NAME:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum TOTAL_FOUND:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

.field public static final enum USER_AGENT:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;


# instance fields
.field private final emitName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/4 v2, 0x0

    const-string v3, "REQUEST_ID"

    const-string v4, "request_id"

    .line 8
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->REQUEST_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/4 v2, 0x1

    const-string v3, "SESSION_ID"

    const-string v4, "session_id"

    .line 9
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->SESSION_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/4 v2, 0x2

    const-string v3, "REMOTE_ADDRESS"

    const-string v4, "remote_address"

    .line 10
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->REMOTE_ADDRESS:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/4 v2, 0x3

    const-string v3, "USER_AGENT"

    const-string/jumbo v4, "user_agent"

    .line 11
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->USER_AGENT:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/4 v2, 0x4

    const-string v3, "LEGAL_ENTITY_ID"

    const-string v4, "legal_entity_id"

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->LEGAL_ENTITY_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/4 v2, 0x5

    const-string v3, "STATUS_CODE"

    const-string v4, "status_code"

    .line 13
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->STATUS_CODE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/4 v2, 0x6

    const-string v3, "INFO_LINE"

    const-string v4, "info"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->INFO_LINE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/4 v2, 0x7

    const-string v3, "REFMAKER"

    const-string v4, "ref-override"

    .line 17
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->REFMAKER:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0x8

    const-string v3, "SITE_VARIANT"

    const-string v4, "site_variant"

    .line 18
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->SITE_VARIANT:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0x9

    const-string v3, "HIT_TYPE"

    const-string v4, "hitType"

    .line 19
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->HIT_TYPE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0xa

    const-string v3, "TEAM_NAME"

    const-string v4, "team-name"

    .line 20
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->TEAM_NAME:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0xb

    const-string v3, "PAGE_TYPE_ID"

    const-string v4, "page-type-id"

    .line 21
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->PAGE_TYPE_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0xc

    const-string v3, "QUERY_ID"

    const-string v4, "qid"

    .line 24
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->QUERY_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0xd

    const-string v3, "IS_GLANCE_VIEW"

    const-string v4, "is-glance-view"

    .line 25
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->IS_GLANCE_VIEW:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0xe

    const-string v3, "SR"

    const-string v4, "sr"

    .line 26
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->SR:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0xf

    const-string v3, "ASIN_DATA"

    const-string v4, "asin-data"

    .line 27
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->ASIN_DATA:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0x10

    const-string v3, "IS_SEARCH_PAGE"

    const-string v4, "is-search-page"

    .line 30
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->IS_SEARCH_PAGE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0x11

    const-string v3, "ALIAS_OR_INDEX"

    const-string v4, "alias-or-index"

    .line 31
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->ALIAS_OR_INDEX:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0x12

    const-string v3, "KEYWORDS"

    const-string v4, "keywords"

    .line 32
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->KEYWORDS:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0x13

    const-string v3, "TOTAL_FOUND"

    const-string/jumbo v4, "total-found"

    .line 33
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->TOTAL_FOUND:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0x14

    const-string v3, "IMPRESSIONS"

    const-string v4, "da"

    .line 34
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->IMPRESSIONS:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0x15

    const-string v3, "PAGE_TYPE"

    const-string v4, "page-type"

    .line 35
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->PAGE_TYPE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const-string v2, "SUB_PAGE_TYPE"

    const/16 v3, 0x16

    const-string v4, "sub-page-type"

    .line 36
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->SUB_PAGE_TYPE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const-string v2, "RANK"

    const/16 v3, 0x17

    const-string v4, "rank"

    .line 37
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->RANK:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const-string v2, "SPELL_CORRECTION"

    const/16 v3, 0x18

    const-string v4, "spell-cor"

    .line 38
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->SPELL_CORRECTION:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const-string v2, "REFINEMENTS"

    const/16 v3, 0x19

    const-string v4, "refinements"

    .line 39
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->REFINEMENTS:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const-string v2, "SEARCH_PREFIX"

    const/16 v3, 0x1a

    const-string v4, "sprefix"

    .line 40
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->SEARCH_PREFIX:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const-string v2, "TAB_ID"

    const/16 v3, 0x1b

    const-string v4, "tab-id"

    .line 41
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->TAB_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->$VALUES:[Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

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

    iput-object p3, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->emitName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;
    .locals 1

    const-class v0, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->$VALUES:[Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v0}, [Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    return-object v0
.end method


# virtual methods
.method public final getEmitName()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->emitName:Ljava/lang/String;

    return-object v0
.end method
