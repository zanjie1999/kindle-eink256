.class public final Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;
.super Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;
.source "OpenPeriodicalEditionHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenPeriodicalEditionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenPeriodicalEditionHandler.kt\ncom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler\n*L\n1#1,73:1\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final type:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;-><init>()V

    .line 16
    const-class v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;->TAG:Ljava/lang/String;

    .line 18
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->OPEN_PERIODICAL_EDITION:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;->type:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    return-void
.end method

.method private final getBookLocation(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;
    .locals 2

    if-eqz p1, :cond_4

    .line 53
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 57
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->REMOTE:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->FAILED:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 62
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/content/IBook$DownloadState;->LOCAL:Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    .line 61
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getDownloadState()Lcom/amazon/kindle/krx/content/IBook$DownloadState;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getLocalBookData()Lcom/amazon/kindle/krx/content/ILocalBookData;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 62
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getLocalBookData()Lcom/amazon/kindle/krx/content/ILocalBookData;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/ILocalBookData;->isBookRead()Z

    move-result p1

    if-nez p1, :cond_2

    .line 63
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;->EDITION:Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    return-object p1

    .line 65
    :cond_2
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;->UNKNOWN:Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    return-object p1

    .line 58
    :cond_3
    :goto_0
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;->CLOUD:Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    return-object p1

    .line 54
    :cond_4
    :goto_1
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;->CLOUD:Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    return-object p1
.end method


# virtual methods
.method public getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;->type:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    return-object v0
.end method

.method public isValid(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z
    .locals 6

    .line 36
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->getTapActionUtil()Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;->isValidForNonStore(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getData()Lcom/amazon/kindle/inapp/notifications/util/TapActionData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/util/TapActionData;->getAsin()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 39
    invoke-static {v2}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x1

    :goto_2
    const-string v5, "TAG"

    if-eqz v4, :cond_5

    .line 40
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tap action data does not have ASIN, cannot handle action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 44
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v4

    if-eqz v2, :cond_7

    invoke-interface {v4, v2}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    .line 45
    sget-object v4, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;->UNKNOWN:Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    invoke-direct {p0, v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;->getBookLocation(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    move-result-object v0

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 46
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Book Location is unknown for ASIN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " and tap action: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, p1}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_6
    return v3

    .line 44
    :cond_7
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0
.end method

.method public performTapAction(Lcom/amazon/kindle/inapp/notifications/util/Notification;Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getNotificationData()Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->getTapAction()Lcom/amazon/kindle/inapp/notifications/util/TapAction;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 22
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;->isValid(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 23
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getData()Lcom/amazon/kindle/inapp/notifications/util/TapActionData;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapActionData;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 24
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler;->getBookLocation(Lcom/amazon/kindle/krx/content/IBook;)Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$BookLocation;

    move-result-object v0

    .line 26
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getMainActivity()Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 28
    :cond_1
    sget-object v1, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenPeriodicalEditionHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 30
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/amazon/kindle/krx/reader/IReaderManager;->openBook(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IPosition;)Z

    goto :goto_1

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2

    .line 29
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/library/LibraryView;->NEWSSTAND:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->launchLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    goto :goto_1

    .line 23
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2

    :cond_6
    :goto_1
    return-void
.end method
