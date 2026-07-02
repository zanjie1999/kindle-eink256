.class Lcom/amazon/kcp/library/TransientActivity$2;
.super Ljava/lang/Object;
.source "TransientActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/TransientActivity;->onDownloadStateChanged(Lcom/amazon/kindle/services/download/IDownloadService$DownloadStateUpdateEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/TransientActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/TransientActivity;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity$2;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/kcp/library/TransientActivity$2;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v0}, Lcom/amazon/kcp/library/TransientActivity;->access$100(Lcom/amazon/kcp/library/TransientActivity;)V

    return-void
.end method
