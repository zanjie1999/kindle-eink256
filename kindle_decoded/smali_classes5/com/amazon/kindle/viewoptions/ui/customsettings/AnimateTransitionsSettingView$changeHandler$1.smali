.class final Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$changeHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AnimateTransitionsSettingView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function2;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $toggleUpdateHandler:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$changeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$changeHandler$1;->$toggleUpdateHandler:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 28
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$changeHandler$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$changeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->access$getSeekBarView$p(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 209
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$changeHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;

    invoke-static {v0, p1}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->access$updateButtonState(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;Z)V

    .line 210
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$changeHandler$1;->$toggleUpdateHandler:Lkotlin/jvm/functions/Function1;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
