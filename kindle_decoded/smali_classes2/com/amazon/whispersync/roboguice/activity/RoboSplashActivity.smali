.class public abstract Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;
.super Landroid/app/Activity;
.source "RoboSplashActivity.java"


# instance fields
.field protected minDisplayMs:I

.field protected final namespace:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x9c4

    .line 23
    iput v0, p0, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;->minDisplayMs:I

    .line 28
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;->namespace:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected andFinishThisOne()V
    .locals 0

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected doStuffInBackground(Landroid/app/Application;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 33
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 37
    new-instance p1, Ljava/lang/Thread;

    new-instance v2, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity$1;-><init>(Lcom/amazon/whispersync/roboguice/activity/RoboSplashActivity;J)V

    invoke-direct {p1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method protected abstract startNextActivity()V
.end method
