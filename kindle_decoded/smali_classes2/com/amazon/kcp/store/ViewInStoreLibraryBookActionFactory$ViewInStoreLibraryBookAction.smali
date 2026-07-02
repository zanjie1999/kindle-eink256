.class final Lcom/amazon/kcp/store/ViewInStoreLibraryBookActionFactory$ViewInStoreLibraryBookAction;
.super Lcom/amazon/kindle/krx/library/BaseLibraryBookAction;
.source "ViewInStoreLibraryBookActionFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/ViewInStoreLibraryBookActionFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ViewInStoreLibraryBookAction"
.end annotation


# instance fields
.field private final context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/library/LibraryBookActionContext;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryBookAction;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/store/ViewInStoreLibraryBookActionFactory$ViewInStoreLibraryBookAction;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/store/ViewInStoreLibraryBookActionFactory$ViewInStoreLibraryBookAction;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;->getBooks()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/content/IBook;

    .line 68
    const-class v1, Lcom/amazon/kindle/store/StoreOpenerFactory;

    invoke-static {v1}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/store/StoreOpenerFactory;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 70
    iget-object v2, p0, Lcom/amazon/kcp/store/ViewInStoreLibraryBookActionFactory$ViewInStoreLibraryBookAction;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createBookDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/amazon/kcp/store/ViewInStoreLibraryBookActionFactory$ViewInStoreLibraryBookAction;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/library/LibraryBookActionContext;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/store/StoreOpener;->setScreenletContext(Lcom/amazon/kindle/krx/ui/ScreenletContext;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    const-string v1, "kin_red_lib_0"

    .line 72
    invoke-interface {v0, v1}, Lcom/amazon/kindle/store/StoreOpener;->setReferralTag(Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    :cond_0
    return-void
.end method

.method public getPriority()I
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/store/ViewInStoreLibraryBookActionFactory$ViewInStoreLibraryBookAction;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/librarymodule/R$integer;->view_in_store_action_priority:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 55
    const-class v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Lcom/amazon/kindle/krx/payment/PlayBillingUtils;->shouldUsePaymentFlows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 57
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/store/ViewInStoreLibraryBookActionFactory$ViewInStoreLibraryBookAction;->context:Lcom/amazon/kindle/krx/library/LibraryBookActionContext;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/action/ActionContext;->getAndroidContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v0, :cond_1

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->lib_sample_store_link:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->lib_sample_details_link:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
