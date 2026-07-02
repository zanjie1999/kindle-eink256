.class Lcom/amazon/ea/AboutThisBookSettingItemProvider$1;
.super Ljava/lang/Object;
.source "AboutThisBookSettingItemProvider.java"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnToggleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/AboutThisBookSettingItemProvider;->createAboutThisBookItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/AboutThisBookSettingItemProvider;


# direct methods
.method constructor <init>(Lcom/amazon/ea/AboutThisBookSettingItemProvider;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider$1;->this$0:Lcom/amazon/ea/AboutThisBookSettingItemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Landroid/content/Context;Z)V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider$1;->this$0:Lcom/amazon/ea/AboutThisBookSettingItemProvider;

    invoke-static {v0}, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->access$000(Lcom/amazon/ea/AboutThisBookSettingItemProvider;)Lcom/amazon/kindle/krx/settings/OnOffToggle;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/krx/settings/BaseSettingsControl;->setValue(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider$1;->this$0:Lcom/amazon/ea/AboutThisBookSettingItemProvider;

    invoke-static {v0}, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->access$100(Lcom/amazon/ea/AboutThisBookSettingItemProvider;)Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;

    move-result-object v0

    xor-int/lit8 v1, p2, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;->onSettingsChange(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 63
    iget-object v0, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider$1;->this$0:Lcom/amazon/ea/AboutThisBookSettingItemProvider;

    invoke-static {v0}, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->access$200(Lcom/amazon/ea/AboutThisBookSettingItemProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/amazon/ea/util/AboutThisBookSettingUtil;->saveAboutThisBookStatus(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 65
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider$1;->this$0:Lcom/amazon/ea/AboutThisBookSettingItemProvider;

    invoke-static {v0, p1}, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->access$300(Lcom/amazon/ea/AboutThisBookSettingItemProvider;Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->notifyItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V

    return-void
.end method
