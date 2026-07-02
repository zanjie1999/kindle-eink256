.class public final Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider$createFamilySharingItem$1;
.super Ljava/lang/Object;
.source "FamilySharingItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnClickHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider;->createFamilySharingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider$createFamilySharingItem$1;->this$0:Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider$createFamilySharingItem$1;->this$0:Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider;

    invoke-static {v0}, Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider;->access$getTAG$p(Lcom/amazon/kcp/profiles/setting/item/profiles/FamilySharingItemProvider;)Ljava/lang/String;

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "ConnectionError"

    .line 51
    invoke-interface {p1, v1, v0}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
