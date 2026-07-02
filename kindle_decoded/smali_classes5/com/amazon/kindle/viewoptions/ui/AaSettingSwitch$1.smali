.class final Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch$1;
.super Ljava/lang/Object;
.source "AaSettingSwitch.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $changeHandler:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch$1;->$changeHandler:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->access$getSwitch$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string/jumbo v0, "theme_change"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch$1;->$changeHandler:Lkotlin/jvm/functions/Function1;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->access$getSwitch$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object p1

    const-string p2, "default"

    invoke-virtual {p1, p2}, Landroid/widget/CompoundButton;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
