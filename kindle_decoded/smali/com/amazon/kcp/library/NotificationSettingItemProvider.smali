.class public final Lcom/amazon/kcp/library/NotificationSettingItemProvider;
.super Ljava/lang/Object;
.source "NotificationSettingItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createPushNotificationItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 7

    .line 38
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getNotificationSettingsManager()Lcom/amazon/kcp/notifications/INotificationSettingsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/notifications/INotificationSettingsManager;->areNotificationsEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 39
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->notification_state:I

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->notifications_on:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_0
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->notification_state:I

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/amazon/kindle/librarymodule/R$string;->notifications_off:I

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v5, v0

    const-string v0, "if (Utils.getFactory().n\u2026fications_off))\n        }"

    .line 38
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/amazon/kindle/setting/item/template/ClickableItem;

    .line 46
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->kre_more_as_notification_setting:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p1, "context.getString(R.stri\u2026_as_notification_setting)"

    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v4, Lcom/amazon/kindle/setting/item/Category;->APP_SETTING:Lcom/amazon/kindle/setting/item/Category;

    .line 49
    new-instance v6, Lcom/amazon/kcp/library/NotificationSettingItemProvider$createPushNotificationItem$1;

    invoke-direct {v6}, Lcom/amazon/kcp/library/NotificationSettingItemProvider$createPushNotificationItem$1;-><init>()V

    const-string/jumbo v2, "setting_item_push_notification"

    move-object v1, v0

    .line 44
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/setting/item/template/ClickableItem;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;Ljava/lang/String;Lcom/amazon/kindle/setting/item/template/OnClickHandler;)V

    return-object v0
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

    .line 27
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Utils.getFactory().context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/NotificationSettingItemProvider;->createPushNotificationItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v0

    .line 28
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
