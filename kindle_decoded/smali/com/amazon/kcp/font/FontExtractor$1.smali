.class Lcom/amazon/kcp/font/FontExtractor$1;
.super Landroid/os/AsyncTask;
.source "FontExtractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/font/FontExtractor;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/callback/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/font/FontExtractor;

.field final synthetic val$executeAfterExtraction:Lcom/amazon/kindle/callback/ICallback;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/font/FontExtractor;Lcom/amazon/kindle/callback/ICallback;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/kcp/font/FontExtractor$1;->this$0:Lcom/amazon/kcp/font/FontExtractor;

    iput-object p2, p0, Lcom/amazon/kcp/font/FontExtractor$1;->val$executeAfterExtraction:Lcom/amazon/kindle/callback/ICallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/font/FontExtractor$1;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    const/4 v0, 0x0

    .line 55
    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {v0, p1}, Lcom/amazon/kcp/font/FontExtractor;->extractFolder(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    iget-object p1, p0, Lcom/amazon/kcp/font/FontExtractor$1;->this$0:Lcom/amazon/kcp/font/FontExtractor;

    invoke-static {p1, v1}, Lcom/amazon/kcp/font/FontExtractor;->access$000(Lcom/amazon/kcp/font/FontExtractor;Z)V

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/font/FontExtractor$1;->val$executeAfterExtraction:Lcom/amazon/kindle/callback/ICallback;

    if-eqz p1, :cond_1

    .line 59
    new-instance v0, Lcom/amazon/kindle/callback/OperationResult;

    iget-object v1, p0, Lcom/amazon/kcp/font/FontExtractor$1;->this$0:Lcom/amazon/kcp/font/FontExtractor;

    invoke-virtual {v1}, Lcom/amazon/foundation/internal/CAsynchronousCallback;->hasError()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/callback/OperationResult;-><init>(Ljava/lang/Object;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/callback/ICallback;->call(Lcom/amazon/kindle/callback/OperationResult;)V

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/font/FontExtractor$1;->this$0:Lcom/amazon/kcp/font/FontExtractor;

    invoke-virtual {p1}, Lcom/amazon/kcp/font/FontExtractor;->kill()V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/font/FontExtractor$1;->this$0:Lcom/amazon/kcp/font/FontExtractor;

    invoke-virtual {v0}, Lcom/amazon/kcp/font/FontExtractor;->kill()V

    return-void
.end method
