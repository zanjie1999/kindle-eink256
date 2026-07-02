.class public final Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$listener$1;
.super Ljava/lang/Object;
.source "AnimateTransitionsSettingView.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;ZLkotlin/jvm/functions/Function2;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $sliderUpdateHandler:Lkotlin/jvm/functions/Function2;

.field final synthetic $title:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 117
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$listener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$listener$1;->$sliderUpdateHandler:Lkotlin/jvm/functions/Function2;

    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$listener$1;->$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 121
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$listener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->access$getSeekBarView$p(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;)Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo p3, "theme_change"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 122
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$listener$1;->$sliderUpdateHandler:Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$listener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->access$isSeekBarOnScreen(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$listener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->access$getSeekBarView$p(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;)Landroid/widget/SeekBar;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$listener$1;->$title:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$listener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;

    invoke-static {p3}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->access$getSeekBarView$p(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;)Landroid/widget/SeekBar;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getProgress()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$listener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;->access$getSeekBarView$p(Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView;)Landroid/widget/SeekBar;

    move-result-object p1

    const-string p2, "default"

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 138
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/customsettings/AnimateTransitionsSettingView$listener$1;->$sliderUpdateHandler:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
