.class public final Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createOneClickPaymentMethodItem$1;
.super Ljava/lang/Object;
.source "CoreSettingItemsProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->createOneClickPaymentMethodItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
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

    .line 596
    iput-object p1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createOneClickPaymentMethodItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 598
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createOneClickPaymentMethodItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    invoke-static {v0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->access$getSdk$p(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/more/PaymentPreferencesActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 599
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 600
    iget-object v1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createOneClickPaymentMethodItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    invoke-static {v1}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->access$getApplicationManager$p(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    const-string v2, "applicationManager.deviceInformation"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DEVICE_TYPE"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    iget-object v1, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createOneClickPaymentMethodItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    invoke-static {v1}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->access$getApplicationManager$p(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v1

    const-string v2, "applicationManager.activeUserAccount"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPFMDomain()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DOMAIN_NAME"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 604
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 605
    iget-object v0, p0, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider$createOneClickPaymentMethodItem$1;->this$0:Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;

    invoke-static {v0}, Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;->access$getSdk$p(Lcom/amazon/kindle/setting/provider/CoreSettingItemsProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
