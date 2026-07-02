.class public final Lcom/amazon/kindle/inapp/notifications/tapaction/OpenLibraryHandler;
.super Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;
.source "OpenLibraryHandler.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenLibraryHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenLibraryHandler.kt\ncom/amazon/kindle/inapp/notifications/tapaction/OpenLibraryHandler\n*L\n1#1,29:1\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final type:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;-><init>()V

    .line 13
    const-class v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenLibraryHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenLibraryHandler;->TAG:Ljava/lang/String;

    .line 15
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->OPEN_LIBRARY:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenLibraryHandler;->type:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenLibraryHandler;->type:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    return-object v0
.end method

.method public isValid(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->getTapActionUtil()Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;->isValidForNonStore(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z

    move-result p1

    return p1
.end method

.method public performTapAction(Lcom/amazon/kindle/inapp/notifications/util/Notification;Landroid/content/Context;)V
    .locals 1

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getNotificationData()Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->getTapAction()Lcom/amazon/kindle/inapp/notifications/util/TapAction;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenLibraryHandler;->isValid(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 20
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin;->Companion:Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/InAppNotificationsPlugin$Companion;->getMainActivity()Lcom/amazon/kindle/inapp/notifications/InAppNotificationsActivity;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/library/LibraryView;->BOOKS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->launchLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    :cond_2
    return-void
.end method
