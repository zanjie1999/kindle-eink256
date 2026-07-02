.class final Lcom/amazon/kindle/library/widget/ToggleGroup$CheckedStateTracker;
.super Ljava/lang/Object;
.source "ToggleGroup.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/library/widget/ToggleGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CheckedStateTracker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/library/widget/ToggleGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$CheckedStateTracker;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4

    const-string v0, "buttonView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$CheckedStateTracker;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    invoke-static {v0}, Lcom/amazon/kindle/library/widget/ToggleGroup;->access$getMProtectFromCheckedChange$p(Lcom/amazon/kindle/library/widget/ToggleGroup;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 200
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    .line 201
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$CheckedStateTracker;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/kindle/library/widget/ToggleGroup;->access$setMProtectFromCheckedChange$p(Lcom/amazon/kindle/library/widget/ToggleGroup;Z)V

    .line 202
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$CheckedStateTracker;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    invoke-virtual {v0}, Lcom/amazon/kindle/library/widget/ToggleGroup;->getCheckedToggleButtonId()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$CheckedStateTracker;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    invoke-virtual {v0}, Lcom/amazon/kindle/library/widget/ToggleGroup;->getCheckedToggleButtonId()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 203
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$CheckedStateTracker;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    invoke-virtual {v0}, Lcom/amazon/kindle/library/widget/ToggleGroup;->getCheckedToggleButtonId()I

    move-result v2

    invoke-static {v0, v2, v3}, Lcom/amazon/kindle/library/widget/ToggleGroup;->access$setCheckedStateForView(Lcom/amazon/kindle/library/widget/ToggleGroup;IZ)V

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$CheckedStateTracker;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    invoke-virtual {v0}, Lcom/amazon/kindle/library/widget/ToggleGroup;->getCheckedToggleButtonId()I

    move-result v0

    if-ne v0, p1, :cond_1

    if-nez p2, :cond_1

    .line 209
    iget-object p2, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$CheckedStateTracker;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    invoke-static {p2, p1, v1}, Lcom/amazon/kindle/library/widget/ToggleGroup;->access$setCheckedStateForView(Lcom/amazon/kindle/library/widget/ToggleGroup;IZ)V

    .line 210
    iget-object p1, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$CheckedStateTracker;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    invoke-static {p1, v3}, Lcom/amazon/kindle/library/widget/ToggleGroup;->access$setMProtectFromCheckedChange$p(Lcom/amazon/kindle/library/widget/ToggleGroup;Z)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object p2, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$CheckedStateTracker;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    invoke-static {p2, v3}, Lcom/amazon/kindle/library/widget/ToggleGroup;->access$setMProtectFromCheckedChange$p(Lcom/amazon/kindle/library/widget/ToggleGroup;Z)V

    .line 213
    iget-object p2, p0, Lcom/amazon/kindle/library/widget/ToggleGroup$CheckedStateTracker;->this$0:Lcom/amazon/kindle/library/widget/ToggleGroup;

    invoke-static {p2, p1}, Lcom/amazon/kindle/library/widget/ToggleGroup;->access$setCheckedId(Lcom/amazon/kindle/library/widget/ToggleGroup;I)V

    :cond_2
    :goto_0
    return-void
.end method
