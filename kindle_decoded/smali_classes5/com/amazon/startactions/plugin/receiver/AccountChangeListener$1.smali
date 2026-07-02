.class Lcom/amazon/startactions/plugin/receiver/AccountChangeListener$1;
.super Ljava/lang/Object;
.source "AccountChangeListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/startactions/plugin/receiver/AccountChangeListener;->onKRXAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/startactions/plugin/receiver/AccountChangeListener;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 42
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-nez v0, :cond_0

    .line 43
    invoke-static {}, Lcom/amazon/startactions/plugin/receiver/AccountChangeListener;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EndActionsPlugin\'s SDK has not been initialized; won\'t attempt to update grok status"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 47
    :cond_0
    invoke-static {}, Lcom/amazon/ea/util/GrokAvailabilityUtil;->forceUpdate()V

    return-void
.end method
