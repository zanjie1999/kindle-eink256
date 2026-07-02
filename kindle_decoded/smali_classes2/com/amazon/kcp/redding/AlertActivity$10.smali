.class Lcom/amazon/kcp/redding/AlertActivity$10;
.super Ljava/lang/Object;
.source "AlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/redding/AlertActivity;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/redding/AlertActivity;

.field final synthetic val$book:Lcom/amazon/kindle/model/content/ILocalBookItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/redding/AlertActivity;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 444
    iput-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$10;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    iput-object p2, p0, Lcom/amazon/kcp/redding/AlertActivity$10;->val$book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 447
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object p1

    iget-object p2, p0, Lcom/amazon/kcp/redding/AlertActivity$10;->val$book:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/amazon/kcp/library/ILibraryController;->deleteBook(Ljava/lang/String;)V

    .line 448
    iget-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$10;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 449
    iget-object p1, p0, Lcom/amazon/kcp/redding/AlertActivity$10;->this$0:Lcom/amazon/kcp/redding/AlertActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
