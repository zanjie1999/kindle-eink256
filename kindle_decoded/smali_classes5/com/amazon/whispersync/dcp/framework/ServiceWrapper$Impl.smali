.class public abstract Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;
.super Landroid/content/ContextWrapper;
.source "ServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Impl"
.end annotation


# instance fields
.field private mContext:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private setupContext()V
    .locals 1

    .line 38
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->mContext:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final getApplication()Landroid/app/Application;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->mContext:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getServiceContext()Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->mContext:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCreate()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->setupContext()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method setServiceContext(Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->mContext:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;

    return-void
.end method

.method public final startForeground(ILandroid/app/Notification;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->mContext:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public final stopForeground(Z)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->mContext:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;->stopForeground(Z)V

    return-void
.end method

.method public final stopSelf()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->mContext:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;->stopSelf()V

    return-void
.end method

.method public final stopSelf(I)V
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->stopSelfResult(I)Z

    return-void
.end method

.method public final stopSelfResult(I)Z
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->mContext:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method
