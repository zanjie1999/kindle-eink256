.class Lcom/amazon/kcp/library/ui/LibraryBookRow$2;
.super Ljava/lang/Object;
.source "LibraryBookRow.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ui/LibraryBookRow;->updateBadges()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/LibraryBookRow;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow$2;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;

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
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 436
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow$2;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->access$202(Lcom/amazon/kcp/library/ui/LibraryBookRow;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 437
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow$2;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;

    invoke-static {p1}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->access$300(Lcom/amazon/kcp/library/ui/LibraryBookRow;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 438
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow$2;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->access$302(Lcom/amazon/kcp/library/ui/LibraryBookRow;Z)Z

    .line 439
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow$2;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;

    invoke-virtual {p1}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->updateBadges()V

    .line 441
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow$2;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;

    invoke-static {p1}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->access$400(Lcom/amazon/kcp/library/ui/LibraryBookRow;)V

    return-void
.end method
