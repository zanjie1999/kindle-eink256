.class public Lcom/amazon/nwstd/store/TabletNewsstandStoreManager;
.super Ljava/lang/Object;
.source "TabletNewsstandStoreManager.java"

# interfaces
.implements Lcom/amazon/nwstd/store/INewsstandStoreManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openInterstitialPage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 22
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 23
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    .line 24
    check-cast v0, Lcom/amazon/kindle/store/StoreManager;

    const-string v1, "LIBRARY_BANNER"

    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_librarybanner_referral_tag:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v1, "HOME_BANNER"

    .line 28
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/newsstand/core/R$string;->upsell_homebanner_referral_tag:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string p2, "kTosPeriodicalsST"

    const-string v1, "FEATUREDOC"

    .line 31
    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/kindle/store/StoreManager;->createStoreRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreRequest;

    move-result-object p1

    const-string/jumbo p2, "storefront-context"

    const-string/jumbo v0, "periodicals"

    .line 32
    invoke-virtual {p1, p2, v0}, Lcom/amazon/kindle/store/StoreRequest;->addStoreParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "action"

    const-string v0, "featuredoc"

    .line 33
    invoke-virtual {p1, p2, v0}, Lcom/amazon/kindle/store/StoreRequest;->addStoreParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "pageid"

    const-string v0, "content-explorer"

    .line 34
    invoke-virtual {p1, p2, v0}, Lcom/amazon/kindle/store/StoreRequest;->addStoreParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lcom/amazon/kindle/store/StoreRequest;->launchStore()V

    return-void
.end method
