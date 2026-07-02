.class public Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;
.super Ljava/lang/Object;
.source "NewBookUpdatesSettingItemProvider.java"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# static fields
.field private static final BOOK_UPDATES_SETTING_ITEM_ID:Ljava/lang/String; = "setting_item_new_book_updates"

.field private static final CLASS_TAG:Ljava/lang/String;


# instance fields
.field private applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private context:Landroid/content/Context;

.field private isInitialized:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;->CLASS_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 30
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;->isInitialized:Ljava/lang/Boolean;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;->CLASS_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private createNewBookUpdatesItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 7

    .line 49
    new-instance v6, Lcom/amazon/kindle/setting/item/template/ClickableItem;

    sget v0, Lcom/amazon/versioning/R$string;->settings_book_updates:I

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/setting/item/Category;->APP_SETTING:Lcom/amazon/kindle/setting/item/Category;

    sget v0, Lcom/amazon/versioning/R$string;->kre_more_as_book_updates_context:I

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider$1;

    invoke-direct {v5, p0}, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider$1;-><init>(Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;)V

    const-string/jumbo v1, "setting_item_new_book_updates"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/kindle/setting/item/template/ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;)V

    return-object v6
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
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;->isInitialized:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;->createNewBookUpdatesItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

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

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 33
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 34
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;->context:Landroid/content/Context;

    const/4 p1, 0x1

    .line 35
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/controller/NewBookUpdatesSettingItemProvider;->isInitialized:Ljava/lang/Boolean;

    return-void
.end method
