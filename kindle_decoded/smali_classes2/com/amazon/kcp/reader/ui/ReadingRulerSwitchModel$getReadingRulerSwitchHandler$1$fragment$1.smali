.class final Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$1;
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
.field final synthetic $settings:Lcom/amazon/kcp/application/UserSettingsController;

.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;Lcom/amazon/kcp/application/UserSettingsController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$1;->this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$1;->$settings:Lcom/amazon/kcp/application/UserSettingsController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$1;->$settings:Lcom/amazon/kcp/application/UserSettingsController;

    const-string v1, "settings"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setReadingRulerEnabled(Z)V

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$1;->$settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/UserSettingsController;->setContinuousScrollReflowableEnabled(Z)V

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1$fragment$1;->this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel$getReadingRulerSwitchHandler$1;->this$0:Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;

    invoke-static {v0, v2}, Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;->access$updateState(Lcom/amazon/kcp/reader/ui/ReadingRulerSwitchModel;Z)V

    return-void
.end method
