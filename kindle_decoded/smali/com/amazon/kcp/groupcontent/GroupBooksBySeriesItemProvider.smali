.class public final Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;
.super Ljava/lang/Object;
.source "GroupBooksBySeriesItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public static final synthetic access$createGroupBooksBySeriesItem(Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;->createGroupBooksBySeriesItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$reportSettingChange(Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;Ljava/lang/String;Z)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;->reportSettingChange(Ljava/lang/String;Z)V

    return-void
.end method

.method private final createGroupBooksBySeriesItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 13

    .line 43
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 44
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v1

    const-class v2, Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v1

    .line 45
    new-instance v12, Lcom/amazon/kindle/setting/item/template/ToggleItem;

    .line 47
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->group_content_option_label:I

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string p1, "context.getString(R.stri\u2026oup_content_option_label)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v6, Lcom/amazon/kindle/setting/item/Category;->APP_SETTING:Lcom/amazon/kindle/setting/item/Category;

    const-string/jumbo p1, "userSettingsController"

    .line 49
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isSeriesContentGrouped()Z

    move-result v7

    .line 50
    new-instance v8, Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider$createGroupBooksBySeriesItem$1;

    invoke-direct {v8, p0, v0, v1}, Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider$createGroupBooksBySeriesItem$1;-><init>(Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kindle/krx/events/IMessageQueue;)V

    const-string/jumbo v3, "setting_item_group_books_by_series"

    const/4 v5, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x44

    const/4 v11, 0x0

    move-object v2, v12

    .line 45
    invoke-direct/range {v2 .. v11}, Lcom/amazon/kindle/setting/item/template/ToggleItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;ZLcom/amazon/kindle/setting/item/template/OnToggleHandler;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v12
.end method

.method private final reportSettingChange(Ljava/lang/String;Z)V
    .locals 3

    .line 68
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Utils.getFactory().kindl\u2026gStreamsEncoder ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "Settings"

    .line 69
    invoke-interface {v0, v2, p1, p2, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->recordSetting(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItems()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/setting/item/Item;",
            ">;"
        }
    .end annotation

    .line 29
    invoke-static {}, Lcom/amazon/kcp/util/GroupContentUtils;->isSeriesGroupingAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;->isLargeSeriesGroupingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Utils.getFactory().context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/groupcontent/GroupBooksBySeriesItemProvider;->createGroupBooksBySeriesItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v0

    .line 31
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 33
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method
