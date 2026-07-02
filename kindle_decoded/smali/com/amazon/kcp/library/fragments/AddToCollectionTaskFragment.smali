.class public Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;
.super Landroidx/fragment/app/Fragment;
.source "AddToCollectionTaskFragment.java"


# static fields
.field private static final SPINNER_TAG:Ljava/lang/String; = "AddingSpinner"


# instance fields
.field private itemsAdded:I

.field private pendingUpdate:Z

.field private taskSuccess:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;->itemsAdded:I

    return p1
.end method

.method static synthetic access$102(Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;->taskSuccess:Z

    return p1
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;->onItemsDoneAdding()V

    return-void
.end method

.method static synthetic access$302(Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;->pendingUpdate:Z

    return p1
.end method

.method private onItemsDoneAdding()V
    .locals 6

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 88
    iget-boolean v1, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;->taskSuccess:Z

    if-eqz v1, :cond_1

    .line 89
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->items_added_count:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget v4, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;->itemsAdded:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 90
    iget v3, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;->itemsAdded:I

    if-ne v3, v2, :cond_0

    .line 91
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->items_added_count_singular:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 93
    :cond_0
    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 96
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "AddingSpinner"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/DialogFragment;

    if-eqz v1, :cond_2

    .line 98
    invoke-virtual {v1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    .line 100
    :cond_2
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method


# virtual methods
.method public addItemsToCollection(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/ILibraryDisplayItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    sget v1, Lcom/amazon/kindle/librarymodule/R$string;->adding_progress:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amazon/kcp/library/SpinnerDialogFragment;->newInstance(IZ)Lcom/amazon/kcp/library/SpinnerDialogFragment;

    move-result-object v1

    .line 54
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v3, "AddingSpinner"

    invoke-virtual {v1, v0, v3}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 56
    new-instance v0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment$1;-><init>(Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;Ljava/lang/String;Ljava/util/List;)V

    new-array p1, v2, [Ljava/lang/Void;

    .line 80
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 43
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    iget-boolean p1, p0, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;->pendingUpdate:Z

    if-eqz p1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/amazon/kcp/library/fragments/AddToCollectionTaskFragment;->onItemsDoneAdding()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 37
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 38
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    return-void
.end method
