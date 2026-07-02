.class public final Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createYourListsItem$1;
.super Ljava/lang/Object;
.source "CoreSettingItemsProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createYourListsItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 626
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 628
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "your_lists"

    .line 629
    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/MoreSettingsPageFastMetrics;->reportClickNonTogglableItem(Ljava/lang/String;)V

    .line 630
    invoke-static {}, Lcom/amazon/kindle/utils/YourListsIngressUtilsManager;->getInstance()Lcom/amazon/kindle/utils/YourListsIngressUtils;

    move-result-object v0

    .line 631
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v1

    sget-object v2, Lcom/amazon/kcp/more/MoreContext;->INSTANCE:Lcom/amazon/kcp/more/MoreContext;

    invoke-virtual {v2}, Lcom/amazon/kcp/more/MoreContext;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v2

    .line 630
    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/kindle/utils/YourListsIngressUtils;->handleYourListsButtonClick(Landroid/content/Context;ZLcom/amazon/kindle/krx/ui/ScreenletContext;)V

    goto :goto_0

    .line 633
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ConnectionError"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
