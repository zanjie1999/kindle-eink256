.class public final Lcom/amazon/whispersync/dcp/framework/YellAtDeveloper;
.super Ljava/lang/Object;
.source "YellAtDeveloper.java"


# static fields
.field public static final EXTRA_INTERNAL_DOCUMENTATION_STRING_RESOURCE:Ljava/lang/String; = "com.amazon.whispersync.dcp.internal.documentation.string.resource.id"

.field public static final EXTRA_INTERNAL_DOCUMENTATION_STRING_SPECIFIC_MESSAGE:Ljava/lang/String; = "com.amazon.whispersync.dcp.internal.documentation.string.resource.message"

.field public static final INTERNAL_DOCUMENTATION_ACTION:Ljava/lang/String; = "com.amazon.whispersync.dcp.internal.documentation"

.field private static final NOTIFICATION_MESSAGE:Ljava/lang/String; = "Click here to learn more about how to fix this."

.field private static final NOTIFICATION_TITLE:Ljava/lang/String; = "DCP Client Usage Error"

.field private static final NOTIFY_ID:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final NO_DOCUMENTATION_ID:I = -0x1

.field private static final TAG:Ljava/lang/String; = "UsingDcpError"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/YellAtDeveloper;->NOTIFY_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static makeNotification(Landroid/content/Context;ILjava/lang/String;)V
    .locals 5

    .line 78
    new-instance v0, Landroid/app/Notification;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "emo_im_yelling"

    const-string v3, "drawable"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "DCP Client Usage Error"

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq p1, v2, :cond_0

    .line 88
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.amazon.whispersync.dcp.internal.documentation"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.amazon.whispersync.dcp.internal.documentation.string.resource.id"

    .line 89
    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.amazon.whispersync.dcp.internal.documentation.string.resource.message"

    .line 90
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 92
    invoke-static {p0, v1, v2, p1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    const-string p2, "Click here to learn more about how to fix this."

    goto :goto_0

    .line 96
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 97
    invoke-static {p0, v1, p1, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 101
    :goto_0
    invoke-virtual {v0, p0, v4, p2, p1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string p1, "notification"

    .line 103
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 105
    sget-object p1, Lcom/amazon/whispersync/dcp/framework/YellAtDeveloper;->NOTIFY_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    const-string p2, "UsingDcpError"

    invoke-virtual {p0, p2, p1, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private static makeToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/YellAtDeveloper$1;

    invoke-direct {v1, p0, p1}, Lcom/amazon/whispersync/dcp/framework/YellAtDeveloper$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static yell(Landroid/content/Context;ILjava/lang/String;)V
    .locals 1

    const-string v0, "UsingDcpError"

    .line 50
    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/framework/DeviceInfoHolder;->getInstance(Landroid/content/Context;)Lcom/amazon/whispersync/dcp/framework/DeviceInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo;->getBuildType()Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/DeviceInfo$BuildType;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/UnitTestUtils;->isRunningInUnitTest()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p0, p2}, Lcom/amazon/whispersync/dcp/framework/YellAtDeveloper;->makeToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    invoke-static {p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/YellAtDeveloper;->makeNotification(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static yell(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 45
    invoke-static {p0, v0, p1}, Lcom/amazon/whispersync/dcp/framework/YellAtDeveloper;->yell(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method
