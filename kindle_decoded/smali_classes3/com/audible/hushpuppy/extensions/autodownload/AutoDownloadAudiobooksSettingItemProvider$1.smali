.class Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider$1;
.super Ljava/lang/Object;
.source "AutoDownloadAudiobooksSettingItemProvider.java"

# interfaces
.implements Lcom/amazon/kindle/setting/item/template/OnToggleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->createAutoDownloadAudiobooksSettingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider$1;->this$0:Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Landroid/content/Context;Z)V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider$1;->this$0:Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->access$000(Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;Landroid/content/Context;Ljava/lang/Boolean;)V

    .line 90
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object p2

    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider$1;->this$0:Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;

    invoke-static {v0, p1}, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->access$100(Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->notifyItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V

    return-void
.end method
