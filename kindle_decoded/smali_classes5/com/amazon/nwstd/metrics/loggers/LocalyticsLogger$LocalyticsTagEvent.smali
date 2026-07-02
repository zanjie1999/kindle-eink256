.class public final enum Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;
.super Ljava/lang/Enum;
.source "LocalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocalyticsTagEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

.field public static final enum AD_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

.field public static final enum ARTICLE_BOOKMARK_ADDED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

.field public static final enum ARTICLE_BOOKMARK_REMOVED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

.field public static final enum ARTICLE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

.field public static final enum DOWNLOAD_COMPLETED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

.field public static final enum DOWNLOAD_FAILED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

.field public static final enum INTERACTIVITY_AUDIO_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

.field public static final enum INTERACTIVITY_HOT_SPOT_CLICK:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

.field public static final enum INTERACTIVITY_SLIDESHOW_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

.field public static final enum INTERACTIVITY_TEXT_LINK_CLICK:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

.field public static final enum INTERACTIVITY_VIDEO_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

.field public static final enum ISSUE_OPENED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

.field public static final enum ISSUE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

.field public static final enum PAGE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

.field public static final enum YJ_ZOOM_SESSION:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;


# instance fields
.field public final mTagString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 65
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/4 v1, 0x0

    const-string v2, "ISSUE_OPENED"

    const-string v3, "Issue Opened"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ISSUE_OPENED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    .line 66
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/4 v2, 0x1

    const-string v3, "ARTICLE_VIEWED"

    const-string v4, "Article Viewed"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ARTICLE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    .line 67
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/4 v3, 0x2

    const-string v4, "AD_VIEWED"

    const-string v5, "Ad Viewed"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->AD_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    .line 68
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/4 v4, 0x3

    const-string v5, "PAGE_VIEWED"

    const-string v6, "Page Viewed"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->PAGE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    .line 69
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/4 v5, 0x4

    const-string v6, "ARTICLE_BOOKMARK_ADDED"

    const-string v7, "Article Bookmarked"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ARTICLE_BOOKMARK_ADDED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    .line 70
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/4 v6, 0x5

    const-string v7, "ARTICLE_BOOKMARK_REMOVED"

    const-string v8, "Article Bookmark Removed"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ARTICLE_BOOKMARK_REMOVED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    .line 71
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/4 v7, 0x6

    const-string v8, "ISSUE_VIEWED"

    const-string v9, "Issue Viewed"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ISSUE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    .line 72
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/4 v8, 0x7

    const-string v9, "INTERACTIVITY_HOT_SPOT_CLICK"

    const-string v10, "Interactivity Hot Spot Touched"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_HOT_SPOT_CLICK:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    .line 73
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/16 v9, 0x8

    const-string v10, "INTERACTIVITY_TEXT_LINK_CLICK"

    const-string v11, "Interactivity Text Link Touched"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_TEXT_LINK_CLICK:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    .line 74
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/16 v10, 0x9

    const-string v11, "INTERACTIVITY_AUDIO_READ"

    const-string v12, "Interactivity Audio Played"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_AUDIO_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    .line 75
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/16 v11, 0xa

    const-string v12, "INTERACTIVITY_VIDEO_READ"

    const-string v13, "Interactivity Video Viewed"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_VIDEO_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    .line 76
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/16 v12, 0xb

    const-string v13, "INTERACTIVITY_SLIDESHOW_READ"

    const-string v14, "Interactivity SlideShow Viewed"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_SLIDESHOW_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    .line 77
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/16 v13, 0xc

    const-string v14, "DOWNLOAD_COMPLETED"

    const-string v15, "Issue Downloaded"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->DOWNLOAD_COMPLETED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    .line 78
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/16 v14, 0xd

    const-string v15, "DOWNLOAD_FAILED"

    const-string v13, "Issue Download Failed"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->DOWNLOAD_FAILED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    .line 79
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/16 v13, 0xe

    const-string v15, "YJ_ZOOM_SESSION"

    const-string v14, "YJ Zoom Session"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->YJ_ZOOM_SESSION:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/16 v14, 0xf

    new-array v14, v14, [Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    .line 64
    sget-object v15, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ISSUE_OPENED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ARTICLE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->AD_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->PAGE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ARTICLE_BOOKMARK_ADDED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ARTICLE_BOOKMARK_REMOVED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ISSUE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_HOT_SPOT_CLICK:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_TEXT_LINK_CLICK:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_AUDIO_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_VIDEO_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_SLIDESHOW_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->DOWNLOAD_COMPLETED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/16 v2, 0xc

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->DOWNLOAD_FAILED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    aput-object v0, v14, v13

    sput-object v14, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

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

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput-object p3, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->mTagString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;
    .locals 1

    .line 64
    const-class v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;
    .locals 1

    .line 64
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->mTagString:Ljava/lang/String;

    return-object v0
.end method
