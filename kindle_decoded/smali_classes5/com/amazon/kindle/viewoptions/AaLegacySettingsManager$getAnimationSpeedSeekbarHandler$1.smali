.class final Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getAnimationSpeedSeekbarHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AaLegacySettingsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getAnimationSpeedSeekbarHandler()Lkotlin/jvm/functions/Function2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getAnimationSpeedSeekbarHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 70
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getAnimationSpeedSeekbarHandler$1;->invoke(IZ)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(IZ)V
    .locals 0

    .line 765
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getAnimationSpeedSeekbarHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {p2}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getSettings$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/amazon/kcp/application/UserSettingsController;->setGuidedViewTransitionIndex(I)V

    return-void
.end method
