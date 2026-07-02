.class Lcom/localytics/android/LocalyticsSession$SessionHandler$7;
.super Ljava/lang/Object;
.source "LocalyticsSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/LocalyticsSession$SessionHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

.field final synthetic val$senderId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/localytics/android/LocalyticsSession$SessionHandler;Ljava/lang/String;)V
    .locals 0

    .line 1499
    iput-object p1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$7;->this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

    iput-object p2, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$7;->val$senderId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    .line 1508
    :try_start_0
    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$7;->this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

    iget-object v2, v1, Lcom/localytics/android/LocalyticsSession$SessionHandler;->mProvider:Lcom/localytics/android/LocalyticsProvider;

    const-string v3, "info"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/localytics/android/LocalyticsProvider;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1510
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "registration_version"

    .line 1512
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "registration_id"

    .line 1513
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v8, v2

    move-object v2, v0

    move-object v0, v8

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 1520
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1525
    :cond_1
    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$7;->this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

    invoke-static {v1}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->access$000(Lcom/localytics/android/LocalyticsSession$SessionHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/localytics/android/DatapointHelper;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_2

    .line 1528
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1530
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1531
    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$7;->this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

    invoke-static {v1}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->access$000(Lcom/localytics/android/LocalyticsSession$SessionHandler;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "app"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1532
    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$7;->val$senderId:Ljava/lang/String;

    const-string v2, "sender"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1533
    iget-object v1, p0, Lcom/localytics/android/LocalyticsSession$SessionHandler$7;->this$0:Lcom/localytics/android/LocalyticsSession$SessionHandler;

    invoke-static {v1}, Lcom/localytics/android/LocalyticsSession$SessionHandler;->access$000(Lcom/localytics/android/LocalyticsSession$SessionHandler;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    if-eqz v1, :cond_4

    .line 1520
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1523
    :cond_4
    throw v0
.end method
