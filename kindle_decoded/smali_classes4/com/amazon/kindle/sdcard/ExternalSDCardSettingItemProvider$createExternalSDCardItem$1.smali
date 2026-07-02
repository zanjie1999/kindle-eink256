.class public final Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$createExternalSDCardItem$1;
.super Ljava/lang/Object;
.source "ExternalSDCardSettingItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnToggleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;->createExternalSDCardItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$createExternalSDCardItem$1;->this$0:Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Landroid/content/Context;Z)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    .line 52
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStorageLocationPreference()Lcom/amazon/kindle/sdcard/IStorageLocationPreference;

    move-result-object v1

    .line 53
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v2

    const-string v3, "AndroidApplicationController.getInstance()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 55
    instance-of v3, v2, Lcom/amazon/kcp/redding/ReddingActivity;

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "storageLocationPreference"

    if-eqz p2, :cond_1

    .line 61
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Lcom/amazon/kindle/sdcard/IStorageLocationPreference;->setExternalSDCardPreferred(Z)V

    .line 62
    iget-object p2, p0, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$createExternalSDCardItem$1;->this$0:Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;

    check-cast v2, Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-static {p2, v2}, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;->access$showTransferProgress(Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;Lcom/amazon/kcp/redding/ReddingActivity;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-interface {v1, p2}, Lcom/amazon/kindle/sdcard/IStorageLocationPreference;->setExternalSDCardPreferred(Z)V

    .line 66
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$createExternalSDCardItem$1;->this$0:Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;

    invoke-static {v0, p1}, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;->access$createExternalSDCardItem(Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->notifyItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V

    return-void

    .line 56
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$createExternalSDCardItem$1;->this$0:Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;

    invoke-static {p1}, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;->access$getTAG$p(Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "activity should not be null and should be an instance of ReddingActivity"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
