.class final Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onFailure$1;
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
.field final synthetic $currentActivity:Landroid/app/Activity;

.field final synthetic this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onFailure$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;

    iput-object p2, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onFailure$1;->$currentActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onFailure$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;

    iget-object v0, v0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    invoke-static {v0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->access$getUserSettings$p(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const-string v1, "userSettings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setPersonalDocsSetting(Z)V

    .line 343
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onFailure$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;

    iget-object v0, v0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    invoke-static {v0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->access$getUserSettings$p(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setHaveRequestedPersonalDocsPermission(Z)V

    .line 344
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createSideloadPDocItem$1$onToggle$onFailure$1;->$currentActivity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/amazon/kcp/more/R$string;->storage_permission_denied_toast:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 345
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void
.end method
