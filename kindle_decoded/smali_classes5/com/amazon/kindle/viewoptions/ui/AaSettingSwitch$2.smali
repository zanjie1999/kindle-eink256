.class final Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch$2;
.super Ljava/lang/Object;
.source "AaSettingSwitch.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;ZLjava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 50
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->access$getSwitch$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;)Landroidx/appcompat/widget/SwitchCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;->access$updateSwitch(Lcom/amazon/kindle/viewoptions/ui/AaSettingSwitch;Z)V

    return-void
.end method
