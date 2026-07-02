.class Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity$1;
.super Ljava/lang/Object;
.source "RoboSplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;

.field final synthetic val$start:J


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;J)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity$1;->this$0:Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;

    iput-wide p2, p0, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity$1;->val$start:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity$1;->this$0:Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity$1;->this$0:Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;

    iget-object v2, v1, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;->namespace:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->getBaseApplicationInjector(Ljava/lang/String;Landroid/app/Application;)Lcom/amazon/whispersync/com/google/inject/Injector;

    .line 46
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity$1;->this$0:Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;->doStuffInBackground(Landroid/app/Application;)V

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity$1;->val$start:J

    sub-long/2addr v0, v2

    .line 50
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity$1;->this$0:Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;

    iget v2, v2, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;->minDisplayMs:I

    int-to-long v3, v2

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    int-to-long v2, v2

    sub-long/2addr v2, v0

    .line 52
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 54
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    .line 58
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity$1;->this$0:Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;

    invoke-virtual {v0}, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;->startNextActivity()V

    .line 59
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity$1;->this$0:Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;

    invoke-virtual {v0}, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;->andFinishThisOne()V

    return-void
.end method
