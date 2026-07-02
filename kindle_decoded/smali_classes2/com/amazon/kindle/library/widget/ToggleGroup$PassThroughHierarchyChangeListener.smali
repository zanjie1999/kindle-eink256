.class final Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;
.super Ljava/lang/Object;
.source "ToggleGroup.kt"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/library/widget/ToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PassThroughHierarchyChangeListener"
.end annotation


# instance fields
.field private mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field final synthetic this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/library/widget/ToggleGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 164
    iput-object p1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    if-ne p1, v0, :cond_1

    instance-of v0, p2, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 172
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    invoke-static {v0}, Lcom/amazon/kindle/library/widget/ToggleGroup;->access$generateNewViewId(Lcom/amazon/kindle/library/widget/ToggleGroup;)I

    move-result v0

    .line 173
    invoke-virtual {p2, v0}, Landroid/view/View;->setId(I)V

    .line 176
    :cond_0
    move-object v0, p2

    check-cast v0, Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    invoke-static {v1}, Lcom/amazon/kindle/library/widget/ToggleGroup;->access$getMChildOnCheckedChangeListener$p(Lcom/amazon/kindle/library/widget/ToggleGroup;)Landroid/widget/CompoundButton$OnCheckedChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_2

    if-eqz v0, :cond_2

    .line 180
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "child"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    if-ne p1, v0, :cond_0

    instance-of v0, p2, Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    .line 186
    move-object v0, p2

    check-cast v0, Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_1

    .line 190
    invoke-interface {v0, p1, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final setMOnHierarchyChangeListener$LibraryModule_release(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$PassThroughHierarchyChangeListener;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    return-void
.end method
