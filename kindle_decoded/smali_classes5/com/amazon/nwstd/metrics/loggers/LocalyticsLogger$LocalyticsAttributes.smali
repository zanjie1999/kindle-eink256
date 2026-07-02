.class public final enum Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;
.super Ljava/lang/Enum;
.source "LocalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocalyticsAttributes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum ADS_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum AD_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum AD_NAME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum AGE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum ARTICLES_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum ARTICLE_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum ARTICLE_NAME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum ARTICLE_TYPE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum BUCKETED_ADS_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum BUCKETED_ARTICLE_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum BUCKETED_TIME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum DID_PAUSE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum FAILURE_REASON:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum INTERACTIVITY_ENGAGED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum ISSUE_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum ORIENTATION:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum OVERLAYID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum PAGEID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum PERCENT:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum PUBLICATION_DATE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum SIZE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum STATUS:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum STOP_ZOOM_ORIGIN:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum TARGET_URL:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

.field public static final enum TIME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;


# instance fields
.field public final mAttributeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 101
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/4 v1, 0x0

    const-string v2, "ISSUE_ID"

    const-string v3, "Issue ID"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ISSUE_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 102
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/4 v2, 0x1

    const-string v3, "ARTICLE_ID"

    const-string v4, "Article ID"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 103
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/4 v3, 0x2

    const-string v4, "AD_ID"

    const-string v5, "Ad ID"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->AD_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 104
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/4 v4, 0x3

    const-string v5, "ARTICLE_NAME"

    const-string v6, "Article"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ARTICLE_NAME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 105
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/4 v5, 0x4

    const-string v6, "AD_NAME"

    const-string v7, "Ad"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->AD_NAME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 106
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/4 v6, 0x5

    const-string v7, "TIME"

    const-string v8, "Time"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->TIME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 107
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/4 v7, 0x6

    const-string v8, "BUCKETED_TIME"

    const-string v9, "Bucketed Time"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->BUCKETED_TIME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 108
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/4 v8, 0x7

    const-string v9, "PAGEID"

    const-string v10, "Page ID"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->PAGEID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 109
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v9, 0x8

    const-string v10, "ARTICLE_TYPE"

    const-string v11, "Type"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ARTICLE_TYPE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 110
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v10, 0x9

    const-string v11, "ORIENTATION"

    const-string v12, "Orientation"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 111
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v11, 0xa

    const-string v12, "ORIENTATION_CHANGES"

    const-string v13, "Orientation Changes"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 112
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v12, 0xb

    const-string v13, "PUBLICATION_DATE"

    const-string v14, "Publication Date"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->PUBLICATION_DATE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 113
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v13, 0xc

    const-string v14, "BUCKETED_ARTICLE_READ"

    const-string v15, "Articles Read Bucket"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->BUCKETED_ARTICLE_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 114
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v14, 0xd

    const-string v15, "ARTICLES_READ"

    const-string v13, "Articles Read Raw"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ARTICLES_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 115
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v13, 0xe

    const-string v15, "PERCENT"

    const-string v14, "Pct read"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 116
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v14, 0xf

    const-string v15, "AGE"

    const-string v13, "Age"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->AGE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 117
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v13, 0x10

    const-string v15, "BUCKETED_ADS_VIEWED"

    const-string v14, "Ads Viewed Bucketed"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->BUCKETED_ADS_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 118
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v14, 0x11

    const-string v15, "ADS_VIEWED"

    const-string v13, "Ads Viewed"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ADS_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 119
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v13, 0x12

    const-string v15, "TARGET_URL"

    const-string v14, "Target"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->TARGET_URL:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 120
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v14, 0x13

    const-string v15, "INTERACTIVITY_ENGAGED"

    const-string v13, "Interactivity Engaged"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->INTERACTIVITY_ENGAGED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 121
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v13, 0x14

    const-string v15, "OVERLAYID"

    const-string v14, "Overlay ID"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->OVERLAYID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 122
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v14, 0x15

    const-string v15, "SIZE"

    const-string v13, "Issue Size Bucketed"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->SIZE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 123
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const-string v13, "STATUS"

    const/16 v15, 0x16

    const-string v14, "Status"

    invoke-direct {v0, v13, v15, v14}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->STATUS:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 124
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const-string v13, "DID_PAUSE"

    const/16 v14, 0x17

    const-string v15, "Did Pause"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->DID_PAUSE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 125
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const-string v13, "FAILURE_REASON"

    const/16 v14, 0x18

    const-string v15, "Failure Reason"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->FAILURE_REASON:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 126
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const-string v13, "STOP_ZOOM_ORIGIN"

    const/16 v14, 0x19

    const-string v15, "Stop Zoom Origin"

    invoke-direct {v0, v13, v14, v15}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->STOP_ZOOM_ORIGIN:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v13, 0x1a

    new-array v13, v13, [Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    .line 100
    sget-object v14, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ISSUE_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    aput-object v14, v13, v1

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->AD_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ARTICLE_NAME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->AD_NAME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->TIME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->BUCKETED_TIME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->PAGEID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ARTICLE_TYPE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v11

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->PUBLICATION_DATE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v12

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->BUCKETED_ARTICLE_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ARTICLES_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->AGE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0xf

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->BUCKETED_ADS_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0x10

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ADS_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0x11

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->TARGET_URL:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0x12

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->INTERACTIVITY_ENGAGED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0x13

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->OVERLAYID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0x14

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->SIZE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0x15

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->STATUS:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0x16

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->DID_PAUSE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0x17

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->FAILURE_REASON:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0x18

    aput-object v1, v13, v2

    const/16 v1, 0x19

    aput-object v0, v13, v1

    sput-object v13, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

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

    .line 134
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 135
    iput-object p3, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->mAttributeString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;
    .locals 1

    .line 100
    const-class v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;
    .locals 1

    .line 100
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->mAttributeString:Ljava/lang/String;

    return-object v0
.end method
