.class final Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$1;
.super Lkotlin/jvm/internal/Lambda;
.source "WiFiListActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity;->showBottomsheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$1;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$1;->INSTANCE:Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 41
    check-cast p1, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/wifilist/WiFiListActivity$showBottomsheet$1;->invoke(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/ffs/view/wifilist/WiFiListBottomSheet;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
