.class Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;
.super Ljava/lang/Object;
.source "BookImageRenderer.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/provider/BookImageRenderer;->openDocument(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

.field final synthetic val$DSN:Ljava/lang/String;

.field final synthetic val$accountSecrets:Ljava/util/List;

.field final synthetic val$containers:Ljava/util/List;

.field final synthetic val$documentPath:Ljava/lang/String;

.field final synthetic val$voucherFiles:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/provider/BookImageRenderer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;->this$0:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    iput-object p2, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;->val$documentPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;->val$accountSecrets:Ljava/util/List;

    iput-object p4, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;->val$DSN:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;->val$voucherFiles:Ljava/util/List;

    iput-object p6, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;->val$containers:Ljava/util/List;

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

    .line 120
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;->this$0:Lcom/amazon/kcp/reader/provider/BookImageRenderer;

    iget-object v1, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;->val$documentPath:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;->val$accountSecrets:Ljava/util/List;

    iget-object v3, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;->val$DSN:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;->val$voucherFiles:Ljava/util/List;

    iget-object v5, p0, Lcom/amazon/kcp/reader/provider/BookImageRenderer$2;->val$containers:Ljava/util/List;

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/reader/provider/BookImageRenderer;->access$200(Lcom/amazon/kcp/reader/provider/BookImageRenderer;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    const/4 v0, 0x0

    return-object v0
.end method
