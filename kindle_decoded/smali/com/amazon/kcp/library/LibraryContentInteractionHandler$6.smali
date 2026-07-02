.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$6;
.super Ljava/lang/Object;
.source "LibraryContentInteractionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->showExternalStoragePermissionsDialog(Landroid/app/Activity;Lcom/amazon/kcp/reader/ReaderController;Lcom/amazon/kcp/library/ILibraryDisplayItem;Landroid/view/View;Lcom/amazon/kcp/library/fragments/ILibraryFragmentHandler;Lcom/amazon/android/system/PermissionsManager;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$onFailure:Ljava/lang/Runnable;

.field final synthetic val$onSuccess:Ljava/lang/Runnable;

.field final synthetic val$permissionsManager:Lcom/amazon/android/system/PermissionsManager;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/android/system/PermissionsManager;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 0

    .line 474
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$6;->val$permissionsManager:Lcom/amazon/android/system/PermissionsManager;

    iput-object p3, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$6;->val$onSuccess:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$6;->val$onFailure:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 477
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$6;->val$permissionsManager:Lcom/amazon/android/system/PermissionsManager;

    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$6;->val$onSuccess:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$6;->val$onFailure:Ljava/lang/Runnable;

    invoke-virtual {p1, p2, v0}, Lcom/amazon/android/system/PermissionsManager;->requestExternalStoragePermissions(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-void
.end method
