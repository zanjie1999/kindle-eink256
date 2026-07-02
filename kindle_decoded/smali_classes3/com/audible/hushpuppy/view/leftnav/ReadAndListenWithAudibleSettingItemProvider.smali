.class public Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;
.super Ljava/lang/Object;
.source "ReadAndListenWithAudibleSettingItemProvider.java"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# static fields
.field private static final AUDIBLE_SETTING_ITEM_ID:Ljava/lang/String; = "setting_item_audible"


# instance fields
.field private isInitialized:Ljava/lang/Boolean;

.field private kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private libraryLeftNavProvider:Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;->isInitialized:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;)Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;->libraryLeftNavProvider:Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    return-object p0
.end method

.method private createAudibleSettingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 9

    .line 56
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_0

    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->ic_nav_audible_dark:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/amazon/kindle/hushpuppy/plugin/R$drawable;->ic_nav_audible_light:I

    :goto_0
    move v5, v0

    .line 59
    new-instance v0, Lcom/amazon/kindle/setting/item/template/PrimaryItem;

    sget v1, Lcom/amazon/kindle/hushpuppy/plugin/R$string;->matchmaker_add_audible_narration:I

    .line 61
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/setting/item/Category;->OTHER:Lcom/amazon/kindle/setting/item/Category;

    const/4 v6, 0x0

    new-instance v8, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider$1;

    invoke-direct {v8, p0}, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider$1;-><init>(Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;)V

    const-string v2, "setting_item_audible"

    const-string v7, ""

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kindle/setting/item/template/PrimaryItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;IZLjava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;)V

    return-object v0
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

    .line 47
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;->isInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;->libraryLeftNavProvider:Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    invoke-virtual {v0}, Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;->shouldShowMatchmaker()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;->createAudibleSettingItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v0

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;->kindleReaderSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 41
    iput-object p2, p0, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;->libraryLeftNavProvider:Lcom/audible/hushpuppy/view/leftnav/LibraryLeftNavProvider;

    const/4 p1, 0x1

    .line 42
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/view/leftnav/ReadAndListenWithAudibleSettingItemProvider;->isInitialized:Ljava/lang/Boolean;

    return-void
.end method
