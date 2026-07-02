.class Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;
.super Ljava/lang/Object;
.source "NotificationWrapper.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseBuilder"
.end annotation


# instance fields
.field private mContentIntent:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

.field private mContext:Landroid/content/Context;

.field protected mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

.field private mText:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    .line 77
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getNotification()Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;
    .locals 5

    .line 272
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mContentIntent:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)V

    .line 273
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    return-object v0
.end method

.method public setAutoCancel(Z)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    const/16 v0, 0x10

    .line 256
    invoke-virtual {p0, v0, p1}, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->setFlagBit(IZ)V

    return-object p0
.end method

.method public setContent(Landroid/widget/RemoteViews;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iput-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public setContentInfo(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 0

    return-object p0
.end method

.method public setContentIntent(Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mContentIntent:Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    return-object p0
.end method

.method public setContentText(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setContentTitle(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setDefaults(I)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iput p1, v0, Landroid/app/Notification;->defaults:I

    return-object p0
.end method

.method public setDeleteIntent(Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;->setDeletedIntent(Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;)V

    return-object p0
.end method

.method protected final setFlagBit(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    .line 280
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iget v0, p2, Landroid/app/Notification;->flags:I

    or-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 284
    :cond_0
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iget v0, p2, Landroid/app/Notification;->flags:I

    not-int p1, p1

    and-int/2addr p1, v0

    iput p1, p2, Landroid/app/Notification;->flags:I

    :goto_0
    return-void
.end method

.method public setFullScreenIntent(Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;Z)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 0

    return-object p0
.end method

.method public setLargeIcon(Landroid/graphics/Bitmap;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 0

    return-object p0
.end method

.method public setLights(III)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iput p1, v0, Landroid/app/Notification;->ledARGB:I

    .line 231
    iput p2, v0, Landroid/app/Notification;->ledOnMS:I

    .line 232
    iput p3, v0, Landroid/app/Notification;->ledOffMS:I

    return-object p0
.end method

.method public setNumber(I)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iput p1, v0, Landroid/app/Notification;->number:I

    return-object p0
.end method

.method public setOngoing(Z)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    const/4 v0, 0x2

    .line 240
    invoke-virtual {p0, v0, p1}, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->setFlagBit(IZ)V

    return-object p0
.end method

.method public setOnlyAlertOnce(Z)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    const/16 v0, 0x8

    .line 248
    invoke-virtual {p0, v0, p1}, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->setFlagBit(IZ)V

    return-object p0
.end method

.method public setProgress(IIZ)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 0

    return-object p0
.end method

.method public setSmallIcon(I)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iput p1, v0, Landroid/app/Notification;->icon:I

    return-object p0
.end method

.method public setSmallIcon(II)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iput p1, v0, Landroid/app/Notification;->icon:I

    .line 100
    iput p2, v0, Landroid/app/Notification;->iconLevel:I

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    return-object p0
.end method

.method public setSound(Landroid/net/Uri;I)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iput-object p1, v0, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 214
    iput p2, v0, Landroid/app/Notification;->audioStreamType:I

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iput-object p1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setTicker(Ljava/lang/CharSequence;Landroid/widget/RemoteViews;)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 0

    .line 188
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iput-object p1, p2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setVibrate([J)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iput-object p1, v0, Landroid/app/Notification;->vibrate:[J

    return-object p0
.end method

.method public setWhen(J)Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$Builder;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/NotificationWrapper$BaseBuilder;->mInner:Lcom/amazon/whispersync/dcp/framework/NotificationWrapper;

    iput-wide p1, v0, Landroid/app/Notification;->when:J

    return-object p0
.end method
