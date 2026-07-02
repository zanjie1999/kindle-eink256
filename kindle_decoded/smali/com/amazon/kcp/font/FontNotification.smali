.class public Lcom/amazon/kcp/font/FontNotification;
.super Ljava/lang/Object;
.source "FontNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/font/FontNotification$Messaging;
    }
.end annotation


# instance fields
.field private builder:Landroid/app/Notification$Builder;

.field private final context:Landroid/content/Context;

.field private final failureMessage:Ljava/lang/String;

.field private final language:Ljava/lang/String;

.field private final notificationManager:Landroid/app/NotificationManager;

.field private final notificationTag:Ljava/lang/String;

.field private final subtitle:Ljava/lang/String;

.field private final successMessage:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 104
    invoke-static {p3}, Lcom/amazon/kcp/font/FontNotification$Messaging;->getForLanguage(Ljava/lang/String;)Lcom/amazon/kcp/font/FontNotification$Messaging;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/kcp/font/FontNotification;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kcp/font/FontNotification$Messaging;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kcp/font/FontNotification$Messaging;)V
    .locals 9

    .line 108
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/amazon/kcp/font/FontNotification$Messaging;->getTitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/amazon/kcp/font/FontNotification$Messaging;->getSubtitle(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/amazon/kcp/font/FontNotification$Messaging;->getSuccessMessage(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p4, v0}, Lcom/amazon/kcp/font/FontNotification$Messaging;->getFailureMessage(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v8}, Lcom/amazon/kcp/font/FontNotification;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/amazon/kcp/font/FontNotification;->notificationTag:Ljava/lang/String;

    .line 113
    iput-object p2, p0, Lcom/amazon/kcp/font/FontNotification;->context:Landroid/content/Context;

    const-string/jumbo p1, "notification"

    .line 114
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/amazon/kcp/font/FontNotification;->notificationManager:Landroid/app/NotificationManager;

    .line 116
    iput-object p3, p0, Lcom/amazon/kcp/font/FontNotification;->language:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Lcom/amazon/kcp/font/FontNotification;->title:Ljava/lang/String;

    .line 119
    iput-object p5, p0, Lcom/amazon/kcp/font/FontNotification;->subtitle:Ljava/lang/String;

    .line 120
    iput-object p6, p0, Lcom/amazon/kcp/font/FontNotification;->successMessage:Ljava/lang/String;

    .line 121
    iput-object p7, p0, Lcom/amazon/kcp/font/FontNotification;->failureMessage:Ljava/lang/String;

    return-void
.end method

.method private createFontDownloadingNotification(IIZ)Landroid/app/Notification;
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/font/FontNotification;->builder:Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/font/FontNotification;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/amazon/kcp/font/FontNotification;->language:Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/amazon/kcp/font/FontDownloadService;->getCancelDownloadIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 138
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/amazon/kcp/font/FontNotification;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/amazon/kindle/thirdparty/R$drawable;->ic_notification_general:I

    .line 139
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/font/FontNotification;->title:Ljava/lang/String;

    .line 140
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/font/FontNotification;->subtitle:Ljava/lang/String;

    .line 141
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/font/FontNotification;->context:Landroid/content/Context;

    .line 142
    invoke-static {v4, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/font/FontNotification;->builder:Landroid/app/Notification$Builder;

    .line 146
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    const-string v3, "kindle_default_channel"

    .line 147
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    :cond_1
    :goto_0
    if-nez p3, :cond_2

    mul-int/lit8 p2, p2, 0x64

    .line 154
    div-int/2addr p2, p1

    .line 155
    iget-object p1, p0, Lcom/amazon/kcp/font/FontNotification;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p3, Lcom/amazon/kindle/thirdparty/R$string;->download_percentage:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v2

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 156
    iget-object p2, p0, Lcom/amazon/kcp/font/FontNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 158
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/font/FontNotification;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private createFontNotification(ILjava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 2

    .line 181
    new-instance v0, Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/amazon/kcp/font/FontNotification;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/font/FontNotification;->title:Ljava/lang/String;

    .line 183
    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 184
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 185
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 186
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 188
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p2, p3, :cond_0

    const-string p2, "kindle_default_channel"

    .line 189
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 192
    :cond_0
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method private replaceNotification(Landroid/app/Notification;)V
    .locals 3

    .line 212
    iget-object v0, p0, Lcom/amazon/kcp/font/FontNotification;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/amazon/kcp/font/FontNotification;->notificationTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/amazon/kcp/application/AndroidNotificationController;->replaceNotification(Landroid/app/NotificationManager;Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private updateNotification(Landroid/app/Notification;)V
    .locals 3

    .line 208
    iget-object v0, p0, Lcom/amazon/kcp/font/FontNotification;->notificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/amazon/kcp/font/FontNotification;->notificationTag:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public onFontDownloadFailed()V
    .locals 3

    .line 170
    iget-object v0, p0, Lcom/amazon/kcp/font/FontNotification;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/font/FontNotification;->language:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/font/FontDownloadService;->getFontDownloadIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/amazon/kcp/font/FontNotification;->context:Landroid/content/Context;

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/amazon/kcp/font/FontNotification;->failureMessage:Ljava/lang/String;

    const v2, 0x1080078

    invoke-direct {p0, v2, v1, v0}, Lcom/amazon/kcp/font/FontNotification;->createFontNotification(ILjava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .line 177
    invoke-direct {p0, v0}, Lcom/amazon/kcp/font/FontNotification;->replaceNotification(Landroid/app/Notification;)V

    return-void
.end method

.method public onFontDownloadProgress(II)V
    .locals 1

    if-gtz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 131
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/kcp/font/FontNotification;->createFontDownloadingNotification(IIZ)Landroid/app/Notification;

    move-result-object p1

    .line 132
    invoke-direct {p0, p1}, Lcom/amazon/kcp/font/FontNotification;->updateNotification(Landroid/app/Notification;)V

    return-void
.end method

.method public onFontDownloadStarted()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 126
    invoke-direct {p0, v0, v0, v1}, Lcom/amazon/kcp/font/FontNotification;->createFontDownloadingNotification(IIZ)Landroid/app/Notification;

    move-result-object v0

    .line 127
    invoke-direct {p0, v0}, Lcom/amazon/kcp/font/FontNotification;->updateNotification(Landroid/app/Notification;)V

    return-void
.end method

.method public onFontDownloadSuccess()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/font/FontNotification;->context:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 163
    sget v1, Lcom/amazon/kindle/thirdparty/R$drawable;->ic_notification_general:I

    iget-object v2, p0, Lcom/amazon/kcp/font/FontNotification;->successMessage:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Lcom/amazon/kcp/font/FontNotification;->createFontNotification(ILjava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .line 166
    invoke-direct {p0, v0}, Lcom/amazon/kcp/font/FontNotification;->replaceNotification(Landroid/app/Notification;)V

    return-void
.end method

.method public promptForFontDownload()V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/font/FontNotification;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/amazon/kcp/font/FontNotification;->language:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/font/FontDownloadService;->getFontDownloadIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/amazon/kcp/font/FontNotification;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/amazon/kcp/font/FontNotification;->language:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-static {v1, v3, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 201
    sget v1, Lcom/amazon/kindle/thirdparty/R$drawable;->ic_notification_general:I

    iget-object v2, p0, Lcom/amazon/kcp/font/FontNotification;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/thirdparty/R$string;->font_notify_download_prompt:I

    .line 202
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-direct {p0, v1, v2, v0}, Lcom/amazon/kcp/font/FontNotification;->createFontNotification(ILjava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object v0

    .line 204
    invoke-direct {p0, v0}, Lcom/amazon/kcp/font/FontNotification;->replaceNotification(Landroid/app/Notification;)V

    return-void
.end method
