.class Lcom/amazon/dcp/settings/BackgroundSynchronizer$1;
.super Landroid/content/BroadcastReceiver;
.source "BackgroundSynchronizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/dcp/settings/BackgroundSynchronizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/dcp/settings/BackgroundSynchronizer;


# direct methods
.method constructor <init>(Lcom/amazon/dcp/settings/BackgroundSynchronizer;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/dcp/settings/BackgroundSynchronizer$1;->this$0:Lcom/amazon/dcp/settings/BackgroundSynchronizer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lcom/amazon/dcp/settings/BackgroundSynchronizer$1;->this$0:Lcom/amazon/dcp/settings/BackgroundSynchronizer;

    invoke-virtual {p1}, Lcom/amazon/dcp/settings/BackgroundSynchronizer;->startSync()V

    return-void
.end method
