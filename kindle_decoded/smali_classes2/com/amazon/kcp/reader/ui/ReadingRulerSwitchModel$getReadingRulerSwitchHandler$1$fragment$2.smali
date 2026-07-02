.class final Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ReadingRulerSwitchModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;->invoke(Z)V
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
.field final synthetic $activity:Lcom/amazon/kcp/reader/ReaderActivity;

.field final synthetic $settings:Lcom/amazon/kcp/application/UserSettingsController;

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;Lcom/amazon/kcp/application/UserSettingsController;Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$2;->this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$2;->$settings:Lcom/amazon/kcp/application/UserSettingsController;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$2;->$activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$2;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$2;->$settings:Lcom/amazon/kcp/application/UserSettingsController;

    const-string v1, "settings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setReadingRulerEnabled(Z)V

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$2;->this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;->this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;

    invoke-static {v0, v1}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;->access$updateState(Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;Z)V

    .line 44
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$2;->$activity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v2, Lcom/amazon/kindle/readingruler/R$id;->aa_menu_v2_reading_ruler_toggle:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SwitchCompat;

    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    :cond_0
    return-void
.end method
