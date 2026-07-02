.class final Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getBackgroundColorHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AaLegacySettingsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getBackgroundColorHandler()Lkotlin/jvm/functions/Function1;
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
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getBackgroundColorHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getBackgroundColorHandler$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 4

    .line 875
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseThreeEnabled()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-eq p1, v1, :cond_0

    goto/16 :goto_0

    .line 880
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getBackgroundColorHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getSettings$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->BLACK:Lcom/amazon/kcp/reader/ui/ColorModeData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ColorModeData;->getColorId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    goto/16 :goto_0

    .line 879
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getBackgroundColorHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getSettings$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->GREEN:Lcom/amazon/kcp/reader/ui/ColorModeData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ColorModeData;->getColorId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    goto :goto_0

    .line 878
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getBackgroundColorHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getSettings$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->SEPIA:Lcom/amazon/kcp/reader/ui/ColorModeData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ColorModeData;->getColorId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    goto :goto_0

    .line 877
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getBackgroundColorHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getSettings$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->WHITE:Lcom/amazon/kcp/reader/ui/ColorModeData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ColorModeData;->getColorId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_7

    if-eq p1, v2, :cond_6

    if-eq p1, v1, :cond_5

    goto :goto_0

    .line 888
    :cond_5
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getBackgroundColorHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getSettings$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->GREEN:Lcom/amazon/kcp/reader/ui/ColorModeData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ColorModeData;->getColorId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    goto :goto_0

    .line 887
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getBackgroundColorHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getSettings$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->SEPIA:Lcom/amazon/kcp/reader/ui/ColorModeData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ColorModeData;->getColorId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    goto :goto_0

    .line 886
    :cond_7
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getBackgroundColorHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getSettings$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->BLACK:Lcom/amazon/kcp/reader/ui/ColorModeData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ColorModeData;->getColorId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    goto :goto_0

    .line 885
    :cond_8
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getBackgroundColorHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getSettings$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/reader/ui/ColorModeData;->WHITE:Lcom/amazon/kcp/reader/ui/ColorModeData;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ColorModeData;->getColorId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)V

    :goto_0
    return-void
.end method
