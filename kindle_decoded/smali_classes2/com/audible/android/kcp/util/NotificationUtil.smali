.class public Lcom/audible/android/kcp/util/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# static fields
.field public static CHANNEL_ID:Ljava/lang/String; = "kindle_default_channel"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static isAndroidO_OrHigher()Z
    .locals 2

    .line 52
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setNotificationId(Landroid/app/Notification$Builder;)V
    .locals 1

    .line 44
    invoke-static {}, Lcom/audible/android/kcp/util/NotificationUtil;->isAndroidO_OrHigher()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    sget-object v0, Lcom/audible/android/kcp/util/NotificationUtil;->CHANNEL_ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    const/4 v0, 0x1

    .line 46
    invoke-virtual {p0, v0}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    :cond_0
    return-void
.end method
