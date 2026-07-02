.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;
.super Ljava/lang/Object;
.source "LibraryContentInteractionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->showExternalDirectoryPermissionsDialog(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/android/system/PermissionsManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

.field final synthetic val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

.field final synthetic val$clickedView:Landroid/view/View;

.field final synthetic val$handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

.field final synthetic val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

.field final synthetic val$reader:Lcom/amazon/kcp/reader/ReaderController;

.field final synthetic val$readingStreamContext:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->val$reader:Lcom/amazon/kcp/reader/ReaderController;

    iput-object p4, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iput-object p5, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->val$clickedView:Landroid/view/View;

    iput-object p6, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->val$handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    iput-object p7, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->val$readingStreamContext:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    new-instance v1, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7$1;-><init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler$7;)V

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->access$002(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
