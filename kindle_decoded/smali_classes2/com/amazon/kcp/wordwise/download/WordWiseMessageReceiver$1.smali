.class Lcom/amazon/kcp/wordwise/download/WordWiseMessageReceiver$1;
.super Ljava/lang/Object;
.source "WordWiseMessageReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/wordwise/download/WordWiseMessageReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$message:Lcom/amazon/dcp/messaging/Message;

.field final synthetic val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/wordwise/download/WordWiseMessageReceiver;Lcom/amazon/dcp/messaging/Message;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0

    .line 26
    iput-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseMessageReceiver$1;->val$message:Lcom/amazon/dcp/messaging/Message;

    iput-object p3, p0, Lcom/amazon/kcp/wordwise/download/WordWiseMessageReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 29
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseMessageReceiver$1;->val$message:Lcom/amazon/dcp/messaging/Message;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->onReceivedDownloadMessage(Lcom/amazon/dcp/messaging/Message;)V

    .line 30
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseMessageReceiver$1;->val$pendingResult:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-void
.end method
