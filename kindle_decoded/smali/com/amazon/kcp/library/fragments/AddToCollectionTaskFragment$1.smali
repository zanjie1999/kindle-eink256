.class Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;
.super Landroid/os/AsyncTask;
.source "AddToCollectionTaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;->addItemsToCollection(Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;

.field final synthetic val$checkedLibraryItems:Ljava/util/List;

.field final synthetic val$collectionId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;

    iput-object p2, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;->val$collectionId:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;->val$checkedLibraryItems:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    .line 59
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;->val$collectionId:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;->val$checkedLibraryItems:Ljava/util/List;

    .line 60
    invoke-static {p1, v0}, Lcom/amazon/kcp/library/fragments/CollectionMultiSelectFragmentHelper;->transformLibraryItemsToCollectionItems(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 62
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;->access$002(Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;I)I

    .line 64
    invoke-static {}, Lcom/amazon/kindle/collections/CollectionsManagerHolder;->getInstance()Lcom/amazon/kindle/collections/ICollectionsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;->val$collectionId:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/collections/ICollectionsManager;->addItemsToCollection(Ljava/util/List;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 69
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 70
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, p1}, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;->access$102(Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;Z)Z

    .line 74
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;

    invoke-static {p1}, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;->access$200(Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;)V

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;->access$302(Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;Z)Z

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 56
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
