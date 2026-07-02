.class public Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;
.super Landroid/content/ContextWrapper;
.source "ServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/ServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ServiceContext"
.end annotation


# instance fields
.field private final mService:Landroid/app/Service;


# direct methods
.method public constructor <init>(Landroid/app/Service;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 122
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;->mService:Landroid/app/Service;

    return-void
.end method


# virtual methods
.method public getApplication()Landroid/app/Application;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public startForeground(ILandroid/app/Notification;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;->mService:Landroid/app/Service;

    invoke-virtual {v0, p1, p2}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public stopForeground(Z)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;->mService:Landroid/app/Service;

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopForeground(Z)V

    return-void
.end method

.method public stopSelf()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;->mService:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public final stopSelf(I)V
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;->stopSelfResult(I)Z

    return-void
.end method

.method public stopSelfResult(I)Z
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceWrapper$ServiceContext;->mService:Landroid/app/Service;

    invoke-virtual {v0, p1}, Landroid/app/Service;->stopSelfResult(I)Z

    move-result p1

    return p1
.end method
