.class public Lcom/amazon/kcp/font/AESFontNotification;
.super Ljava/lang/Object;
.source "AESFontNotification.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final failureMessage:Ljava/lang/String;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final notificationTag:Ljava/lang/String;

.field private final successMessage:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/amazon/kcp/font/AESFontNotification;->context:Landroid/content/Context;

    .line 29
    iput-object p3, p0, Lcom/amazon/kcp/font/AESFontNotification;->title:Ljava/lang/String;

    const-string/jumbo p3, "notification"

    .line 30
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/NotificationManager;

    iput-object p3, p0, Lcom/amazon/kcp/font/AESFontNotification;->notificationManager:Landroid/app/NotificationManager;

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/font/AESFontNotification;->notificationTag:Ljava/lang/String;

    .line 32
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/amazon/kindle/krl/R$string;->font_notify_desc_success:I

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/font/AESFontNotification;->successMessage:Ljava/lang/String;

    .line 33
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$string;->font_notify_desc_failure:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/font/AESFontNotification;->failureMessage:Ljava/lang/String;

    return-void
.end method

.method private updateNotification(ILjava/lang/String;)V
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/amazon/kcp/font/AESFontNotification;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/amazon/kcp/font/AESFontNotification;->context:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/amazon/kcp/font/AESFontNotification;->title:Ljava/lang/String;

    .line 57
    invoke-virtual {p1, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 58
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 59
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 60
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 62
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_0

    const-string p2, "kindle_default_channel"

    .line 63
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 66
    :cond_0
    iget-object p2, p0, Lcom/amazon/kcp/font/AESFontNotification;->notificationManager:Landroid/app/NotificationManager;

    iget-object v0, p0, Lcom/amazon/kcp/font/AESFontNotification;->notificationTag:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    invoke-static {p2, v0, v2, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->replaceNotification(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public popFontNotification(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_general:I

    iget-object v0, p0, Lcom/amazon/kcp/font/AESFontNotification;->failureMessage:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/font/AESFontNotification;->updateNotification(ILjava/lang/String;)V

    goto :goto_0

    .line 43
    :cond_1
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->ic_notification_general:I

    iget-object v0, p0, Lcom/amazon/kcp/font/AESFontNotification;->successMessage:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/font/AESFontNotification;->updateNotification(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
