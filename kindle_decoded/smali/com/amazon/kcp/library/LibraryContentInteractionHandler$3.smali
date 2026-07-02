.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;
.super Ljava/lang/Object;
.source "LibraryContentInteractionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->showExternalStoragePermissionsDialog(Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/android/system/PermissionsManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$clickedView:Landroid/view/View;

.field final synthetic val$handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

.field final synthetic val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

.field final synthetic val$reader:Lcom/amazon/kcp/reader/ReaderController;

.field final synthetic val$readingStreamContext:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V
    .locals 0

    .line 445
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;->val$reader:Lcom/amazon/kcp/reader/ReaderController;

    iput-object p4, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;->val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iput-object p5, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;->val$clickedView:Landroid/view/View;

    iput-object p6, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;->val$handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    iput-object p7, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;->val$readingStreamContext:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 448
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setPersonalDocsSetting(Z)V

    .line 449
    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    iget-object v3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;->val$activity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;->val$reader:Lcom/amazon/kcp/reader/ReaderController;

    iget-object v5, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;->val$libraryItem:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    iget-object v6, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;->val$clickedView:Landroid/view/View;

    iget-object v7, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;->val$handler:Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;

    iget-object v8, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$3;->val$readingStreamContext:Ljava/lang/String;

    invoke-virtual/range {v2 .. v8}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->handleItemClick(Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Ljava/lang/String;)V

    return-void
.end method
