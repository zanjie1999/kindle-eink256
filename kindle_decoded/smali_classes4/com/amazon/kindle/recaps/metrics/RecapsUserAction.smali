.class public final enum Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;
.super Ljava/lang/Enum;
.source "RecapsFastMetricsClient.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

.field public static final enum RECAPS_CLOSED:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

.field public static final enum RECAPS_OPENED_FROM_OVERFLOW_MENU:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

.field public static final enum RECAPS_OPENED_FROM_PAGE_FLIP:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

.field public static final enum RECAPS_OPENED_FROM_SLIDER_MENU:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

.field public static final enum RECAPS_TABLE_OF_CONTENTS_CLOSED:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

.field public static final enum RECAPS_TABLE_OF_CONTENTS_ITEM_CLICKED:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

.field public static final enum RECAPS_TABLE_OF_CONTENTS_OPENED:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;


# instance fields
.field private final userActionMetric:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    new-instance v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    const/4 v2, 0x0

    const-string v3, "RECAPS_OPENED_FROM_SLIDER_MENU"

    const-string v4, "RecapsOpenedFromSliderMenu"

    .line 12
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->RECAPS_OPENED_FROM_SLIDER_MENU:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    const/4 v2, 0x1

    const-string v3, "RECAPS_OPENED_FROM_OVERFLOW_MENU"

    const-string v4, "RecapsOpenedFromOverflowMenu"

    .line 13
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->RECAPS_OPENED_FROM_OVERFLOW_MENU:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    const/4 v2, 0x2

    const-string v3, "RECAPS_OPENED_FROM_PAGE_FLIP"

    const-string v4, "RecapsOpenedFromPageFlip"

    .line 14
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->RECAPS_OPENED_FROM_PAGE_FLIP:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    const/4 v2, 0x3

    const-string v3, "RECAPS_CLOSED"

    const-string v4, "RecapsClosed"

    .line 15
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->RECAPS_CLOSED:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    const/4 v2, 0x4

    const-string v3, "RECAPS_TABLE_OF_CONTENTS_OPENED"

    const-string v4, "RecapsTableOfContentsOpened"

    .line 16
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->RECAPS_TABLE_OF_CONTENTS_OPENED:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    const/4 v2, 0x5

    const-string v3, "RECAPS_TABLE_OF_CONTENTS_CLOSED"

    const-string v4, "RecapsTableOfContentsClosed"

    .line 17
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->RECAPS_TABLE_OF_CONTENTS_CLOSED:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    aput-object v1, v0, v2

    new-instance v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    const/4 v2, 0x6

    const-string v3, "RECAPS_TABLE_OF_CONTENTS_ITEM_CLICKED"

    const-string v4, "RecapsTableOfContentsItemClicked"

    .line 18
    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->RECAPS_TABLE_OF_CONTENTS_ITEM_CLICKED:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    aput-object v1, v0, v2

    sput-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->$VALUES:[Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "userActionMetric"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->userActionMetric:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;
    .locals 1

    const-class v0, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->$VALUES:[Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    invoke-virtual {v0}, [Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    return-object v0
.end method


# virtual methods
.method public final getUserActionMetric()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->userActionMetric:Ljava/lang/String;

    return-object v0
.end method
