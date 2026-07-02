.class final Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onSuccess$1;
.super Ljava/lang/Object;
.source "CoreSettingItemsProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;->onToggle(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onSuccess$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;

    iput-object p2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onSuccess$1;->$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onSuccess$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;

    iget-object v0, v0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    invoke-static {v0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->access$getUserSettings$p(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "userSettings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setPersonalDocsSetting(Z)V

    .line 338
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onSuccess$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;

    iget-object v1, v1, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    iget-object v2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onSuccess$1;->$context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->access$createSideloadPDocItem(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->notifyItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V

    return-void
.end method
