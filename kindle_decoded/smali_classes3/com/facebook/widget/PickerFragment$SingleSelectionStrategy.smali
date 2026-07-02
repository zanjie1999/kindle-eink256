.class Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;
.super Lcom/facebook/widget/PickerFragment$SelectionStrategy;
.source "PickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/PickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleSelectionStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment<",
        "TT;>.SelectionStrategy;"
    }
.end annotation


# instance fields
.field private selectedId:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/widget/PickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment;)V
    .locals 0

    .line 957
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-direct {p0, p1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 994
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    return-void
.end method

.method public getSelectedIds()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 961
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .line 999
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSelected(Ljava/lang/String;)Z
    .locals 1

    .line 966
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method readSelectionFromBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 988
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method saveSelectionToBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method shouldShowCheckBoxIfUnselected()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method toggleSelection(Ljava/lang/String;)V
    .locals 1

    .line 971
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 972
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    goto :goto_0

    .line 974
    :cond_0
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    :goto_0
    return-void
.end method
