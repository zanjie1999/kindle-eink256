.class public final enum Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;
.super Ljava/lang/Enum;
.source "UpsellLocalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocalyticsTagEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

.field public static final enum CAMPAIGN_CHANGE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

.field public static final enum LIBRARY_BANNER_CLICK:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

.field public static final enum UPSELL_BANNER_VIEWED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

.field public static final enum UPSELL_CONTENT_BOUGHT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

.field public static final enum UPSELL_CONTENT_DELETED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

.field public static final enum UPSELL_DOWNLOAD_COMPLETED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

.field public static final enum UPSELL_FULL_PAGE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

.field public static final enum UPSELL_INTERSTITIAL_PAGE_DISMISSED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

.field public static final enum UPSELL_LINK_CLICKED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;


# instance fields
.field public final mTagString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 53
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    const/4 v1, 0x0

    const-string v2, "UPSELL_FULL_PAGE_VIEWED"

    const-string v3, "Upsell full page viewed"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_FULL_PAGE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    .line 54
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    const/4 v2, 0x1

    const-string v3, "UPSELL_BANNER_VIEWED"

    const-string v4, "Upsell banner viewed"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_BANNER_VIEWED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    .line 55
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    const/4 v3, 0x2

    const-string v4, "UPSELL_LINK_CLICKED"

    const-string v5, "Upsell link clicked"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_LINK_CLICKED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    .line 56
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    const/4 v4, 0x3

    const-string v5, "LIBRARY_BANNER_CLICK"

    const-string v6, "Library banner click"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->LIBRARY_BANNER_CLICK:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    .line 57
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    const/4 v5, 0x4

    const-string v6, "UPSELL_DOWNLOAD_COMPLETED"

    const-string v7, "Upsell Issue Downloaded"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_DOWNLOAD_COMPLETED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    .line 58
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    const/4 v6, 0x5

    const-string v7, "UPSELL_CONTENT_BOUGHT"

    const-string v8, "Upsell content bought"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_CONTENT_BOUGHT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    .line 59
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    const/4 v7, 0x6

    const-string v8, "UPSELL_INTERSTITIAL_PAGE_DISMISSED"

    const-string v9, "Upsell interstitial page dismissed"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_INTERSTITIAL_PAGE_DISMISSED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    .line 60
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    const/4 v8, 0x7

    const-string v9, "UPSELL_CONTENT_DELETED"

    const-string v10, "Upsell content deleted"

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_CONTENT_DELETED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    .line 61
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    const/16 v9, 0x8

    const-string v10, "CAMPAIGN_CHANGE"

    const-string v11, "Campaign change"

    invoke-direct {v0, v10, v9, v11}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->CAMPAIGN_CHANGE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    .line 52
    sget-object v11, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_FULL_PAGE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    aput-object v11, v10, v1

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_BANNER_VIEWED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_LINK_CLICKED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v10, v3

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->LIBRARY_BANNER_CLICK:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v10, v4

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_DOWNLOAD_COMPLETED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v10, v5

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_CONTENT_BOUGHT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v10, v6

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_INTERSTITIAL_PAGE_DISMISSED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v10, v7

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_CONTENT_DELETED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

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

    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 73
    iput-object p3, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->mTagString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;
    .locals 1

    .line 52
    const-class v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;
    .locals 1

    .line 52
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->mTagString:Ljava/lang/String;

    return-object v0
.end method
