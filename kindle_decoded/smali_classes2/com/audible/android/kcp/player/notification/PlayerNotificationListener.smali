.class public Lcom/audible/android/kcp/player/notification/PlayerNotificationListener;
.super Ljava/lang/Object;
.source "PlayerNotificationListener.java"

# interfaces
.implements Lcom/audible/android/kcp/player/AudiblePlayerUI;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationId:I

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mPlayerNotificationFactoryImpl:Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationListener;->mContext:Landroid/content/Context;

    .line 26
    iput p2, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationListener;->mNotificationId:I

    .line 27
    iput-object p3, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationListener;->mPlayerNotificationFactoryImpl:Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;

    const-string p2, "notification"

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationListener;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method


# virtual methods
.method public updatePlayPauseButtons()V
    .locals 3

    .line 50
    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationListener;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationListener;->mNotificationId:I

    iget-object v2, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationListener;->mPlayerNotificationFactoryImpl:Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;

    invoke-virtual {v2}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->get()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public updateView(ZZ)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    .line 37
    iget-object p1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationListener;->mNotificationManager:Landroid/app/NotificationManager;

    iget p2, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationListener;->mNotificationId:I

    iget-object v0, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationListener;->mPlayerNotificationFactoryImpl:Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;

    invoke-virtual {v0}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->get()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/audible/android/kcp/player/notification/PlayerNotificationListener;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/audible/android/kcp/player/notification/PlayerNotificationFactoryImpl;->clearPlayerNotification(Landroid/content/Context;)V

    :cond_1
    :goto_0
    return-void
.end method
