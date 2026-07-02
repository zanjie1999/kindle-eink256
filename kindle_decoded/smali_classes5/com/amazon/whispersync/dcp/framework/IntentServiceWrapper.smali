.class public abstract Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;
.super Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;
.source "IntentServiceWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mName:Ljava/lang/String;

.field private mRedelivery:Z

.field protected volatile mServiceHandler:Landroid/os/Handler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const-class v0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 23
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;-><init>()V

    .line 24
    const-class v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "name may not be null"

    invoke-static {p1, v0, v2, v1}, Lcom/amazon/whispersync/dcp/framework/Checks;->checkNotNull(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 26
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getIntentFromMessage(Landroid/os/Message;)Landroid/content/Intent;
    .locals 0

    .line 87
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    return-object p1
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected getStartIdFromMessage(Landroid/os/Message;)I
    .locals 0

    .line 92
    iget p1, p1, Landroid/os/Message;->arg1:I

    return p1
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 32
    invoke-super {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->onCreate()V

    .line 34
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntentService["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 39
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->mServiceLooper:Landroid/os/Looper;

    .line 40
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper$1;

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, v1}, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper$1;-><init>(Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->mServiceHandler:Landroid/os/Handler;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 70
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Destroying service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected abstract onHandleIntent(Landroid/content/Intent;)V
.end method

.method protected onHandleMessage(Landroid/os/Message;)V
    .locals 1

    .line 81
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->getIntentFromMessage(Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->onHandleIntent(Landroid/content/Intent;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->getStartIdFromMessage(Landroid/os/Message;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->stopSelf(I)V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 53
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 54
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->mServiceHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 61
    invoke-virtual {p0, p1, p3}, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->onStart(Landroid/content/Intent;I)V

    .line 62
    iget-boolean p1, p0, Lcom/amazon/whispersync/dcp/framework/IntentServiceWrapper;->mRedelivery:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    return p1
.end method
