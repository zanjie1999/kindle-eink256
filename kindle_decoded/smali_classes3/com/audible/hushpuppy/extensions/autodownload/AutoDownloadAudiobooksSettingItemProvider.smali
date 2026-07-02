.class public Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;
.super Ljava/lang/Object;
.source "AutoDownloadAudiobooksSettingItemProvider.java"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# static fields
.field private static final AUTO_DOWNLOAD_AUDIOBOOKS_SETTING_ITEM_ID:Ljava/lang/String; = "setting_item_auto_download_audiobooks"

.field private static final LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;


# instance fields
.field private isEnabled:Ljava/lang/Boolean;

.field private kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    invoke-static {}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getInstance()Lcom/audible/hushpuppy/common/logging/LoggerManager;

    move-result-object v0

    const-class v1, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;

    invoke-virtual {v0, v1}, Lcom/audible/hushpuppy/common/logging/LoggerManager;->getLogger(Ljava/lang/Class;)Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->isEnabled:Ljava/lang/Boolean;

    .line 47
    invoke-static {}, Lcom/audible/hushpuppy/common/event/EventBusFactory;->getInstance()Lcom/audible/hushpuppy/common/event/EventBusFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/hushpuppy/common/event/EventBusFactory;->getEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    .line 48
    invoke-virtual {v0, p0}, Lde/greenrobot/event/EventBus;->registerSticky(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->saveAutoDownloadAudiobooksStatus(Landroid/content/Context;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->createAutoDownloadAudiobooksSettingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p0

    return-object p0
.end method

.method private createAutoDownloadAudiobooksSettingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 8

    .line 80
    new-instance v7, Lcom/amazon/kindle/setting/item/template/ToggleItem;

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->auto_download_settings_name:I

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->auto_download_subtitle:I

    .line 83
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/setting/item/Category;->OTHER:Lcom/amazon/kindle/setting/item/Category;

    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 85
    invoke-static {v0, p1}, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadUtils;->isAutoDownloadEnabled(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;)Z

    move-result v5

    new-instance v6, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider$1;

    invoke-direct {v6, p0}, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider$1;-><init>(Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;)V

    const-string v1, "setting_item_auto_download_audiobooks"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/setting/item/template/ToggleItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;ZLcom/amazon/kindle/setting/item/template/OnToggleHandler;)V

    return-object v7
.end method

.method private saveAutoDownloadAudiobooksStatus(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadUtils;->getSharedPreferencesName(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 104
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 105
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const-string v0, "HP_AUTO_DOWNLOAD_SETTING"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 106
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/setting/item/Item;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->isEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->createAutoDownloadAudiobooksSettingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v0

    .line 74
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 76
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method public onEventAsync(Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;)V
    .locals 3

    .line 57
    sget-object v0, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->LOGGER:Lcom/audible/hushpuppy/common/logging/ILogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received HushpuppyStateChangeEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->getState()Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent$State;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;)V

    .line 58
    sget-object v0, Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;->ENABLED:Lcom/audible/hushpuppy/common/event/enable/HushpuppyStateChangeEvent;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/extensions/autodownload/AutoDownloadAudiobooksSettingItemProvider;->isEnabled:Ljava/lang/Boolean;

    return-void
.end method
