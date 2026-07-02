.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7$1;
.super Ljava/lang/Object;
.source "LibraryContentInteractionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;)V
    .locals 0

    .line 510
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7$1;->this$1:Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 513
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7$1;->this$1:Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;

    iget-object v1, v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    iget-object v2, v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    iget-object v3, v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->val$reader:Lcom/amazon/kcp/reader/ReaderController;

    iget-object v4, v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iget-object v5, v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->val$clickedView:Landroid/view/View;

    iget-object v6, v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->val$handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    iget-object v7, v0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->val$readingStreamContext:Ljava/lang/String;

    invoke-virtual/range {v1 .. v7}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->handleItemClick(Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V

    return-void
.end method
