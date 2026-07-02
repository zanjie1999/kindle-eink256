.class Lcom/amazon/kcp/library/ui/LibraryBookRow$3;
.super Ljava/lang/Object;
.source "LibraryBookRow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ui/LibraryBookRow;->onBookTransferFinishEvent(Lcom/amazon/kindle/sdcard/librarytransfer/BookTransferFinishEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/LibraryBookRow;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow$3;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 600
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/LibraryBookRow$3;->this$0:Lcom/amazon/kcp/library/ui/LibraryBookRow;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/ui/LibraryBookRow;->updateDownloadProgressText()V

    return-void
.end method
