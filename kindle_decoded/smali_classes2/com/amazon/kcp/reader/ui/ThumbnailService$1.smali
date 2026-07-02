.class Lcom/amazon/kcp/reader/ui/ThumbnailService$1;
.super Ljava/lang/Object;
.source "ThumbnailService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ThumbnailService;->warmUpCache(IIIILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ThumbnailService;

.field final synthetic val$parent:Landroid/app/Service;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ThumbnailService;Landroid/app/Service;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailService;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$1;->val$parent:Landroid/app/Service;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "ThumbnailService"

    const-string v1, "Stopping service at end of cache warming."

    .line 353
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$1;->this$0:Lcom/amazon/kcp/reader/ui/ThumbnailService;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ThumbnailService;->access$200(Lcom/amazon/kcp/reader/ui/ThumbnailService;)V

    .line 355
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ThumbnailService$1;->val$parent:Landroid/app/Service;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method
