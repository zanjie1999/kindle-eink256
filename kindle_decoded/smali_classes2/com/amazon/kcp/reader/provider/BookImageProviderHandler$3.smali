.class Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;
.super Ljava/lang/Object;
.source "BookImageProviderHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->renderPageClip(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/concurrent/Future<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;

.field final synthetic val$accountSecrets:[Ljava/lang/String;

.field final synthetic val$containers:[Ljava/lang/String;

.field final synthetic val$cropToFit:Z

.field final synthetic val$dsn:Ljava/lang/String;

.field final synthetic val$endPosition:Ljava/lang/String;

.field final synthetic val$pageRect:Landroid/graphics/Rect;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$startPosition:Ljava/lang/String;

.field final synthetic val$vouchers:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->this$0:Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;

    iput-object p2, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$pageRect:Landroid/graphics/Rect;

    iput-object p3, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$startPosition:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$endPosition:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$cropToFit:Z

    iput-object p6, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$path:Ljava/lang/String;

    iput-object p7, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$accountSecrets:[Ljava/lang/String;

    iput-object p8, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$dsn:Ljava/lang/String;

    iput-object p9, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$vouchers:[Ljava/lang/String;

    iput-object p10, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$containers:[Ljava/lang/String;

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

    .line 264
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->call()Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/concurrent/Future;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$pageRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->sort()V

    .line 268
    invoke-static {}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->instance()Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$pageRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$startPosition:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$endPosition:Ljava/lang/String;

    iget-boolean v5, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$cropToFit:Z

    iget-object v6, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$path:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->this$0:Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;

    iget-object v7, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$accountSecrets:[Ljava/lang/String;

    .line 269
    invoke-static {v0, v7}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->access$200(Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iget-object v8, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$dsn:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->this$0:Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;

    iget-object v9, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$vouchers:[Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->access$200(Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->this$0:Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;

    iget-object v10, p0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$3;->val$containers:[Ljava/lang/String;

    .line 270
    invoke-static {v0, v10}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;->access$200(Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 268
    invoke-virtual/range {v1 .. v10}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->renderPageClip(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
