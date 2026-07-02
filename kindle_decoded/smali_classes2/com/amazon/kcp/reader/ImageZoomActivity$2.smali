.class Lcom/amazon/kcp/reader/ImageZoomActivity$2;
.super Ljava/lang/Object;
.source "ImageZoomActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ImageZoomActivity;->hideOverlaysAfterDelay(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ImageZoomActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ImageZoomActivity;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/amazon/kcp/reader/ImageZoomActivity$2;->this$0:Lcom/amazon/kcp/reader/ImageZoomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ImageZoomActivity$2;->this$0:Lcom/amazon/kcp/reader/ImageZoomActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ImageZoomActivity;->hideOverlays()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 366
    invoke-static {}, Lcom/amazon/kcp/reader/ImageZoomActivity;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Continuing after unexpected exception while hiding overlays after delay"

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
