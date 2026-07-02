.class public final enum Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;
.super Ljava/lang/Enum;
.source "InBookChromeFastMetrics.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum ADD_BOOKMARK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum BACKGROUND_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum CLOSE_BEV:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum CLOSE_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum CLOSE_CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum GOTO_BEGINNING:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_ABOUT_THIS_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_BEFORE_YOU_GO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_BEV:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_FLASHCARDS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_GOTO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_GOTO_LOCATION:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_GOTO_PAGE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_KLO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_LEFTNAV:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_MENTIONED_IN_THIS_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_NOTEBOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_OVERFLOW_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_POPULAR_HIGHLIGHTS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_RECOMMEND_THIS_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_SEARCH:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_SHARE_PROGRESS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_SHOP_KINDLE_STORE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_TABLE_OF_CONTENTS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_VIEW_OPTIONS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_WORDWISE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_WORD_RUNNER:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum OPEN_XRAY:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum PRESS_TOC:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum REMOVE_BOOKMARK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum SWITCH_TO_LISTENING:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum SWITCH_TO_PERIODICAL_IMAGE_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum SWITCH_TO_PERIODICAL_TEXT_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum SYNC:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum TAP_READING_PROGRESS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

.field public static final enum UPGRADE_WITH_AUDIO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x27

    new-array v0, v0, [Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/4 v2, 0x0

    const-string v3, "TAP_READING_PROGRESS"

    const-string v4, "TapReadingProgress"

    .line 57
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->TAP_READING_PROGRESS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/4 v2, 0x1

    const-string v3, "SYNC"

    const-string v4, "Sync"

    .line 58
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->SYNC:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/4 v2, 0x2

    const-string v3, "PRESS_TOC"

    const-string v4, "PressTOC"

    .line 59
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->PRESS_TOC:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/4 v2, 0x3

    const-string v3, "OPEN_POPULAR_HIGHLIGHTS"

    const-string v4, "OpenPopularHighlights"

    .line 60
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_POPULAR_HIGHLIGHTS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/4 v2, 0x4

    const-string v3, "OPEN_NOTEBOOK"

    const-string v4, "OpenNotebook"

    .line 61
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_NOTEBOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/4 v2, 0x5

    const-string v3, "OPEN_VIEW_OPTIONS"

    const-string v4, "OpenViewOptions"

    .line 62
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_VIEW_OPTIONS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/4 v2, 0x6

    const-string v3, "OPEN_OVERFLOW_MENU"

    const-string v4, "OpenOverflowMenu"

    .line 63
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_OVERFLOW_MENU:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/4 v2, 0x7

    const-string v3, "ADD_BOOKMARK"

    const-string v4, "AddBookmark"

    .line 64
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->ADD_BOOKMARK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x8

    const-string v3, "REMOVE_BOOKMARK"

    const-string v4, "RemoveBookmark"

    .line 65
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->REMOVE_BOOKMARK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x9

    const-string v3, "OPEN_BOOKMARK"

    const-string v4, "OpenBookmark"

    .line 66
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0xa

    const-string v3, "OPEN_RECOMMEND_THIS_BOOK"

    const-string v4, "OpenRecommendThisBook"

    .line 67
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_RECOMMEND_THIS_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0xb

    const-string v3, "OPEN_XRAY"

    const-string v4, "OpenXray"

    .line 68
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_XRAY:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0xc

    const-string v3, "OPEN_KLO"

    const-string v4, "OpenKLO"

    .line 69
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_KLO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0xd

    const-string v3, "OPEN_SHOP_KINDLE_STORE"

    const-string v4, "OpenShopInKindleStore"

    .line 70
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_SHOP_KINDLE_STORE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0xe

    const-string v3, "OPEN_WORDWISE"

    const-string v4, "OpenWordWise"

    .line 71
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_WORDWISE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0xf

    const-string v3, "CLOSE_BEV"

    const-string v4, "CloseBEV"

    .line 72
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->CLOSE_BEV:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x10

    const-string v3, "OPEN_BEV"

    const-string v4, "OpenBEV"

    .line 73
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_BEV:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x11

    const-string v3, "OPEN_CHROME"

    const-string v4, "OpenChrome"

    .line 74
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x12

    const-string v3, "OPEN_BOOK"

    const-string v4, "OpenBook"

    .line 75
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x13

    const-string v3, "CLOSE_CHROME"

    const-string v4, "CloseChrome"

    .line 76
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->CLOSE_CHROME:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x14

    const-string v3, "OPEN_SEARCH"

    const-string v4, "OpenSearch"

    .line 77
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_SEARCH:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x15

    const-string v3, "CLOSE_BOOK"

    const-string v4, "CloseBook"

    .line 78
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->CLOSE_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "BACKGROUND_BOOK"

    const/16 v3, 0x16

    const-string v4, "BackgroundBook"

    .line 79
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->BACKGROUND_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "OPEN_LEFTNAV"

    const/16 v3, 0x17

    const-string v4, "OpenLeftNav"

    .line 80
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_LEFTNAV:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "OPEN_GOTO_PAGE"

    const/16 v3, 0x18

    const-string v4, "OpenGotoPage"

    .line 81
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_GOTO_PAGE:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "OPEN_GOTO_LOCATION"

    const/16 v3, 0x19

    const-string v4, "OpenGotoLocation"

    .line 82
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_GOTO_LOCATION:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "GOTO_BEGINNING"

    const/16 v3, 0x1a

    const-string v4, "GoToBeginning"

    .line 83
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->GOTO_BEGINNING:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "OPEN_GOTO"

    const/16 v3, 0x1b

    const-string v4, "OpenGoTo"

    .line 84
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_GOTO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "OPEN_WORD_RUNNER"

    const/16 v3, 0x1c

    const-string v4, "OpenWordRunner"

    .line 85
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_WORD_RUNNER:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "OPEN_FLASHCARDS"

    const/16 v3, 0x1d

    const-string v4, "OpenFlashCards"

    .line 86
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_FLASHCARDS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "OPEN_SHARE_PROGRESS"

    const/16 v3, 0x1e

    const-string v4, "OpenShareProgress"

    .line 87
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_SHARE_PROGRESS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "SWITCH_TO_LISTENING"

    const/16 v3, 0x1f

    const-string v4, "SwitchToListening"

    .line 88
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->SWITCH_TO_LISTENING:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "OPEN_BEFORE_YOU_GO"

    const/16 v3, 0x20

    const-string v4, "OpenBeforeYouGo"

    .line 89
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_BEFORE_YOU_GO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "UPGRADE_WITH_AUDIO"

    const/16 v3, 0x21

    const-string v4, "UpgradeWithAudio"

    .line 90
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->UPGRADE_WITH_AUDIO:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "OPEN_ABOUT_THIS_BOOK"

    const/16 v3, 0x22

    const-string v4, "OpenAboutThisBook"

    .line 91
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_ABOUT_THIS_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "OPEN_MENTIONED_IN_THIS_BOOK"

    const/16 v3, 0x23

    const-string v4, "OpenMentionedInBook"

    .line 92
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_MENTIONED_IN_THIS_BOOK:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "OPEN_TABLE_OF_CONTENTS"

    const/16 v3, 0x24

    const-string v4, "OpenTableOfContents"

    .line 93
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->OPEN_TABLE_OF_CONTENTS:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "SWITCH_TO_PERIODICAL_TEXT_VIEW"

    const/16 v3, 0x25

    const-string v4, "SwitchToPeriodicalTextView"

    .line 94
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->SWITCH_TO_PERIODICAL_TEXT_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const-string v2, "SWITCH_TO_PERIODICAL_IMAGE_VIEW"

    const/16 v3, 0x26

    const-string v4, "SwitchToPeriodicalImageView"

    .line 95
    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->SWITCH_TO_PERIODICAL_IMAGE_VIEW:Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    const/16 v2, 0x26

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

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

    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;
    .locals 1

    const-class v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->$VALUES:[Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics$ActionType;->value:Ljava/lang/String;

    return-object v0
.end method
