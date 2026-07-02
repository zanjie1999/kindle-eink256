.class public final Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetUtil;
.super Ljava/lang/Object;
.source "BottomSheetUtil.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetUtil;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetUtil;-><init>()V

    sput-object v0, Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetUtil;->INSTANCE:Lcom/amazon/kindle/krx/ui/bottomsheet/BottomSheetUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final deregisterActivity(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    const-class v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenterActivityRegistry;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenterActivityRegistry;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenterActivityRegistry;->deregisterActivity(Landroidx/fragment/app/FragmentActivity;)V

    :cond_0
    return-void
.end method

.method public static final registerActivity(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    const-class v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenterActivityRegistry;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenterActivityRegistry;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/bottomsheet/BottomSheetPresenterActivityRegistry;->registerActivity(Landroidx/fragment/app/FragmentActivity;I)V

    :cond_0
    return-void
.end method
