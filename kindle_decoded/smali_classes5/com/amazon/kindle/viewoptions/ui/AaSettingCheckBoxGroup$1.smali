.class final Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AaSettingCheckBoxGroup.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;[ILkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 20
    check-cast p1, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup$1;->invoke(Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;Z)V
    .locals 4

    const-string p2, "checkboxItem"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;

    invoke-static {p2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->access$getCheckedTextViewArray$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 54
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;

    invoke-static {v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->access$getCheckedStates$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;

    invoke-static {v2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->access$getCheckedTextViewArray$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "checkedTextViewArray[index]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;->isChecked()Z

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 56
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;

    invoke-static {p2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->access$getChangeHandler$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;)Lkotlin/jvm/functions/Function2;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;->access$getCheckedStates$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingCheckBoxGroup;)[I

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
