.class abstract Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
.super Lcom/facebook/widget/GraphObjectAdapter;
.source "PickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/PickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "PickerFragmentAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<U::",
        "Lcom/facebook/model/GraphObject;",
        ">",
        "Lcom/facebook/widget/GraphObjectAdapter<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/PickerFragment;


# direct methods
.method public constructor <init>(Lcom/facebook/widget/PickerFragment;Landroid/content/Context;)V
    .locals 0

    .line 1068
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->this$0:Lcom/facebook/widget/PickerFragment;

    .line 1069
    invoke-direct {p0, p2}, Lcom/facebook/widget/GraphObjectAdapter;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method isGraphObjectSelected(Ljava/lang/String;)Z
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-static {v0}, Lcom/facebook/widget/PickerFragment;->access$700(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->isSelected(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method updateCheckboxState(Landroid/widget/CheckBox;Z)V
    .locals 0

    .line 1079
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    if-nez p2, :cond_1

    .line 1080
    iget-object p2, p0, Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-static {p2}, Lcom/facebook/widget/PickerFragment;->access$700(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    move-result-object p2

    invoke-virtual {p2}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->shouldShowCheckBoxIfUnselected()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 1082
    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setVisibility(I)V

    return-void
.end method
