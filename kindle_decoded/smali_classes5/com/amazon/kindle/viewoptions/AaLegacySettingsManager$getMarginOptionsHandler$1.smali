.class final Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getMarginOptionsHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AaLegacySettingsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getMarginOptionsHandler()Lkotlin/jvm/functions/Function1;
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

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getMarginOptionsHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

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

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getMarginOptionsHandler$1;->invoke(I)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 915
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getMarginOptionsHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getSettings$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->WIDE:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V

    goto :goto_0

    .line 914
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getMarginOptionsHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getSettings$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->NARROW:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V

    goto :goto_0

    .line 913
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getMarginOptionsHandler$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->access$getSettings$p(Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;)Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->NONE:Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V

    :goto_0
    return-void
.end method
