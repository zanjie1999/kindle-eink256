.class final Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$generateSettingViews$settingView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DisclosureFragmentContentView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->generateSettingViews(Ljava/util/List;)V
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
.field final synthetic $setting:Lcom/amazon/kindle/krx/viewoptions/AaSetting;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$generateSettingViews$settingView$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$generateSettingViews$settingView$1;->$setting:Lcom/amazon/kindle/krx/viewoptions/AaSetting;

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

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$generateSettingViews$settingView$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 1

    .line 79
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$generateSettingViews$settingView$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$generateSettingViews$settingView$1;->$setting:Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    invoke-virtual {v0}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getIdentifier()I

    move-result v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->access$changeListener(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;I)V

    return-void
.end method
