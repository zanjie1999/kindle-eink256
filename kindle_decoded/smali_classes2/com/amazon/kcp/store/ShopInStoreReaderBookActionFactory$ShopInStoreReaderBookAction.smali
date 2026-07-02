.class public final Lcom/amazon/kcp/store/ShopInStoreReaderBookActionFactory$ShopInStoreReaderBookAction;
.super Lcom/amazon/kindle/krx/reader/BaseReaderBookAction;
.source "ShopInStoreReaderBookActionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/ShopInStoreReaderBookActionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "ShopInStoreReaderBookAction"
.end annotation


# instance fields
.field private final context:Lcom/amazon/kindle/krx/reader/ReaderBookActionContext;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/reader/ReaderBookActionContext;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BaseReaderBookAction;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazon/kcp/store/ShopInStoreReaderBookActionFactory$ShopInStoreReaderBookAction;->context:Lcom/amazon/kindle/krx/reader/ReaderBookActionContext;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 3

    .line 83
    const-class v0, Lcom/amazon/kindle/store/StoreOpenerFactory;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/store/StoreOpenerFactory;

    if-eqz v0, :cond_0

    .line 85
    iget-object v1, p0, Lcom/amazon/kcp/store/ShopInStoreReaderBookActionFactory$ShopInStoreReaderBookAction;->context:Lcom/amazon/kindle/krx/reader/ReaderBookActionContext;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/store/StoreType;->BOOKSTORE:Lcom/amazon/kindle/store/StoreType;

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createStorefrontOpener(Landroid/content/Context;Lcom/amazon/kindle/store/StoreType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    const-string v1, "kin_red_reader_0"

    .line 86
    invoke-interface {v0, v1}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    :cond_0
    return-void
.end method

.method public getPriority()I
    .locals 2

    .line 75
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/application/ApplicationFeature;->NEUTRON_PHASE_1:Lcom/amazon/kindle/krx/application/ApplicationFeature;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->isFeatureEnabled(Lcom/amazon/kindle/krx/application/ApplicationFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/amazon/kcp/store/R$integer;->newtron_command_bar_shop:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kcp/store/R$integer;->command_bar_shop:I

    .line 78
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/store/ShopInStoreReaderBookActionFactory$ShopInStoreReaderBookAction;->context:Lcom/amazon/kindle/krx/reader/ReaderBookActionContext;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/store/ShopInStoreReaderBookActionFactory$ShopInStoreReaderBookAction;->context:Lcom/amazon/kindle/krx/reader/ReaderBookActionContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/store/R$string;->menuitem_reader_store:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
