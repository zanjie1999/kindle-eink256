.class Lcom/amazon/kindle/cms/CMSCallback$1;
.super Ljava/lang/Object;
.source "CMSCallback.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/cms/CMSCallback;->execute(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/cms/api/VerbExtrasInterface;)Lcom/amazon/kindle/cms/api/Callback$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/cms/CMSCallback;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/cms/CMSCallback;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/amazon/kindle/cms/CMSCallback$1;->this$0:Lcom/amazon/kindle/cms/CMSCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/amazon/kindle/cms/CMSCallback$1;->this$0:Lcom/amazon/kindle/cms/CMSCallback;

    invoke-static {v0}, Lcom/amazon/kindle/cms/CMSCallback;->access$000(Lcom/amazon/kindle/cms/CMSCallback;)Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ReaderController;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderController;->closeCurrentBook()V

    return-void
.end method
