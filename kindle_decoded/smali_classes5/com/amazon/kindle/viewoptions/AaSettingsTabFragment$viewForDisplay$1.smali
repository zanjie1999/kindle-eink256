.class final Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$viewForDisplay$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AaSettingsTabFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->viewForDisplay(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;ILandroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;",
        "Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $display:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

.field final synthetic $tabTitle:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$viewForDisplay$1;->$display:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$viewForDisplay$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$viewForDisplay$1;->$tabTitle:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;)Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$viewForDisplay$1;->$display:Lcom/amazon/kindle/krx/viewoptions/settingdisplay/AaSettingDisplay;

    check-cast v0, Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$viewForDisplay$1;->$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$viewForDisplay$1;->$tabTitle:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p1, v3}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentKt;->fragmentForDisclosure(Lcom/amazon/kindle/krx/viewoptions/settingdisplay/Disclosure;Landroid/content/Context;Ljava/lang/CharSequence;Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment$DisclosureFragmentDelegate;)Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$viewForDisplay$1;->invoke(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;)Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragment;

    move-result-object p1

    return-object p1
.end method
