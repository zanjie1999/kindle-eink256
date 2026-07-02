.class public Lcom/amazon/ea/AboutThisBookSettingItemProvider;
.super Ljava/lang/Object;
.source "AboutThisBookSettingItemProvider.java"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# static fields
.field private static final ABOUT_THIS_BOOK_SETTING_ITEM_ID:Ljava/lang/String; = "setting_item_about_this_book"


# instance fields
.field private isInitialized:Z

.field private onOffToggle:Lcom/amazon/kindle/krx/settings/OnOffToggle;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private settingsManager:Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->isInitialized:Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/ea/AboutThisBookSettingItemProvider;)Lcom/amazon/kindle/krx/settings/OnOffToggle;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->onOffToggle:Lcom/amazon/kindle/krx/settings/OnOffToggle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/ea/AboutThisBookSettingItemProvider;)Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->settingsManager:Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/ea/AboutThisBookSettingItemProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/ea/AboutThisBookSettingItemProvider;Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->createAboutThisBookItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p0

    return-object p0
.end method

.method private createAboutThisBookItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 8

    .line 50
    new-instance v7, Lcom/amazon/kindle/setting/item/template/ToggleItem;

    sget v0, Lcom/amazon/kindle/ea/R$string;->startactions_feature_title:I

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/amazon/kindle/ea/R$string;->kre_more_rs_about_this_book_context:I

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/setting/item/Category;->READING_SETTING:Lcom/amazon/kindle/setting/item/Category;

    iget-object v0, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 55
    invoke-static {v0, p1}, Lcom/amazon/ea/util/AboutThisBookSettingUtil;->getAboutThisBookStatus(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    new-instance v6, Lcom/amazon/ea/AboutThisBookSettingItemProvider$1;

    invoke-direct {v6, p0}, Lcom/amazon/ea/AboutThisBookSettingItemProvider$1;-><init>(Lcom/amazon/ea/AboutThisBookSettingItemProvider;)V

    const-string/jumbo v1, "setting_item_about_this_book"

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/setting/item/template/ToggleItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;ZLcom/amazon/kindle/setting/item/template/OnToggleHandler;)V

    return-object v7
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

    .line 40
    iget-boolean v0, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 42
    invoke-direct {p0, v0}, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->createAboutThisBookItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 33
    iput-object p2, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->settingsManager:Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;

    .line 34
    invoke-virtual {p2}, Lcom/amazon/startactions/plugin/StartActionsController$SettingsManager;->getControlForReader()Lcom/amazon/kindle/krx/settings/OnOffToggle;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->onOffToggle:Lcom/amazon/kindle/krx/settings/OnOffToggle;

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/amazon/ea/AboutThisBookSettingItemProvider;->isInitialized:Z

    return-void
.end method
