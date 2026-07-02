.class Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver$1;
.super Ljava/lang/Object;
.source "NwstdLocaleChangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;Landroid/content/Context;)V
    .locals 0

    .line 33
    iput-object p2, p0, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 35
    iget-object v0, p0, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 36
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getApplicationCapabilities()Lcom/amazon/kcp/application/AndroidApplicationCapabilities;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidApplicationCapabilities;->isInDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 39
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/utils/ILocaleChangedListener;

    if-eqz v1, :cond_1

    .line 41
    iget-object v2, p0, Lcom/amazon/nwstd/utils/NwstdLocaleChangeReceiver$1;->val$context:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/amazon/nwstd/utils/ILocaleChangedListener;->onLocaleChanged(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    return-void
.end method
