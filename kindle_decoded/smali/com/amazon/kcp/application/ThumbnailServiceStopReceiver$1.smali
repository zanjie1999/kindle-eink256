.class Lcom/amazon/kcp/application/ThumbnailServiceStopReceiver$1;
.super Ljava/lang/Object;
.source "ThumbnailServiceStopReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/ThumbnailServiceStopReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/ThumbnailServiceStopReceiver;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 36
    invoke-static {}, Lcom/amazon/kcp/application/ThumbnailServiceStopReceiver;->access$000()Ljava/lang/String;

    const/4 v0, 0x0

    .line 37
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method
