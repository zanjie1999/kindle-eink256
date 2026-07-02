.class public Lcom/amazon/ea/EndActionsPlugin$StartupPurchaseDownloadProgressListener;
.super Ljava/lang/Object;
.source "EndActionsPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/EndActionsPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StartupPurchaseDownloadProgressListener"
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/ea/EndActionsPlugin;)V
    .locals 0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadProgressEvent(Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 313
    invoke-static {}, Lcom/amazon/ea/EndActionsPlugin;->getPurchaseManager()Lcom/amazon/ea/purchase/PurchaseManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/PurchaseManager;->onDownloadProgressEvent(Lcom/amazon/kindle/services/download/IDownloadService$DownloadProgressUpdateEvent;)V

    return-void
.end method
