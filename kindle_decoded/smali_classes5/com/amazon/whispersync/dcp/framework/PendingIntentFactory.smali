.class public Lcom/amazon/whispersync/dcp/framework/PendingIntentFactory;
.super Ljava/lang/Object;
.source "PendingIntentFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;
    .locals 1

    .line 15
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;-><init>(Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;
    .locals 1

    .line 23
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;-><init>(Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public getService(Landroid/content/Context;ILandroid/content/Intent;I)Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;
    .locals 1

    .line 31
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;

    invoke-static {p1, p2, p3, p4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/PendingIntentWrapper;-><init>(Landroid/app/PendingIntent;)V

    return-object v0
.end method
