.class public final Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;
.super Ljava/lang/Object;
.source "ExternalSDCardSettingItemProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/setting/item/ItemsProvider;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 30
    const-class v0, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(ExternalSDC\u2026ItemProvider::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$createExternalSDCardItem(Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;->createExternalSDCardItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getTAG$p(Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$showTransferProgress(Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;Lcom/amazon/kcp/redding/ReddingActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;->showTransferProgress(Lcom/amazon/kcp/redding/ReddingActivity;)V

    return-void
.end method

.method private final createExternalSDCardItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;
    .locals 11

    .line 43
    new-instance v10, Lcom/amazon/kindle/setting/item/template/ToggleItem;

    .line 45
    sget v0, Lcom/amazon/kindle/krl/R$string;->external_sdcard_storage_setting_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "context.getString(R.stri\u2026rd_storage_setting_title)"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-direct {p0, p1}, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;->getExternalSDCardSettingItemSubTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 47
    sget-object v4, Lcom/amazon/kindle/setting/item/Category;->APP_SETTING:Lcom/amazon/kindle/setting/item/Category;

    .line 48
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v0, "Utils.getFactory()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getStorageLocationPreference()Lcom/amazon/kindle/sdcard/IStorageLocationPreference;

    move-result-object p1

    const-string v0, "Utils.getFactory().storageLocationPreference"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kindle/sdcard/IStorageLocationPreference;->isExternalSDCardPreferred()Z

    move-result v5

    .line 49
    new-instance v6, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$createExternalSDCardItem$1;

    invoke-direct {v6, p0}, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$createExternalSDCardItem$1;-><init>(Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;)V

    const-string v1, "setting_item_external_SD_card"

    const/4 v7, 0x0

    const/16 v8, 0x40

    const/4 v9, 0x0

    move-object v0, v10

    .line 43
    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/setting/item/template/ToggleItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/setting/item/Category;ZLcom/amazon/kindle/setting/item/template/OnToggleHandler;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v10
.end method

.method private final getExternalSDCardSettingItemSubTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    .line 74
    sget v0, Lcom/amazon/kindle/krl/R$string;->external_sdcard_storage_setting_subtitle:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(R.stri\u2026storage_setting_subtitle)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    sget v1, Lcom/amazon/kindle/krl/R$string;->external_sdcard_storage_setting_subtitle_space:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "#.0"

    .line 76
    invoke-static {p1, v3}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->getReadableAvailableExternalSDCardSpace(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 75
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "context.getString(R.stri\u2026ilableSizeFormatPattern))"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final showTransferProgress(Lcom/amazon/kcp/redding/ReddingActivity;)V
    .locals 2

    .line 82
    invoke-static {}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->isExternalLibraryTransferEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider$showTransferProgress$1;-><init>(Lcom/amazon/kcp/redding/ReddingActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

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

    .line 34
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/sdcard/ExternalSDCardUtils;->canDownloadToSDCard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Utils.getFactory().context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;->createExternalSDCardItem(Landroid/content/Context;)Lcom/amazon/kindle/setting/item/Item;

    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final onFileSystemChangedEvent(Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-class v0, Lcom/amazon/kindle/sdcard/ExternalSDCardSettingItemProvider;

    const-string v1, "event"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;->getMediaIntentAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor$FileSystemChangedEvent;->getMediaIntentAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    .line 104
    new-instance v1, Lcom/amazon/kindle/sdcard/SettingListRefreshEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "this.javaClass.simpleName"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/amazon/kindle/sdcard/SettingListRefreshEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_1
    return-void
.end method
