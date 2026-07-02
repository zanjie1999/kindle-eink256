.class Lcom/amazon/kcp/library/TransientActivity$3;
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

.field final synthetic val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/TransientActivity;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/amazon/kcp/library/TransientActivity$3;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    iput-object p2, p0, Lcom/amazon/kcp/library/TransientActivity$3;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 206
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/TransientActivity$3;->val$bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iget-object v2, p0, Lcom/amazon/kcp/library/TransientActivity$3;->this$0:Lcom/amazon/kcp/library/TransientActivity;

    invoke-static {v2}, Lcom/amazon/kcp/library/TransientActivity;->access$200(Lcom/amazon/kcp/library/TransientActivity;)Lcom/amazon/kcp/reader/IReaderController$StartPage;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;->BLOCKING:Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;

    const/4 v4, 0x1

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kcp/reader/IReaderController;->openReader(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kcp/reader/IReaderController$StartPage;Lcom/amazon/kcp/reader/IReaderController$OpenReaderMode;Z)V

    return-void
.end method
