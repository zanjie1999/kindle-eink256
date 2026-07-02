.class public Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;
.super Ljava/lang/Object;
.source "PlayerNotificationBuilder.java"


# instance fields
.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mRemoteViews:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/app/Notification$Builder;Landroid/widget/RemoteViews;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    .line 31
    iput-object p1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 32
    invoke-static {p1}, Lcom/audible/android/kcp/util/NotificationUtil;->setNotificationId(Landroid/app/Notification$Builder;)V

    .line 35
    sget p2, Lcom/amazon/kindle/hushpuppy/redding/R$drawable;->notification_audio_books:I

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 36
    iget-object p2, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public build()Landroid/app/Notification;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method public withAuthor(Ljava/lang/String;)Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->notification_author_text:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object p0
.end method

.method public withCancel(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->notification_cancel_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 81
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->notification_cancel_button:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object p0
.end method

.method public withContentIntent(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->notification_content_section:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object p0
.end method

.method public withNarrator(Ljava/lang/String;)Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->notification_narrated_by_text:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object p0
.end method

.method public withPause(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->notification_play_button:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 66
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->notification_pause_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 67
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->notification_pause_button:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 68
    iget-object p1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v0, Lcom/amazon/kindle/hushpuppy/redding/R$id;->notification_cancel_button:I

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    return-object p0
.end method

.method public withPlay(Landroid/app/PendingIntent;)Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;
    .locals 3

    .line 49
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->notification_pause_button:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 50
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->notification_play_button:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 51
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->notification_play_button:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    return-object p0
.end method

.method public withTitle(Ljava/lang/String;)Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationBuilder;->mRemoteViews:Landroid/widget/RemoteViews;

    sget v1, Lcom/amazon/kindle/hushpuppy/redding/R$id;->notification_title_text:I

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object p0
.end method
