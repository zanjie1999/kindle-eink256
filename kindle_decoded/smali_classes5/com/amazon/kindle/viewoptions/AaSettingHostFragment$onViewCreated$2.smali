.class public final Lcom/amazon/kindle/viewoptions/AaSettingHostFragment$onViewCreated$2;
.super Ljava/lang/Object;
.source "AaSettingHostFragment.kt"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment$onViewCreated$2;->this$0:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 55
    sget-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getLastTabSelected()I

    move-result v0

    .line 56
    sget-object v1, Lcom/amazon/kindle/viewoptions/AaSettingManager;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->setLastTabSelected(I)V

    .line 59
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment$onViewCreated$2;->this$0:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->access$getAaThemesManager$p(Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;)Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->removeDeletedThemes()V

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment$onViewCreated$2;->this$0:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->performanceStringForPosition(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment$onViewCreated$2;->this$0:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    invoke-static {v0, p1}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->access$setPerformanceMeasureTab$p(Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 65
    invoke-static {p1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
