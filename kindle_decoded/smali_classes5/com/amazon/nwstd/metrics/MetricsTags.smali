.class public final enum Lcom/amazon/nwstd/metrics/MetricsTags;
.super Ljava/lang/Enum;
.source "MetricsTags.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/MetricsTags;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum AD_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum ARTICLE_BOOKMARK_ADDED:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum ARTICLE_BOOKMARK_REMOVED:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum ARTICLE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum INTERACTIVITY_AUDIO_READ:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum INTERACTIVITY_HOT_SPOT_CLICK:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum INTERACTIVITY_SLIDESHOW_READ:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum INTERACTIVITY_TEXT_LINK_CLICK:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum INTERACTIVITY_VIDEO_READ:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum ISSUE_OPENED:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum ISSUE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum PAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum UNAVAILABLE_ARTICLE_DOWNLOAD_ERROR_COUNT:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum UNAVAILABLE_ARTICLE_OPEN:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum UNAVAILABLE_ARTICLE_VIEWED_TIME:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum UPSELL_BANNER_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum UPSELL_FULL_PAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum UPSELL_LINK_CLICKED:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum WEBCONTENT_OVERLAY_CREATED:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum ZOOM_SESSION_STARTED:Lcom/amazon/nwstd/metrics/MetricsTags;

.field public static final enum ZOOM_SESSION_STOPPED:Lcom/amazon/nwstd/metrics/MetricsTags;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 10
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/4 v1, 0x0

    const-string v2, "ISSUE_OPENED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->ISSUE_OPENED:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 11
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/4 v2, 0x1

    const-string v3, "ARTICLE_VIEWED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->ARTICLE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 12
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/4 v3, 0x2

    const-string v4, "AD_VIEWED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->AD_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 13
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/4 v4, 0x3

    const-string v5, "PAGE_VIEWED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->PAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 14
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/4 v5, 0x4

    const-string v6, "ARTICLE_BOOKMARK_ADDED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->ARTICLE_BOOKMARK_ADDED:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 15
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/4 v6, 0x5

    const-string v7, "ARTICLE_BOOKMARK_REMOVED"

    invoke-direct {v0, v7, v6}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->ARTICLE_BOOKMARK_REMOVED:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 16
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/4 v7, 0x6

    const-string v8, "ISSUE_VIEWED"

    invoke-direct {v0, v8, v7}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->ISSUE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 17
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/4 v8, 0x7

    const-string v9, "INTERACTIVITY_HOT_SPOT_CLICK"

    invoke-direct {v0, v9, v8}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->INTERACTIVITY_HOT_SPOT_CLICK:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 18
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v9, 0x8

    const-string v10, "INTERACTIVITY_TEXT_LINK_CLICK"

    invoke-direct {v0, v10, v9}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->INTERACTIVITY_TEXT_LINK_CLICK:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 19
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v10, 0x9

    const-string v11, "INTERACTIVITY_AUDIO_READ"

    invoke-direct {v0, v11, v10}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->INTERACTIVITY_AUDIO_READ:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 20
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v11, 0xa

    const-string v12, "INTERACTIVITY_VIDEO_READ"

    invoke-direct {v0, v12, v11}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->INTERACTIVITY_VIDEO_READ:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 21
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v12, 0xb

    const-string v13, "INTERACTIVITY_SLIDESHOW_READ"

    invoke-direct {v0, v13, v12}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->INTERACTIVITY_SLIDESHOW_READ:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 22
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v13, 0xc

    const-string v14, "UNAVAILABLE_ARTICLE_OPEN"

    invoke-direct {v0, v14, v13}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->UNAVAILABLE_ARTICLE_OPEN:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 23
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v14, 0xd

    const-string v15, "UNAVAILABLE_ARTICLE_VIEWED_TIME"

    invoke-direct {v0, v15, v14}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->UNAVAILABLE_ARTICLE_VIEWED_TIME:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 24
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v15, 0xe

    const-string v14, "UNAVAILABLE_ARTICLE_DOWNLOAD_ERROR_COUNT"

    invoke-direct {v0, v14, v15}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->UNAVAILABLE_ARTICLE_DOWNLOAD_ERROR_COUNT:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 25
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v14, 0xf

    const-string v15, "UPSELL_FULL_PAGE_VIEWED"

    invoke-direct {v0, v15, v14}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->UPSELL_FULL_PAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 26
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v15, 0x10

    const-string v14, "UPSELL_BANNER_VIEWED"

    invoke-direct {v0, v14, v15}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->UPSELL_BANNER_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 27
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v14, 0x11

    const-string v15, "UPSELL_LINK_CLICKED"

    invoke-direct {v0, v15, v14}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->UPSELL_LINK_CLICKED:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 28
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v15, 0x12

    const-string v14, "ZOOM_SESSION_STARTED"

    invoke-direct {v0, v14, v15}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->ZOOM_SESSION_STARTED:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 29
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v14, 0x13

    const-string v15, "ZOOM_SESSION_STOPPED"

    invoke-direct {v0, v15, v14}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->ZOOM_SESSION_STOPPED:Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 30
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v15, 0x14

    const-string v14, "WEBCONTENT_OVERLAY_CREATED"

    invoke-direct {v0, v14, v15}, Lcom/amazon/nwstd/metrics/MetricsTags;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->WEBCONTENT_OVERLAY_CREATED:Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v14, 0x15

    new-array v14, v14, [Lcom/amazon/nwstd/metrics/MetricsTags;

    .line 9
    sget-object v16, Lcom/amazon/nwstd/metrics/MetricsTags;->ISSUE_OPENED:Lcom/amazon/nwstd/metrics/MetricsTags;

    aput-object v16, v14, v1

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->ARTICLE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->AD_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->PAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->ARTICLE_BOOKMARK_ADDED:Lcom/amazon/nwstd/metrics/MetricsTags;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->ARTICLE_BOOKMARK_REMOVED:Lcom/amazon/nwstd/metrics/MetricsTags;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->ISSUE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->INTERACTIVITY_HOT_SPOT_CLICK:Lcom/amazon/nwstd/metrics/MetricsTags;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->INTERACTIVITY_TEXT_LINK_CLICK:Lcom/amazon/nwstd/metrics/MetricsTags;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->INTERACTIVITY_AUDIO_READ:Lcom/amazon/nwstd/metrics/MetricsTags;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->INTERACTIVITY_VIDEO_READ:Lcom/amazon/nwstd/metrics/MetricsTags;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->INTERACTIVITY_SLIDESHOW_READ:Lcom/amazon/nwstd/metrics/MetricsTags;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->UNAVAILABLE_ARTICLE_OPEN:Lcom/amazon/nwstd/metrics/MetricsTags;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->UNAVAILABLE_ARTICLE_VIEWED_TIME:Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->UNAVAILABLE_ARTICLE_DOWNLOAD_ERROR_COUNT:Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->UPSELL_FULL_PAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->UPSELL_BANNER_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->UPSELL_LINK_CLICKED:Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->ZOOM_SESSION_STARTED:Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->ZOOM_SESSION_STOPPED:Lcom/amazon/nwstd/metrics/MetricsTags;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    aput-object v0, v14, v15

    sput-object v14, Lcom/amazon/nwstd/metrics/MetricsTags;->$VALUES:[Lcom/amazon/nwstd/metrics/MetricsTags;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/MetricsTags;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/MetricsTags;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/MetricsTags;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsTags;->$VALUES:[Lcom/amazon/nwstd/metrics/MetricsTags;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/MetricsTags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/MetricsTags;

    return-object v0
.end method
