.class public Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;
.super Landroid/app/Service;
.source "ServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;,
        Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;
    }
.end annotation


# instance fields
.field private mImpl:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;

.field private mServiceContext:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 160
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 157
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mServiceContext:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;

    return-void
.end method

.method protected constructor <init>(Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;)V
    .locals 1

    .line 164
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 157
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;-><init>(Landroid/app/Service;)V

    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mServiceContext:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;

    .line 165
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->setImpl(Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;)V

    return-void
.end method


# virtual methods
.method protected final dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mImpl:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method protected getImpl()Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mImpl:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;

    return-object v0
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mImpl:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 222
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 224
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mImpl:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate()V
    .locals 1

    .line 193
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 194
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mImpl:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->onCreate()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 214
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 216
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mImpl:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->onDestroy()V

    return-void
.end method

.method public final onLowMemory()V
    .locals 1

    .line 230
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    .line 232
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mImpl:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;

    invoke-virtual {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->onLowMemory()V

    return-void
.end method

.method public final onRebind(Landroid/content/Intent;)V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mImpl:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->onRebind(Landroid/content/Intent;)V

    return-void
.end method

.method public final onStart(Landroid/content/Intent;I)V
    .locals 0

    .line 200
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 206
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 208
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mImpl:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public final onUnbind(Landroid/content/Intent;)Z
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mImpl:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method protected final setImpl(Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;)V
    .locals 1

    .line 170
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mImpl:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;

    .line 171
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mServiceContext:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->setServiceContext(Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;)V

    return-void
.end method

.method final setServiceContext(Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;)V
    .locals 1

    .line 182
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mServiceContext:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;

    .line 184
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;->mImpl:Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$Impl;->setServiceContext(Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;)V

    :cond_0
    return-void
.end method
