.class Lcom/amazon/whispersync/dcp/framework/IntentEvent$1;
.super Landroid/content/BroadcastReceiver;
.source "IntentEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/IntentEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/IntentEvent;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/IntentEvent;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent$1;->this$0:Lcom/amazon/whispersync/dcp/framework/IntentEvent;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->access$100()Lcom/amazon/whispersync/dcp/settings/SettingInteger;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/settings/SettingInteger;->getValue()I

    move-result p1

    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p2}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/IntentEvent$1;->this$0:Lcom/amazon/whispersync/dcp/framework/IntentEvent;

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/IntentEvent;->access$300(Lcom/amazon/whispersync/dcp/framework/IntentEvent;)Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/AutoResetEvent;->signalEvent()V

    return-void
.end method
