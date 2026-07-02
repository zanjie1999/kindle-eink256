.class Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver$1;
.super Ljava/lang/Object;
.source "AlarmReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver$1;->this$0:Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver$1;->this$0:Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver;->access$000(Lcom/audible/hushpuppy/controller/audible/stats/receivers/AlarmReceiver;)Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/controller/audible/stats/IListeningStatsManager;->updateCurrentListeningEventTime()V

    return-void
.end method
