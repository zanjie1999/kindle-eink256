.class final Lcom/amazon/device/ads/AdsIdentity$1;
.super Lcom/amazon/device/ads/AdsIdentityContainer;
.source "AdsIdentity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/AdsIdentity;->createAdsIdentityContainer(Landroid/content/Context;Lcom/amazon/device/ads/AuthenticationPlatformAdapter;Lcom/amazon/device/ads/MobileAdsLoggerFactory;)Lcom/amazon/device/ads/AdsIdentityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/amazon/device/ads/AdsIdentityContainer;-><init>()V

    return-void
.end method


# virtual methods
.method public getMobileAdsInfoStore()Lcom/amazon/device/ads/MobileAdsInfoStore;
    .locals 1

    .line 65
    invoke-static {}, Lcom/amazon/device/ads/MobileAdsInfoStore;->getInstance()Lcom/amazon/device/ads/MobileAdsInfoStore;

    move-result-object v0

    return-object v0
.end method
