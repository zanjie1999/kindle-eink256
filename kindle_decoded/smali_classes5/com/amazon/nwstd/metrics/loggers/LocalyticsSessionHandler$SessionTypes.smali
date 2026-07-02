.class public final enum Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;
.super Ljava/lang/Enum;
.source "LocalyticsSessionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SessionTypes"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

.field public static final enum CAMPAIGN_CHANGED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

.field public static final enum CONTENT_BOUGHT:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

.field public static final enum CONTENT_DELETED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

.field public static final enum DOWNLOAD:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

.field public static final enum INTERSTITIAL_PAGE_DISMISSED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

.field public static final enum LIBRARY_BANNER:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

.field public static final enum NORMAL:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;


# instance fields
.field private final mSessionType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 35
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    const/4 v1, 0x0

    const-string v2, "NORMAL"

    const-string v3, "Normal"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->NORMAL:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    .line 36
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    const/4 v2, 0x1

    const-string v3, "DOWNLOAD"

    const-string v4, "Download"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->DOWNLOAD:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    .line 37
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    const/4 v3, 0x2

    const-string v4, "LIBRARY_BANNER"

    const-string v5, "LibraryBanner"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->LIBRARY_BANNER:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    .line 38
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    const/4 v4, 0x3

    const-string v5, "CONTENT_BOUGHT"

    const-string v6, "CEContentBought"

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->CONTENT_BOUGHT:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    .line 39
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    const/4 v5, 0x4

    const-string v6, "INTERSTITIAL_PAGE_DISMISSED"

    const-string v7, "CEInterstitialPageDismissed"

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->INTERSTITIAL_PAGE_DISMISSED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    .line 40
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    const/4 v6, 0x5

    const-string v7, "CONTENT_DELETED"

    const-string v8, "CEContentDeleted"

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->CONTENT_DELETED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    .line 41
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    const/4 v7, 0x6

    const-string v8, "CAMPAIGN_CHANGED"

    const-string v9, "CECampaignChanged"

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->CAMPAIGN_CHANGED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    .line 34
    sget-object v9, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->NORMAL:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->DOWNLOAD:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->LIBRARY_BANNER:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->CONTENT_BOUGHT:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->INTERSTITIAL_PAGE_DISMISSED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->CONTENT_DELETED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

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

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput-object p3, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->mSessionType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;
    .locals 1

    .line 34
    const-class v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    return-object p0
.end method

.method public static values()[Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;
    .locals 1

    .line 34
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->$VALUES:[Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    invoke-virtual {v0}, [Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->mSessionType:Ljava/lang/String;

    return-object v0
.end method
