.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$10;
.super Ljava/lang/Object;
.source "LibraryContentInteractionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->showExternalDirectoryPermissionsDialog(Lcom/amazon/kcp/redding/ReddingActivity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/android/system/PermissionsManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onFailure:Ljava/lang/Runnable;

.field final synthetic val$onSuccess:Ljava/lang/Runnable;

.field final synthetic val$parent:Ljava/io/File;

.field final synthetic val$permissionsManager:Lcom/amazon/android/system/PermissionsManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/android/system/PermissionsManager;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/io/File;)V
    .locals 0

    .line 542
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$10;->val$permissionsManager:Lcom/amazon/android/system/PermissionsManager;

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$10;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$10;->val$onFailure:Ljava/lang/Runnable;

    iput-object p5, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$10;->val$parent:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 545
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$10;->val$permissionsManager:Lcom/amazon/android/system/PermissionsManager;

    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$10;->val$onSuccess:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$10;->val$onFailure:Ljava/lang/Runnable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$10;->val$parent:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v2, Ljava/io/File;->separatorChar:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/amazon/android/system/PermissionsManager;->requestExternalDirectoryPermissions(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method
