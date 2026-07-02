.class final Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WiFiListBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;-><init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/ffs/model/WifiNetwork;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lcom/amazon/kindle/ffs/model/WifiNetwork;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$1;->invoke(Lcom/amazon/kindle/ffs/model/WifiNetwork;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/ffs/model/WifiNetwork;)V
    .locals 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;

    invoke-static {v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->access$getLogger$p(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheetKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "knownNetworkClicked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;

    invoke-static {v0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->access$knownNetworkClicked(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;Lcom/amazon/kindle/ffs/model/WifiNetwork;)V

    return-void
.end method
