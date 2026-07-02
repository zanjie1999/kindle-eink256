.class Lcom/amazon/kcp/font/FontDownloadRequest$3;
.super Ljava/lang/Object;
.source "FontDownloadRequest.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/font/FontDownloadRequest;->onDownloadFinished()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/font/FontDownloadRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/font/FontDownloadRequest;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/amazon/kcp/font/FontDownloadRequest$3;->this$0:Lcom/amazon/kcp/font/FontDownloadRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/font/FontDownloadRequest$3;->this$0:Lcom/amazon/kcp/font/FontDownloadRequest;

    invoke-virtual {p1}, Lcom/amazon/kindle/callback/OperationResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/amazon/kcp/font/FontDownloadRequest;->access$100(Lcom/amazon/kcp/font/FontDownloadRequest;Z)V

    return-void
.end method
