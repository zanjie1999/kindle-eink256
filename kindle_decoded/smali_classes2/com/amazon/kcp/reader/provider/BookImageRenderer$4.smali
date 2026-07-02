.class final Lcom/amazon/kcp/reader/provider/BookImageRenderer$4;
.super Ljava/lang/Object;
.source "BookImageRenderer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/provider/BookImageRenderer;->destroy(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$4;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 141
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/provider/BookImageRenderer$4;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 144
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->access$400()Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->access$300(Lcom/amazon/kcp/reader/provider/BookImageRenderer;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$4;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-object v1
.end method
