.class public final Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "FfsDebugPageProvider.kt"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider;->context:Landroid/content/Context;

    return-void
.end method

.method private final setupToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 1

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ToggleButton;

    const-string p2, "button"

    .line 33
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Disable "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOn(Ljava/lang/CharSequence;)V

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Enable "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/ToggleButton;->setTextOff(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {p1, p4}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 36
    invoke-virtual {p1, p5}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "FFS Debug"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 7

    .line 20
    iget-object v0, p0, Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 21
    sget v1, Lcom/amazon/kindle/ffs/R$layout;->ffs_debug_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .line 23
    sget v3, Lcom/amazon/kindle/ffs/R$id;->ugs_mock:I

    .line 24
    sget-object v1, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->INSTANCE:Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;

    invoke-virtual {v1}, Lcom/amazon/kindle/ffs/utils/DevelopmentUtils;->isUgsMockingEnabled()Z

    move-result v5

    .line 25
    sget-object v6, Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider$getView$1;->INSTANCE:Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider$getView$1;

    const-string v4, "UGS mocking"

    move-object v1, p0

    move-object v2, v0

    .line 23
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/ffs/utils/FfsDebugPageProvider;->setupToggleButton(Landroid/view/ViewGroup;ILjava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-object v0

    .line 21
    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
