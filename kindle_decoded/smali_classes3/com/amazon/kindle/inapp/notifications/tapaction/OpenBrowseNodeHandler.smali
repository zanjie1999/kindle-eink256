.class public final Lcom/amazon/kindle/inapp/notifications/tapaction/OpenBrowseNodeHandler;
.super Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;
.source "OpenBrowseNodeHandler.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final type:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;-><init>()V

    .line 12
    const-class v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenBrowseNodeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenBrowseNodeHandler;->TAG:Ljava/lang/String;

    .line 14
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->OPEN_BROWSE_NODE:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenBrowseNodeHandler;->type:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    return-void
.end method


# virtual methods
.method public getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenBrowseNodeHandler;->type:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    return-object v0
.end method

.method public isValid(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z
    .locals 6

    .line 24
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->getTapActionUtil()Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;->isValidForKindleStore(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getData()Lcom/amazon/kindle/inapp/notifications/util/TapActionData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/util/TapActionData;->getBrowseNode()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_3

    .line 27
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenBrowseNodeHandler;->TAG:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tap action data does not have browseNode, cannot handle action "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_3
    const/4 p1, 0x1

    return p1
.end method

.method public performTapAction(Lcom/amazon/kindle/inapp/notifications/util/Notification;Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getNotificationData()Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->getTapAction()Lcom/amazon/kindle/inapp/notifications/util/TapAction;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 18
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenBrowseNodeHandler;->isValid(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getData()Lcom/amazon/kindle/inapp/notifications/util/TapActionData;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/TapActionData;->getBrowseNode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getRefTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p2, p1}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadBrowseNode(Ljava/lang/String;Lcom/amazon/kindle/krx/store/IStoreManager$StoreType;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2

    :cond_2
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw p2

    :cond_3
    :goto_1
    return-void
.end method
