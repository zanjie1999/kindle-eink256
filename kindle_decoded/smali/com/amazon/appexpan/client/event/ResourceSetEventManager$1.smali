.class Lcom/amazon/appexpan/client/event/ResourceSetEventManager$1;
.super Ljava/lang/Object;
.source "ResourceSetEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->onResourceSetAvailable(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listenersCopy:Ljava/util/List;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/event/ResourceSetEventManager;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p2, p0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager$1;->val$listenersCopy:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager$1;->val$listenersCopy:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 106
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/appexpan/client/event/ResourceSetEventListener;

    if-eqz v1, :cond_0

    .line 111
    :try_start_0
    iget-object v2, p0, Lcom/amazon/appexpan/client/event/ResourceSetEventManager$1;->val$name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/amazon/appexpan/client/event/ResourceSetEventListener;->onResourceSetAvailable(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 115
    invoke-static {}, Lcom/amazon/appexpan/client/event/ResourceSetEventManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Error on invoking listeners onResourceSetAvailable"

    invoke-static {v2, v3, v1}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method
