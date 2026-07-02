.class public final Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createManageYourTitlesItem$1;
.super Ljava/lang/Object;
.source "CoreSettingItemsProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createManageYourTitlesItem(Landroid/content/Context;Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $item:Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

.field final synthetic this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;",
            ")V"
        }
    .end annotation

    .line 653
    iput-object p1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createManageYourTitlesItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    iput-object p2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createManageYourTitlesItem$1;->$item:Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createManageYourTitlesItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    iget-object v1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createManageYourTitlesItem$1;->$item:Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    invoke-virtual {v1}, Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;->getMetricLabel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->access$getMetricNameForSubscription(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/MoreSettingsPageFastMetrics;->reportClickNonTogglableItem(Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/amazon/kindle/utils/ManageYourTitlesUtilsManager;->getInstance()Lcom/amazon/kindle/utils/ManageYourTitlesUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createManageYourTitlesItem$1;->$item:Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;

    .line 658
    sget-object v2, Lcom/amazon/kcp/more/MoreContext;->INSTANCE:Lcom/amazon/kcp/more/MoreContext;

    invoke-virtual {v2}, Lcom/amazon/kcp/more/MoreContext;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v2

    .line 657
    invoke-virtual {v0, p1, v1, v2}, Lcom/amazon/kindle/utils/ManageYourTitlesUtils;->handleYourTitlesButtonClick(Landroid/content/Context;Lcom/amazon/kindle/setting/item/ManageYourTitlesItem;Lcom/amazon/kindle/krx/ui/ScreenletContext;)V

    goto :goto_0

    .line 660
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ConnectionError"

    invoke-interface {p1, v1, v0}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
