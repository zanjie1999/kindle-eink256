.class final enum Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;
.super Ljava/lang/Enum;
.source "UpsellLocalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LocalyticsAttributes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum ARTICLE_ID:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum BUCKETED_PERCENT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum BUCKETED_TIME:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum CLICKED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum CLICK_ORIGIN:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum ISSUE_ID:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum LIBRARY_BANNER_CLICK_CHOICE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum LIBRARY_BANNER_VISIBILITY:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum MARKETPLACE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum NEW_CAMPAIGN_ID:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum ORIENTATION:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum PERCENT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum PREVIOUS_CAMPAIGN_ID:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum READING_MODE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

.field public static final enum TIME:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;


# instance fields
.field public final mAttributeString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 86
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/4 v1, 0x0

    const-string v2, "ISSUE_ID"

    const-string v3, "Issue ID"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->ISSUE_ID:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 87
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/4 v2, 0x1

    const-string v3, "ARTICLE_ID"

    const-string v4, "Article ID"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 88
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/4 v3, 0x2

    const-string v4, "TIME"

    const-string v5, "Time"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->TIME:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 89
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/4 v4, 0x3

    const-string v5, "BUCKETED_TIME"

    const-string v6, "Bucketed Time"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->BUCKETED_TIME:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 90
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/4 v5, 0x4

    const-string v6, "ORIENTATION"

    const-string v7, "Orientation"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 91
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/4 v6, 0x5

    const-string v7, "ORIENTATION_CHANGES"

    const-string v8, "Orientation Changes"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 92
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/4 v7, 0x6

    const-string v8, "PERCENT"

    const-string v9, "Pct read"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 93
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/4 v8, 0x7

    const-string v9, "BUCKETED_PERCENT"

    const-string v10, "Pct read bucket"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->BUCKETED_PERCENT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 94
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/16 v9, 0x8

    const-string v10, "CLICKED"

    const-string v11, "Has clicked"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->CLICKED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 95
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/16 v10, 0x9

    const-string v11, "CLICK_ORIGIN"

    const-string v12, "Click origin"

    invoke-direct {v0, v11, v10, v12}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->CLICK_ORIGIN:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 96
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/16 v11, 0xa

    const-string v12, "LIBRARY_BANNER_CLICK_CHOICE"

    const-string v13, "Library banner click choice"

    invoke-direct {v0, v12, v11, v13}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->LIBRARY_BANNER_CLICK_CHOICE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 97
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/16 v12, 0xb

    const-string v13, "MARKETPLACE"

    const-string v14, "MarketPlace"

    invoke-direct {v0, v13, v12, v14}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->MARKETPLACE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 98
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/16 v13, 0xc

    const-string v14, "PREVIOUS_CAMPAIGN_ID"

    const-string v15, "Previous campaign ID"

    invoke-direct {v0, v14, v13, v15}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->PREVIOUS_CAMPAIGN_ID:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 99
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/16 v14, 0xd

    const-string v15, "NEW_CAMPAIGN_ID"

    const-string v13, "New campaign ID"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->NEW_CAMPAIGN_ID:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 100
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/16 v13, 0xe

    const-string v15, "LIBRARY_BANNER_VISIBILITY"

    const-string v14, "Library banner visibility"

    invoke-direct {v0, v15, v13, v14}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->LIBRARY_BANNER_VISIBILITY:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 101
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/16 v14, 0xf

    const-string v15, "READING_MODE"

    const-string v13, "Reading mode"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->READING_MODE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/16 v13, 0x10

    new-array v13, v13, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    .line 85
    sget-object v15, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->ISSUE_ID:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    aput-object v15, v13, v1

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->TIME:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->BUCKETED_TIME:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->BUCKETED_PERCENT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->CLICKED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->CLICK_ORIGIN:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->LIBRARY_BANNER_CLICK_CHOICE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v11

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->MARKETPLACE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    aput-object v1, v13, v12

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->PREVIOUS_CAMPAIGN_ID:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0xc

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->NEW_CAMPAIGN_ID:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0xd

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->LIBRARY_BANNER_VISIBILITY:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    const/16 v2, 0xe

    aput-object v1, v13, v2

    aput-object v0, v13, v14

    sput-object v13, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

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

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 113
    iput-object p3, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->mAttributeString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;
    .locals 1

    .line 85
    const-class v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;
    .locals 1

    .line 85
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->mAttributeString:Ljava/lang/String;

    return-object v0
.end method
