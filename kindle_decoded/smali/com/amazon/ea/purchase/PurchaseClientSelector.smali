.class public Lcom/amazon/ea/purchase/PurchaseClientSelector;
.super Ljava/lang/Object;
.source "PurchaseClientSelector.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.PurchaseClientSelector"


# instance fields
.field private final glideV2PurchaseClient:Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;

.field private final legacyPurchaseClient:Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;

    invoke-direct {v0, p1}, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseClientSelector;->glideV2PurchaseClient:Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;

    .line 24
    new-instance v0, Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;

    invoke-direct {v0, p1}, Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V

    iput-object v0, p0, Lcom/amazon/ea/purchase/PurchaseClientSelector;->legacyPurchaseClient:Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;

    return-void
.end method


# virtual methods
.method public getGlideV2PurchaseClient()Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseClientSelector;->glideV2PurchaseClient:Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;

    return-object v0
.end method

.method public getLegacyPurchaseClient()Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseClientSelector;->legacyPurchaseClient:Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;

    return-object v0
.end method

.method public select()Lcom/amazon/ea/purchase/PurchaseClient;
    .locals 2

    const-string v0, "anyactions.debugsettings"

    const-string/jumbo v1, "purchase.client.useglidev2"

    .line 37
    invoke-static {v0, v1}, Lcom/amazon/startactions/storage/SharedPreferencesManager;->getBooleanPreference(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    sget-object v0, Lcom/amazon/ea/purchase/PurchaseClientSelector;->TAG:Ljava/lang/String;

    const-string v1, "Using legacy purchase client through debug menu override"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/amazon/ea/purchase/cache/OfferCache;->clearGlideCache()V

    .line 41
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseClientSelector;->legacyPurchaseClient:Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;

    return-object v0

    .line 43
    :cond_0
    sget-object v0, Lcom/amazon/ea/purchase/PurchaseClientSelector;->TAG:Ljava/lang/String;

    const-string v1, "Using GlideV2 purchase client by default"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/amazon/ea/purchase/cache/OfferCache;->clearLegacyCache()V

    .line 45
    iget-object v0, p0, Lcom/amazon/ea/purchase/PurchaseClientSelector;->glideV2PurchaseClient:Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;

    return-object v0
.end method
