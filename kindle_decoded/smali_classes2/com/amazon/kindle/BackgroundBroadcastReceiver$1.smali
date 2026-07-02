.class Lcom/amazon/kindle/BackgroundBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "BackgroundBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/BackgroundBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/BackgroundBroadcastReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/BackgroundBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/BackgroundBroadcastReceiver$1;->this$0:Lcom/amazon/kindle/BackgroundBroadcastReceiver;

    iput-object p2, p0, Lcom/amazon/kindle/BackgroundBroadcastReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/amazon/kindle/BackgroundBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 26
    iget-object v0, p0, Lcom/amazon/kindle/BackgroundBroadcastReceiver$1;->this$0:Lcom/amazon/kindle/BackgroundBroadcastReceiver;

    iget-object v1, p0, Lcom/amazon/kindle/BackgroundBroadcastReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kindle/BackgroundBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/BackgroundBroadcastReceiver;->onReceiveInBackground(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method
