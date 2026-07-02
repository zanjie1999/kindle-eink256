.class public final Lcom/amazon/kindle/RecentBookAppShortcut;
.super Lcom/amazon/kindle/krx/appshortcuts/BaseAppShortcut;
.source "RecentBookAppShortcut.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/appshortcuts/AppShortcut;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/RecentBookAppShortcut$UpdateBookDetailsAsyncTask;
    }
.end annotation


# instance fields
.field private final coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

.field private enabled:Z

.field private icon:Landroid/graphics/drawable/Icon;

.field private lastReadBook:Lcom/amazon/kindle/content/ContentMetadata;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private shortLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 35
    invoke-direct {p0}, Lcom/amazon/kindle/krx/appshortcuts/BaseAppShortcut;-><init>()V

    .line 45
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 47
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kindle/RecentBookAppShortcut;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    const-string v1, "PubSubMessageService.get\u2026kAppShortcut::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/RecentBookAppShortcut;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 48
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object v0

    const-string v2, "Utils.getFactory().coverManager"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kindle/RecentBookAppShortcut;->coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

    .line 50
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    const-string v1, "Utils.getFactory().readerController"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getLastReadBook()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/kindle/RecentBookAppShortcut;->updateBookDetails(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-void
.end method

.method public static final synthetic access$getCoverImageService$p(Lcom/amazon/kindle/RecentBookAppShortcut;)Lcom/amazon/kindle/cover/ICoverImageService;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kindle/RecentBookAppShortcut;->coverImageService:Lcom/amazon/kindle/cover/ICoverImageService;

    return-object p0
.end method

.method public static final synthetic access$getMessageQueue$p(Lcom/amazon/kindle/RecentBookAppShortcut;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kindle/RecentBookAppShortcut;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method public static final synthetic access$setEnabled$p(Lcom/amazon/kindle/RecentBookAppShortcut;Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/amazon/kindle/RecentBookAppShortcut;->enabled:Z

    return-void
.end method

.method public static final synthetic access$setIcon$p(Lcom/amazon/kindle/RecentBookAppShortcut;Landroid/graphics/drawable/Icon;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/RecentBookAppShortcut;->icon:Landroid/graphics/drawable/Icon;

    return-void
.end method

.method public static final synthetic access$setShortLabel$p(Lcom/amazon/kindle/RecentBookAppShortcut;Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/kindle/RecentBookAppShortcut;->shortLabel:Ljava/lang/String;

    return-void
.end method

.method private final updateBookDetails(Lcom/amazon/kindle/content/ContentMetadata;)V
    .locals 3

    .line 54
    iput-object p1, p0, Lcom/amazon/kindle/RecentBookAppShortcut;->lastReadBook:Lcom/amazon/kindle/content/ContentMetadata;

    .line 55
    new-instance v0, Lcom/amazon/kindle/RecentBookAppShortcut$UpdateBookDetailsAsyncTask;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/RecentBookAppShortcut$UpdateBookDetailsAsyncTask;-><init>(Lcom/amazon/kindle/RecentBookAppShortcut;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/kindle/content/ContentMetadata;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public bridge synthetic getBundle()Landroid/os/PersistableBundle;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/amazon/kindle/RecentBookAppShortcut;->getBundle()Ljava/lang/Void;

    move-result-object v0

    check-cast v0, Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public getBundle()Ljava/lang/Void;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Icon;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/amazon/kindle/RecentBookAppShortcut;->icon:Landroid/graphics/drawable/Icon;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 62
    const-class v0, Lcom/amazon/kindle/RecentBookAppShortcut;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/util/KotlinUtilsKt;->getCanonicalName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIntents(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/amazon/kindle/RecentBookAppShortcut;->lastReadBook:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v0, :cond_1

    .line 66
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->isSample()Z

    move-result v0

    invoke-static {v1, v0}, Lcom/amazon/kcp/application/KindleProtocol;->createOpenBookIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 68
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getLaunchActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string p1, "newIntent"

    .line 70
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "android.intent.action.VIEW"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 69
    :cond_0
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 65
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getLongLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/RecentBookAppShortcut;->getLongLabel(Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getLongLabel(Landroid/content/Context;)Ljava/lang/Void;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getPriority()I
    .locals 1

    const/16 v0, 0x320

    return v0
.end method

.method public getSettingsSubtitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->app_shortcut_recent_book_settings_subtitle:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026t_book_settings_subtitle)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getSettingsTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->app_shortcut_recent_book_settings_title:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "context.getString(R.stri\u2026cent_book_settings_title)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public getShortLabel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/amazon/kindle/RecentBookAppShortcut;->shortLabel:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object p1
.end method

.method public isEnabled()Z
    .locals 1

    .line 85
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isKFABuild()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/kindle/RecentBookAppShortcut;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onLastReadBookEvent(Lcom/amazon/kcp/reader/LastReadBookEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/LastReadBookEvent;->getBook()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    if-nez p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/amazon/kindle/RecentBookAppShortcut;->lastReadBook:Lcom/amazon/kindle/content/ContentMetadata;

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/RecentBookAppShortcut;->lastReadBook:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-static {v0, p1}, Lcom/amazon/kcp/util/Utils;->isSameBook(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 95
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kindle/RecentBookAppShortcut;->updateBookDetails(Lcom/amazon/kindle/content/ContentMetadata;)V

    return-void
.end method
