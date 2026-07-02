.class final Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$3;
.super Lkotlin/jvm/internal/Lambda;
.source "AaSettingViewUtils.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


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
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
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

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$3;->$display:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$3;->$changeListener:Lkotlin/jvm/functions/Function1;

    iput p3, p0, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$3;->$identifier:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 23
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$3;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$3;->$display:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/RadioGroupText;->getChangeHandler()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$3;->$changeListener:Lkotlin/jvm/functions/Function1;

    iget v0, p0, Lcom/amazon/kindle/viewoptions/utils/AaSettingViewUtils$createViewForAaSettingDisplay$changeHandler$3;->$identifier:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
