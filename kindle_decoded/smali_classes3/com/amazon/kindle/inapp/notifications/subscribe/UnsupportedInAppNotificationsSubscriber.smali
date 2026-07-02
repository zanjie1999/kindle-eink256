.class public final Lcom/amazon/kindle/inapp/notifications/subscribe/UnsupportedInAppNotificationsSubscriber;
.super Ljava/lang/Object;
.source "UnsupportedInAppNotificationsSubscriber.kt"

# interfaces
.implements Lcom/amazon/kindle/inapp/notifications/subscribe/InAppNotificationsSubscriber;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationHandler(Lcom/amazon/kindle/inapp/notifications/util/TapAction;)Lcom/amazon/kindle/inapp/notifications/tapaction/InAppTapActionHandler;
    .locals 1

    const-string v0, "tapAction"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance p1, Lcom/amazon/kindle/inapp/notifications/tapaction/InvalidTapActionHandler;

    invoke-direct {p1}, Lcom/amazon/kindle/inapp/notifications/tapaction/InvalidTapActionHandler;-><init>()V

    return-object p1
.end method

.method public supportedTapActions()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
