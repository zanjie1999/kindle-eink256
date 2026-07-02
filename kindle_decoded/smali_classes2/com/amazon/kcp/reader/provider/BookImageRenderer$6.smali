.class Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;
.super Ljava/lang/Object;
.source "BookImageRenderer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/provider/BookImageRenderer;->renderPageClip(Landroid/graphics/Rect;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

.field final synthetic val$DSN:Ljava/lang/String;

.field final synthetic val$accountSecrets:Ljava/util/List;

.field final synthetic val$containers:Ljava/util/List;

.field final synthetic val$cropToFit:Z

.field final synthetic val$documentPath:Ljava/lang/String;

.field final synthetic val$endPosition:Ljava/lang/String;

.field final synthetic val$pageRect:Landroid/graphics/Rect;

.field final synthetic val$startPosition:Ljava/lang/String;

.field final synthetic val$voucherFiles:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/provider/BookImageRenderer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Rect;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->this$0:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    iput-object p2, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$documentPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$accountSecrets:Ljava/util/List;

    iput-object p4, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$DSN:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$voucherFiles:Ljava/util/List;

    iput-object p6, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$containers:Ljava/util/List;

    iput-object p7, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$startPosition:Ljava/lang/String;

    iput-object p8, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$endPosition:Ljava/lang/String;

    iput-boolean p9, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$cropToFit:Z

    iput-object p10, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$pageRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->this$0:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    iget-object v1, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$documentPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$accountSecrets:Ljava/util/List;

    iget-object v3, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$DSN:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$voucherFiles:Ljava/util/List;

    iget-object v5, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$containers:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->access$200(Lcom/amazon/kcp/reader/provider/BookImageRenderer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 182
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->this$0:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    .line 183
    invoke-static {v0}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->access$500(Lcom/amazon/kcp/reader/provider/BookImageRenderer;)Lcom/amazon/krf/platform/KRFBook;

    move-result-object v1

    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->this$0:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    .line 184
    invoke-static {v0}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->access$600(Lcom/amazon/kcp/reader/provider/BookImageRenderer;)Lcom/amazon/krf/platform/PageInfoProvider;

    move-result-object v2

    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->this$0:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    .line 185
    invoke-static {v0}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->access$700(Lcom/amazon/kcp/reader/provider/BookImageRenderer;)Lcom/amazon/krf/platform/ThumbnailRenderer;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$startPosition:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$endPosition:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$cropToFit:Z

    iget-object v7, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->val$pageRect:Landroid/graphics/Rect;

    .line 182
    invoke-static/range {v1 .. v7}, Lcom/amazon/kcp/reader/provider/BookImageThumbnailRendering;->renderPageClip(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/PageInfoProvider;Lcom/amazon/krf/platform/ThumbnailRenderer;Ljava/lang/String;Ljava/lang/String;ZLandroid/graphics/Rect;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/provider/BookImageRenderer$6;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
