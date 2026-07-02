.class public final Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtilImpl;
.super Ljava/lang/Object;
.source "TapActionUtilImpl.kt"

# interfaces
.implements Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtil;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-class v0, Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtilImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtilImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method private final isTapActionValid(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z
    .locals 5

    const/4 v0, 0x0

    const-string v1, "TAG"

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getData()Lcom/amazon/kindle/inapp/notifications/util/TapActionData;

    move-result-object v2

    if-nez v2, :cond_1

    .line 15
    sget-object v2, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v3, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtilImpl;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tap action data cannot be found, cannot handle action "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/inapp/notifications/util/TapAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 11
    :cond_2
    :goto_0
    sget-object p1, Lcom/amazon/kindle/inapp/notifications/logging/Log;->INSTANCE:Lcom/amazon/kindle/inapp/notifications/logging/Log;

    iget-object v2, p0, Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtilImpl;->TAG:Ljava/lang/String;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "No tap action is found, cannot handle the notification"

    invoke-virtual {p1, v2, v1}, Lcom/amazon/kindle/inapp/notifications/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method


# virtual methods
.method public isValidForKindleStore(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtilImpl;->isTapActionValid(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z

    move-result p1

    return p1
.end method

.method public isValidForNonStore(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/kindle/inapp/notifications/tapaction/TapActionUtilImpl;->isTapActionValid(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Z

    move-result p1

    return p1
.end method
