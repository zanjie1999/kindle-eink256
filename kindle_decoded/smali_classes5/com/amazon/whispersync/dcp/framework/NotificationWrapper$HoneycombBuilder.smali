.class final Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;
.super Ljava/lang/Object;
.source "NotificationWrapper.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HoneycombBuilder"
.end annotation


# instance fields
.field private mContentIntentWrapper:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

.field private mDeleteIntentWrapper:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

.field private final mInner:Landroid/app/Notification$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public getNotification()Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;
    .locals 5

    .line 506
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 508
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v2, 0x0

    .line 509
    invoke-virtual {v0, v1, v2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 510
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 512
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mContentIntentWrapper:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mDeleteIntentWrapper:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;-><init>(Landroid/os/Parcel;Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$1;)V

    return-object v0
.end method

.method public setAutoCancel(Z)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setContentIntent(Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 2

    .line 392
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->getInner()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 393
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mContentIntentWrapper:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setDefaults(I)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 498
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setDeleteIntent(Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 2

    .line 401
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->getInner()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 402
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mDeleteIntentWrapper:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    return-object p0
.end method

.method public setFullScreenIntent(Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;Z)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 410
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;->getInner()Landroid/app/PendingIntent;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setFullScreenIntent(Landroid/app/PendingIntent;Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setLights(III)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Notification$Builder;->setLights(III)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setNumber(I)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setOngoing(Z)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 482
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setProgress(IIZ)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2, p3}, Landroid/app/Notification$Builder;->setProgress(IIZ)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setSmallIcon(I)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setSmallIcon(II)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setSmallIcon(II)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 442
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setVibrate([J)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    return-object p0
.end method

.method public setWhen(J)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$HoneycombBuilder;->mInner:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    return-object p0
.end method
