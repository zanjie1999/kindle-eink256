.class public final Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;
.super Ljava/lang/Object;
.source "CoreSettingItemsProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnToggleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createSideloadPDocItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 329
    iput-object p1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_2

    .line 333
    iget-object p2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    invoke-static {p2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->access$getAndroidApplicationController$p(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p2

    const-string v0, "androidApplicationController"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object p2

    .line 335
    new-instance v0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onSuccess$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onSuccess$1;-><init>(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;Landroid/content/Context;)V

    .line 341
    new-instance p1, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onFailure$1;

    invoke-direct {p1, p0, p2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onFailure$1;-><init>(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;Landroid/app/Activity;)V

    if-eqz p2, :cond_1

    .line 352
    instance-of v1, p2, Lcom/amazon/kcp/redding/ReddingActivity;

    if-nez v1, :cond_0

    goto :goto_0

    .line 355
    :cond_0
    check-cast p2, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {p2}, Lcom/amazon/kcp/redding/ReddingActivity;->getPermissionsManager()Lcom/amazon/android/system/PermissionsManager;

    move-result-object p2

    const-string v1, "currentActivity.permissionsManager"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2, v0, p1}, Lcom/amazon/android/system/PermissionsManager;->requestExternalStoragePermissions(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 353
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 359
    :cond_2
    iget-object p2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    invoke-static {p2}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->access$getUserSettings$p(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    const-string v0, "userSettings"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setPersonalDocsSetting(Z)V

    .line 361
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    invoke-static {v0, p1}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->access$createSideloadPDocItem(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->notifyItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V

    :goto_1
    return-void
.end method
