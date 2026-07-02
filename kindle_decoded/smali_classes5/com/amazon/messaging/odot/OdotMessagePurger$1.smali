.class Lcom/amazon/messaging/odot/OdotMessagePurger$1;
.super Ljava/lang/Object;
.source "OdotMessagePurger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/messaging/odot/OdotMessagePurger;->purgeOdotMessages()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/messaging/odot/OdotMessagePurger;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/amazon/messaging/odot/OdotMessagePurger;Landroid/os/Handler;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/amazon/messaging/odot/OdotMessagePurger$1;->this$0:Lcom/amazon/messaging/odot/OdotMessagePurger;

    iput-object p2, p0, Lcom/amazon/messaging/odot/OdotMessagePurger$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x3

    .line 51
    :try_start_0
    invoke-static {v0}, Lcom/amazon/messaging/odot/util/Log;->isLoggable(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/amazon/messaging/odot/OdotMessagePurger$1;->this$0:Lcom/amazon/messaging/odot/OdotMessagePurger;

    invoke-static {v0}, Lcom/amazon/messaging/odot/OdotMessagePurger;->access$000(Lcom/amazon/messaging/odot/OdotMessagePurger;)Lcom/amazon/messaging/odot/dao/IOdotClientDAO;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/messaging/odot/dao/IOdotClientDAO;->getMessageCountPerRequester()Ljava/util/Map;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 54
    invoke-static {}, Lcom/amazon/messaging/odot/OdotMessagePurger;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "(requester: %s, count: %d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/messaging/odot/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/amazon/messaging/odot/OdotMessagePurger$1;->this$0:Lcom/amazon/messaging/odot/OdotMessagePurger;

    invoke-static {v0}, Lcom/amazon/messaging/odot/OdotMessagePurger;->access$200(Lcom/amazon/messaging/odot/OdotMessagePurger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 59
    invoke-static {}, Lcom/amazon/messaging/odot/OdotMessagePurger;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "purgeMessages failed due to an exception"

    invoke-static {v1, v2, v0}, Lcom/amazon/messaging/odot/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 61
    :goto_1
    iget-object v0, p0, Lcom/amazon/messaging/odot/OdotMessagePurger$1;->val$handler:Landroid/os/Handler;

    invoke-static {}, Lcom/amazon/messaging/odot/OdotMessagePurger;->access$300()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
