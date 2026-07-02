.class Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;
.super Ljava/lang/Object;
.source "UpsellDataFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadStats"
.end annotation


# instance fields
.field successDownloadTimeMS:J

.field totalDownloadTimeMS:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$1;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Lcom/amazon/nwstd/upsell/fetcher/UpsellDataFetcher$DownloadStats;-><init>()V

    return-void
.end method
