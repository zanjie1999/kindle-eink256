.class Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver$1;
.super Ljava/lang/Object;
.source "ConnectionChangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver$1;->this$0:Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver$1;->this$0:Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver;->access$000(Lcom/audible/hushpuppy/controller/audible/stats/receivers/ConnectionChangeReceiver;)Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;->connectionChangedUpdate()V

    return-void
.end method
