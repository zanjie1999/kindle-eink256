.class public Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;
.super Ljava/lang/Object;
.source "NotificationUriActionManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method getTapActionHandler(Ljava/lang/String;)Lcom/amazon/kcp/notifications/actions/NotificationUriAction;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kcp/notifications/handlers/UnsupportNotificationException;
        }
    .end annotation

    .line 48
    sget-object v0, Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;->ACTION_DIALOG_LAUNCH:Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/KindleProtocol$NotificationsUriActionEnum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance p1, Lcom/amazon/kcp/notifications/actions/GotoSignupPageAction;

    invoke-direct {p1}, Lcom/amazon/kcp/notifications/actions/GotoSignupPageAction;-><init>()V

    return-object p1

    .line 51
    :cond_0
    new-instance v0, Lcom/amazon/kcp/notifications/handlers/UnsupportNotificationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The uri action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/kcp/notifications/handlers/UnsupportNotificationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public performTapAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 1

    .line 27
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;->getTapActionHandler(Ljava/lang/String;)Lcom/amazon/kcp/notifications/actions/NotificationUriAction;

    move-result-object p1

    .line 28
    invoke-interface {p1, p2}, Lcom/amazon/kcp/notifications/actions/NotificationUriAction;->isDataAvailable(Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    invoke-interface {p1, p3, p2}, Lcom/amazon/kcp/notifications/actions/NotificationUriAction;->performAction(Landroid/content/Context;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    sget-object p2, Lcom/amazon/kcp/notifications/handlers/NotificationUriActionManager;->TAG:Ljava/lang/String;

    const-string p3, "Exception thrown while trying to perform tap action"

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
