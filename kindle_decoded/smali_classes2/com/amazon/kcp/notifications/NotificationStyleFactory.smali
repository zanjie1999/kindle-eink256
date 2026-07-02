.class public Lcom/amazon/kcp/notifications/NotificationStyleFactory;
.super Ljava/lang/Object;
.source "NotificationStyleFactory.java"


# static fields
.field private static final BIG_PICTURE_STYLE:Ljava/lang/String; = "BigPictureStyle"

.field private static final BIG_TEXT_STYLE:Ljava/lang/String; = "BigTextStyle"

.field private static final TAG:Ljava/lang/String; = "NotificationStyleFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructBigViewStyle(Lcom/amazon/reader/notifications/message/BigViewStyle;Landroid/content/Context;)Landroid/app/Notification$Style;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/BigViewStyle;->getStyle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NotificationStyleFactory"

    if-eqz v1, :cond_5

    .line 38
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/BigViewStyle;->getBigViewData()Lcom/amazon/reader/notifications/message/BigViewData;

    move-result-object p0

    if-nez p0, :cond_2

    const-string p0, "Trying to get big view style without big view style"

    .line 45
    invoke-static {v2, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    const-string v3, "BigTextStyle"

    .line 49
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 50
    invoke-static {p0}, Lcom/amazon/kcp/notifications/NotificationStyleFactory;->getBigTextStyle(Lcom/amazon/reader/notifications/message/BigViewData;)Landroid/app/Notification$Style;

    move-result-object p0

    return-object p0

    :cond_3
    const-string v3, "BigPictureStyle"

    .line 51
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 52
    invoke-static {p0, p1}, Lcom/amazon/kcp/notifications/NotificationStyleFactory;->getBigPictureStyle(Lcom/amazon/reader/notifications/message/BigViewData;Landroid/content/Context;)Landroid/app/Notification$Style;

    move-result-object p0

    return-object p0

    .line 56
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Big view style "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not supported or invalid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_5
    :goto_0
    const-string p0, "Trying to get big view style without notification style"

    .line 39
    invoke-static {v2, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getBigPictureStyle(Lcom/amazon/reader/notifications/message/BigViewData;Landroid/content/Context;)Landroid/app/Notification$Style;
    .locals 4

    .line 82
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/BigViewData;->getBigPictureUrl()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->notification_big_picture_width:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$dimen;->notification_big_picture_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 82
    invoke-static {v0, p1, v1, v2}, Lcom/amazon/kcp/notifications/util/BitmapDownloader;->downloadBitmapFromUrl(Ljava/lang/String;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "NotificationStyleFactory"

    const-string p1, "Tried to display big picture notification without valid picture"

    .line 86
    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 89
    :cond_0
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p1

    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/BigViewData;->getSummaryText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object p0

    return-object p0
.end method

.method private static getBigTextStyle(Lcom/amazon/reader/notifications/message/BigViewData;)Landroid/app/Notification$Style;
    .locals 2

    .line 66
    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/BigViewData;->getBigText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v1, v0}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/reader/notifications/message/BigViewData;->getSummaryText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "NotificationStyleFactory"

    const-string v0, "Tried to display big picture notification without text"

    .line 68
    invoke-static {p0, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method
