.class public final Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;
.super Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;
.source "OpenStoreUrlHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenStoreUrlHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenStoreUrlHandler.kt\ncom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler\n*L\n1#1,44:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler$Companion;

.field private static final STORE_URL_ADAPTORS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/inapp/notifications/tapaction/openstoreurl/KineticStoreUrlAdaptor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final type:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;->Companion:Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler$Companion;

    .line 41
    new-instance v0, Lcom/amazon/kindle/inapp/notifications/tapaction/openstoreurl/KineticStoreUrlAdaptor;

    invoke-direct {v0}, Lcom/amazon/kindle/inapp/notifications/tapaction/openstoreurl/KineticStoreUrlAdaptor;-><init>()V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;->STORE_URL_ADAPTORS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;-><init>()V

    .line 14
    const-class v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;->TAG:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/util/TapActionType;->OPEN_STORE_URL:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;->type:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    return-void
.end method

.method public static final synthetic access$getSTORE_URL_ADAPTORS$cp()Ljava/util/List;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;->STORE_URL_ADAPTORS:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getType()Lcom/amazon/kindle/inapp/notifications/util/TapActionType;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;->type:Lcom/amazon/kindle/inapp/notifications/util/TapActionType;

    return-object v0
.end method

.method public isValid(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z
    .locals 6

    .line 31
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

    .line 33
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getData()Lcom/amazon/kindle/inapp/notifications/util/TapActionData;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kindle/inapp/notifications/util/TapActionData;->getStoreUrl()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-nez v2, :cond_3

    .line 34
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;->TAG:Ljava/lang/String;

    const-string v4, "TAG"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tap action data does not have storeUrl, cannot handle action "

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
    .locals 7

    const-string v0, "notification"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/Notification;->getNotificationData()Lcom/amazon/kindle/inapp/notifications/util/NotificationData;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/NotificationData;->getTapAction()Lcom/amazon/kindle/inapp/notifications/util/TapAction;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 20
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;->isValid(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    .line 21
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getData()Lcom/amazon/kindle/inapp/notifications/util/TapActionData;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/amazon/kindle/inapp/notifications/util/TapActionData;->getStoreUrl()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 23
    sget-object v3, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler;->Companion:Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler$Companion;

    invoke-static {v3}, Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler$Companion;->access$getSTORE_URL_ADAPTORS$p(Lcom/amazon/kindle/inapp/notifications/tapaction/OpenStoreUrlHandler$Companion;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v5, "uri"

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/amazon/kindle/inapp/notifications/tapaction/openstoreurl/KineticStoreUrlAdaptor;

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, p2, v2}, Lcom/amazon/kindle/inapp/notifications/tapaction/openstoreurl/KineticStoreUrlAdaptor;->appliesToUrl(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v0, v4

    :cond_2
    check-cast v0, Lcom/amazon/kindle/inapp/notifications/tapaction/openstoreurl/KineticStoreUrlAdaptor;

    if-eqz v0, :cond_3

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2, v2}, Lcom/amazon/kindle/inapp/notifications/tapaction/openstoreurl/KineticStoreUrlAdaptor;->adapt(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    move-object v1, p2

    .line 26
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kindle/inapp/notifications/tapaction/BaseInAppTapActionHandler;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getStoreManager()Lcom/amazon/kindle/krx/store/IStoreManager;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getRefTag()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Lcom/amazon/kindle/krx/store/IStoreManager;->loadStoreUrl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 21
    :cond_4
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_5
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    throw v0

    :cond_6
    :goto_1
    return-void
.end method
