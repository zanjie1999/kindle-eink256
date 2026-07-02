.class final Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$createListAdapter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WiFiListBottomSheet.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;->createListAdapter(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Lcom/amazon/kindle/ffs/view/wifilist/WifiListItemAdapter;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWiFiListBottomSheet.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WiFiListBottomSheet.kt\ncom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$createListAdapter$1\n*L\n1#1,470:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $clickHandler:Lkotlin/jvm/functions/Function1;

.field final synthetic this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$createListAdapter$1;->this$0:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;

    iput-object p2, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$createListAdapter$1;->$clickHandler:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 44
    check-cast p1, Lcom/amazon/kindle/ffs/model/WifiNetwork;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$createListAdapter$1;->invoke(Lcom/amazon/kindle/ffs/model/WifiNetwork;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/ffs/model/WifiNetwork;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 325
    iget-object v0, p0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet$createListAdapter$1;->$clickHandler:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
