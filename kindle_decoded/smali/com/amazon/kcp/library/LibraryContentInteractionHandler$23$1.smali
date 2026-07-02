.class Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23$1;
.super Ljava/lang/Object;
.source "LibraryContentInteractionHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;

.field final synthetic val$localBook:Lcom/amazon/kindle/model/content/ILocalBookItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;Lcom/amazon/kindle/model/content/ILocalBookItem;)V
    .locals 0

    .line 1254
    iput-object p1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23$1;->this$1:Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;

    iput-object p2, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23$1;->val$localBook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1257
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23$1;->val$localBook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/models/BookCapability;->supportsCapability(Lcom/amazon/kindle/model/content/IListableBook;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1258
    iget-object v0, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23$1;->val$localBook:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getLocalBookState()Lcom/amazon/kindle/model/content/LocalBookState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/LocalBookState;->isBookKept()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1259
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23$1;->this$1:Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;

    iget-object v1, v1, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;->val$menu:Landroid/view/Menu;

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_perioidical_keep:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1260
    iget-object v1, p0, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23$1;->this$1:Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;

    iget-object v1, v1, Lcom/amazon/kcp/library/LibraryContentInteractionHandler$23;->val$menu:Landroid/view/Menu;

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->lib_menu_perioidical_dont_keep:I

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    xor-int/lit8 v0, v0, 0x1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
