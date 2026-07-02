.class final Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$4;
.super Lkotlin/jvm/internal/Lambda;
.source "AaSettingViewUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils;->createViewForAaSettingDisplay(Landroid/content/Context;ILcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function1;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "[I",
        "Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $changeListener:Lkotlin/jvm/functions/Function1;

.field final synthetic $display:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

.field final synthetic $identifier:I


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$4;->$display:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$4;->$changeListener:Lkotlin/jvm/functions/Function1;

    iput p3, p0, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$4;->$identifier:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, [I

    check-cast p2, Lcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$4;->invoke([ILcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke([ILcom/amazon/kindle/krx/viewoptions/IAaSettingCheckboxItem;)V
    .locals 1

    const-string/jumbo v0, "values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checkboxItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$4;->$display:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/CheckboxGroup;->getChangeHandler()Lkotlin/jvm/functions/Function2;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$4;->$changeListener:Lkotlin/jvm/functions/Function1;

    iget p2, p0, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$4;->$identifier:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
