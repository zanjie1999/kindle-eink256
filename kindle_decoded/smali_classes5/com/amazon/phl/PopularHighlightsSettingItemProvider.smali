.class public Lcom/amazon/phl/PopularHighlightsSettingItemProvider;
.super Ljava/lang/Object;
.source "PopularHighlightsSettingItemProvider.java"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# static fields
.field private static final POPULAR_HIGHLIGHTS_SETTING_ITEM_ID:Ljava/lang/String; = "setting_item_popular_highlights"


# instance fields
.field private isInitialized:Ljava/lang/Boolean;

.field private phlManager:Lcom/amazon/phl/PopularHighlightsManager;

.field private phlOnOffToggle:Lcom/amazon/phl/settings/PHLOnOffToggle;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->isInitialized:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/phl/PopularHighlightsSettingItemProvider;)Lcom/amazon/phl/settings/PHLOnOffToggle;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->phlOnOffToggle:Lcom/amazon/phl/settings/PHLOnOffToggle;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/phl/PopularHighlightsSettingItemProvider;)Lcom/amazon/phl/PopularHighlightsManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->phlManager:Lcom/amazon/phl/PopularHighlightsManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/phl/PopularHighlightsSettingItemProvider;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method private createPopularHighlightsItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 8

    .line 49
    new-instance v7, Lcom/amazon/kindle/setting/item/template/ToggleItem;

    sget v0, Lcom/amazon/kindle/popularhighlights/R$string;->popularhighlights_feature_name:I

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v0, Lcom/amazon/kindle/popularhighlights/R$string;->kre_more_rs_ph_text:I

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/setting/item/Category;->READING_SETTING:Lcom/amazon/kindle/setting/item/Category;

    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 54
    invoke-static {v0, p1}, Lcom/amazon/phl/settings/PHLSettingUtil;->getPopularHighlightsStatus(Lcom/amazon/kindle/krx/IKindleReaderSDK;Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    new-instance v6, Lcom/amazon/phl/PopularHighlightsSettingItemProvider$1;

    invoke-direct {v6, p0}, Lcom/amazon/phl/PopularHighlightsSettingItemProvider$1;-><init>(Lcom/amazon/phl/PopularHighlightsSettingItemProvider;)V

    const-string/jumbo v1, "setting_item_popular_highlights"

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

    .line 39
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->isInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    invoke-direct {p0, v0}, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->createPopularHighlightsItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v0

    .line 42
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 44
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/phl/PopularHighlightsManager;Lcom/amazon/phl/settings/PHLOnOffToggle;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 32
    iput-object p2, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->phlManager:Lcom/amazon/phl/PopularHighlightsManager;

    .line 33
    iput-object p3, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->phlOnOffToggle:Lcom/amazon/phl/settings/PHLOnOffToggle;

    const/4 p1, 0x1

    .line 34
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->isInitialized:Ljava/lang/Boolean;

    return-void
.end method

.method public notifyItemUpdate(Landroid/content/Context;)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->isInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/amazon/kindle/setting/item/ItemsUpdateServiceSingleton;->getInstance()Lcom/amazon/kindle/setting/item/ItemsUpdateService;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/amazon/phl/PopularHighlightsSettingItemProvider;->createPopularHighlightsItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/setting/item/ItemsUpdateService;->notifyItemUpdate(Lcom/amazon/kindle/setting/item/Item;)V

    :cond_0
    return-void
.end method
