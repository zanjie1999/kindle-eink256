.class Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable$1;
.super Ljava/lang/Object;
.source "AsyncListLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->loadValueAndNotify()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;Ljava/lang/Object;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable$1;->this$1:Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;

    iput-object p2, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable$1;->val$value:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 437
    iget-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable$1;->this$1:Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;

    iget-object v0, v0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-static {v0}, Lcom/amazon/xray/model/loader/AsyncListLoader;->access$700(Lcom/amazon/xray/model/loader/AsyncListLoader;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable$1;->this$1:Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;

    iget-object v0, v0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-static {v0}, Lcom/amazon/xray/model/loader/AsyncListLoader;->access$600(Lcom/amazon/xray/model/loader/AsyncListLoader;)Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable$1;->this$1:Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;

    iget-object v0, v0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-static {v0}, Lcom/amazon/xray/model/loader/AsyncListLoader;->access$600(Lcom/amazon/xray/model/loader/AsyncListLoader;)Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable$1;->this$1:Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;

    iget-object v2, v1, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->this$0:Lcom/amazon/xray/model/loader/AsyncListLoader;

    invoke-static {v1}, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;->access$800(Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable;)I

    move-result v1

    iget-object v3, p0, Lcom/amazon/xray/model/loader/AsyncListLoader$BackgroundLoadRunnable$1;->val$value:Ljava/lang/Object;

    invoke-interface {v0, v2, v1, v3}, Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;->onLoad(Lcom/amazon/xray/model/loader/AsyncListLoader;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
