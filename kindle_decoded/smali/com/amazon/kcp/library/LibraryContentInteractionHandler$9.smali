.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$9;
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
.field final synthetic val$activity:Lcom/amazon/kcp/redding/ReddingActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;Lcom/amazon/kcp/redding/ReddingActivity;)V
    .locals 0

    .line 533
    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$9;->val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 536
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$9;->val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$9;->val$activity:Lcom/amazon/kcp/redding/ReddingActivity;

    invoke-virtual {p2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/amazon/kindle/librarymodule/R$string;->directory_permission_denied_toast:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 537
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
