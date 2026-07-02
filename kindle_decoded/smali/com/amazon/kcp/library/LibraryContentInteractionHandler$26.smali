.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$26;
.super Ljava/lang/Object;
.source "LibraryContentInteractionHandler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->setupDialog(Lcom/amazon/kcp/library/LibraryDialogFragment;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;)V
    .locals 0

    .line 1500
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$26;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1503
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$26;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->access$700(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;)Landroid/view/ActionMode;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1504
    iget-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$26;->this$0:Lcom/amazon/kcp/library/LibraryContentInteractionHandler;

    invoke-static {p1}, Lcom/amazon/kcp/library/LibraryContentInteractionHandler;->access$700(Lcom/amazon/kcp/library/LibraryContentInteractionHandler;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method
