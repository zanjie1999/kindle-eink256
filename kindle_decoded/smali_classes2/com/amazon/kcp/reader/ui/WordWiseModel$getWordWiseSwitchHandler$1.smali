.class final Lcom/amazon/kcp/reader/ui/WordWiseModel$getWordWiseSwitchHandler$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WordWiseModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseModel;->getWordWiseSwitchHandler()Lkotlin/jvm/functions/Function1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/WordWiseModel;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseModel;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$getWordWiseSwitchHandler$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseModel;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 18
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseModel$getWordWiseSwitchHandler$1;->invoke(Z)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Z)V
    .locals 7

    .line 28
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$getWordWiseSwitchHandler$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseModel;

    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->access$updateWordWiseSwitchValue(Lcom/amazon/kcp/reader/ui/WordWiseModel;Z)V

    .line 29
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseModel$getWordWiseSwitchHandler$1;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseModel;

    sget-object v2, Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;->SHOW_WORD_WISE:Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;

    xor-int/lit8 v3, p1, 0x1

    sget-object v5, Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;->USER_AA:Lcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;

    const/4 v6, 0x0

    move v4, p1

    invoke-static/range {v1 .. v6}, Lcom/amazon/kcp/reader/ui/WordWiseModel;->access$reportMetricsForSwitch(Lcom/amazon/kcp/reader/ui/WordWiseModel;Lcom/amazon/kindle/krx/viewoptions/AaSettingIdentifier;ZZLcom/amazon/kcp/util/fastmetrics/InBookAaMenuFastMetrics$Modifier;I)V

    return-void
.end method
