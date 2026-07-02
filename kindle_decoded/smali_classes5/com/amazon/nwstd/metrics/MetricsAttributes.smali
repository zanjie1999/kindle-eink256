.class public final enum Lcom/amazon/nwstd/metrics/MetricsAttributes;
.super Ljava/lang/Enum;
.source "MetricsAttributes.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/MetricsAttributes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum ADS_VIEWED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum AGE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum ARTICLES_READ:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum ARTICLE_NAME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum ARTICLE_TYPE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum CLOSE_ZOOM_SESSION_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum COUNT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum INTERACTIVITY_ENGAGED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum ISSUE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum MEDIA_PERCENTAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum OVERLAYID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum PAGEID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum PERCENT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum PUBLICATION_DATE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum READING_MODE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum SIZE_PERCENTAGE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum TARGET_URL:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum UPSELL_BUTTON_CLICKED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

.field public static final enum UPSELL_CLICK_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 7
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/4 v1, 0x0

    const-string v2, "TIME"

    invoke-direct {v0, v2, v1}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 8
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/4 v2, 0x1

    const-string v3, "ARTICLE_ID"

    invoke-direct {v0, v3, v2}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 9
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/4 v3, 0x2

    const-string v4, "ARTICLE_NAME"

    invoke-direct {v0, v4, v3}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_NAME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 10
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/4 v4, 0x3

    const-string v5, "ARTICLE_TYPE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_TYPE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 11
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/4 v5, 0x4

    const-string v6, "PAGEID"

    invoke-direct {v0, v6, v5}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PAGEID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 12
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/4 v6, 0x5

    const-string v7, "ORIENTATION"

    invoke-direct {v0, v7, v6}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 13
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/4 v7, 0x6

    const-string v8, "ORIENTATION_CHANGES"

    invoke-direct {v0, v8, v7}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 14
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/4 v8, 0x7

    const-string v9, "PERCENT"

    invoke-direct {v0, v9, v8}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 15
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v9, 0x8

    const-string v10, "PUBLICATION_DATE"

    invoke-direct {v0, v10, v9}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PUBLICATION_DATE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 16
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v10, 0x9

    const-string v11, "ARTICLES_READ"

    invoke-direct {v0, v11, v10}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLES_READ:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 17
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v11, 0xa

    const-string v12, "AGE"

    invoke-direct {v0, v12, v11}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->AGE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 18
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v12, 0xb

    const-string v13, "ADS_VIEWED"

    invoke-direct {v0, v13, v12}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ADS_VIEWED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 19
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v13, 0xc

    const-string v14, "TARGET_URL"

    invoke-direct {v0, v14, v13}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TARGET_URL:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 20
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v14, 0xd

    const-string v15, "MEDIA_PERCENTAGE_VIEWED"

    invoke-direct {v0, v15, v14}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->MEDIA_PERCENTAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 21
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v15, 0xe

    const-string v14, "INTERACTIVITY_ENGAGED"

    invoke-direct {v0, v14, v15}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->INTERACTIVITY_ENGAGED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 22
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v14, 0xf

    const-string v15, "OVERLAYID"

    invoke-direct {v0, v15, v14}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->OVERLAYID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 23
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v15, 0x10

    const-string v14, "COUNT"

    invoke-direct {v0, v14, v15}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->COUNT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 24
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v14, 0x11

    const-string v15, "UPSELL_BUTTON_CLICKED"

    invoke-direct {v0, v15, v14}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->UPSELL_BUTTON_CLICKED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 25
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v15, 0x12

    const-string v14, "UPSELL_CLICK_ORIGIN"

    invoke-direct {v0, v14, v15}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->UPSELL_CLICK_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 26
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v14, 0x13

    const-string v15, "CLOSE_ZOOM_SESSION_ORIGIN"

    invoke-direct {v0, v15, v14}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->CLOSE_ZOOM_SESSION_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 27
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v15, 0x14

    const-string v14, "READING_MODE"

    invoke-direct {v0, v14, v15}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->READING_MODE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 28
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v14, 0x15

    const-string v15, "SIZE_PERCENTAGE"

    invoke-direct {v0, v15, v14}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->SIZE_PERCENTAGE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 29
    new-instance v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const-string v15, "ISSUE_ID"

    const/16 v14, 0x16

    invoke-direct {v0, v15, v14}, Lcom/amazon/nwstd/metrics/MetricsAttributes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ISSUE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v14, 0x17

    new-array v14, v14, [Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 6
    sget-object v15, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    aput-object v15, v14, v1

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_NAME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    aput-object v1, v14, v3

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_TYPE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    aput-object v1, v14, v4

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PAGEID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    aput-object v1, v14, v5

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    aput-object v1, v14, v6

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    aput-object v1, v14, v7

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    aput-object v1, v14, v8

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PUBLICATION_DATE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    aput-object v1, v14, v9

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLES_READ:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    aput-object v1, v14, v10

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->AGE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    aput-object v1, v14, v11

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ADS_VIEWED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    aput-object v1, v14, v12

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TARGET_URL:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    aput-object v1, v14, v13

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->MEDIA_PERCENTAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v2, 0xd

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->INTERACTIVITY_ENGAGED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v2, 0xe

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->OVERLAYID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v2, 0xf

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->COUNT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v2, 0x10

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->UPSELL_BUTTON_CLICKED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v2, 0x11

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->UPSELL_CLICK_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v2, 0x12

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->CLOSE_ZOOM_SESSION_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v2, 0x13

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->READING_MODE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v2, 0x14

    aput-object v1, v14, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->SIZE_PERCENTAGE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    const/16 v2, 0x15

    aput-object v1, v14, v2

    const/16 v1, 0x16

    aput-object v0, v14, v1

    sput-object v14, Lcom/amazon/nwstd/metrics/MetricsAttributes;->$VALUES:[Lcom/amazon/nwstd/metrics/MetricsAttributes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/MetricsAttributes;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/MetricsAttributes;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->$VALUES:[Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/MetricsAttributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/MetricsAttributes;

    return-object v0
.end method
