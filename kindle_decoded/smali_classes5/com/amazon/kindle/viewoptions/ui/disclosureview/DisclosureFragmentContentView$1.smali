.class public final Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$1;
.super Ljava/lang/Object;
.source "DisclosureFragmentContentView.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;-><init>(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDisclosureFragmentContentView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisclosureFragmentContentView.kt\ncom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$1\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,115:1\n181#2,2:116\n*E\n*S KotlinDebug\n*F\n+ 1 DisclosureFragmentContentView.kt\ncom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$1\n*L\n39#1,2:116\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSettings(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V
    .locals 4

    const-string/jumbo v0, "updatedSetting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->access$getSettingViews$p(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;)Ljava/util/Map;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 40
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getIdentifier()I

    move-result v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    invoke-virtual {v3}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getIdentifier()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 41
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;

    if-nez v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    check-cast v2, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;

    if-eqz v2, :cond_2

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;->refreshSetting(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    .line 45
    :cond_2
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    invoke-static {v2, v1}, Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;->access$updateSettingViewVisibility(Lcom/amazon/kindle/viewoptions/ui/disclosureview/DisclosureFragmentContentView;Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    goto :goto_0

    :cond_3
    return-void
.end method
