.class Lcom/amazon/device/ads/AdsIdentity$IdentityIdentifyUserListener;
.super Ljava/lang/Object;
.source "AdsIdentity.java"

# interfaces
.implements Lcom/amazon/device/ads/UserIdentifier$IdentifyUserListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/device/ads/AdsIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IdentityIdentifyUserListener"
.end annotation


# instance fields
.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V
    .locals 1

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    invoke-static {}, Lcom/amazon/device/ads/AdsIdentity;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityIdentifyUserListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-void
.end method


# virtual methods
.method public userIdentified()V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/amazon/device/ads/AdsIdentity$IdentityIdentifyUserListener;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "User successfully identified."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return-void
.end method
