.class final Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$2;
.super Lkotlin/jvm/internal/Lambda;
.source "DiscoveryBottomSheetActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity;->showBottomsheet()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$2;

    invoke-direct {v0}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$2;->INSTANCE:Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$2;

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

    .line 34
    check-cast p1, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheetActivity$showBottomsheet$2;->invoke(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/amazon/kindle/ffs/view/starting/DiscoveryBottomSheet;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
