.class Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$1;
.super Ljava/lang/Object;
.source "BookOpenAndCloseAnimationHelper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->submitOpenReaderItemRequest(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Ljava/util/concurrent/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

.field final synthetic val$libraryDisplayItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;Lcom/amazon/kcp/library/ILibraryDisplayItem;)V
    .locals 0

    .line 214
    iput-object p1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$1;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    iput-object p2, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$1;->val$libraryDisplayItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/content/Intent;
    .locals 4

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$1;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {v0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$200(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$1;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {v1}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$000(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$1;->val$libraryDisplayItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iget-object v3, p0, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$1;->this$0:Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;

    invoke-static {v3}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;->access$100(Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper;)Landroid/app/Activity;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kcp/library/ILibraryController;->signaledOpenItem(Lcom/amazon/kcp/reader/IReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/app/Activity;)Landroid/content/Intent;

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

    .line 214
    invoke-virtual {p0}, Lcom/amazon/kcp/library/BookOpenAndCloseAnimationHelper$1;->call()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
