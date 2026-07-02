.class public final Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "AaSettingsTabFragment.kt"

# interfaces
.implements Lcom/amazon/kindle/krx/viewoptions/AaSettingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAaSettingsTabFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AaSettingsTabFragment.kt\ncom/amazon/kindle/viewoptions/AaSettingsTabFragment$onViewCreated$2\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,219:1\n181#2,2:220\n181#2,2:222\n*E\n*S KotlinDebug\n*F\n+ 1 AaSettingsTabFragment.kt\ncom/amazon/kindle/viewoptions/AaSettingsTabFragment$onViewCreated$2\n*L\n114#1,2:220\n119#1,2:222\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$onViewCreated$2;->this$0:Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refreshSettings(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V
    .locals 5

    const-string/jumbo v0, "updatedSetting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$onViewCreated$2;->this$0:Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->access$getSettingViews$p(Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;)Ljava/util/Map;

    move-result-object v0

    .line 220
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 115
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getIdentifier()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getIdentifier()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 116
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    check-cast v2, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;->refreshSetting(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    goto :goto_0

    .line 119
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment$onViewCreated$2;->this$0:Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;->access$getSettingDisabledViews$p(Lcom/amazon/kindle/viewoptions/AaSettingsTabFragment;)Ljava/util/Map;

    move-result-object v0

    .line 222
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 120
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getIdentifier()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/viewoptions/AaSetting;

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/viewoptions/AaSetting;->getIdentifier()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 121
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;

    if-nez v3, :cond_4

    move-object v1, v2

    :cond_4
    check-cast v1, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingsView;->refreshSetting(Lcom/amazon/kindle/krx/viewoptions/AaSetting;)V

    goto :goto_2

    :cond_5
    return-void
.end method
