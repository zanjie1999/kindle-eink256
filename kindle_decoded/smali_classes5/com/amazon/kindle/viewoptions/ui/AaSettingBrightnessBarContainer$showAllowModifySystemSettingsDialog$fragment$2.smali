.class final Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$showAllowModifySystemSettingsDialog$fragment$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AaSettingBrightnessBarContainer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->showAllowModifySystemSettingsDialog()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $dialogShownTimes:I

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;I)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$showAllowModifySystemSettingsDialog$fragment$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    iput p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$showAllowModifySystemSettingsDialog$fragment$2;->$dialogShownTimes:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$showAllowModifySystemSettingsDialog$fragment$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 253
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$showAllowModifySystemSettingsDialog$fragment$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$showAllowModifySystemSettingsDialog$fragment$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getSHARED_PREF_AA_MENU$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 254
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 255
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$showAllowModifySystemSettingsDialog$fragment$2;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;

    invoke-static {v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;->access$getTIMES_MODIFY_SETTINGS_DIALOG_SHOWN_KEY$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBrightnessBarContainer$showAllowModifySystemSettingsDialog$fragment$2;->$dialogShownTimes:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 256
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
