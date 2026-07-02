.class Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener$1;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->access$000(Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->isInDoubletimeMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;

    invoke-static {v0}, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->access$000(Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;)Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/speedreading/doubletime/DoubletimeController;->cleanUpDoubleTime()V

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener$1;->this$0:Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;->access$102(Lcom/amazon/kindle/speedreading/doubletime/ActivityLifecycleListener;Z)Z

    :cond_0
    return-void
.end method
