.class public final Lcom/amazon/kcp/debug/CrashDebugPageProvider;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "CrashDebugPageProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/debug/CrashDebugPageProvider$Companion;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/debug/CrashDebugPageProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/debug/CrashDebugPageProvider$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 84
    const-class v0, Lcom/amazon/kcp/debug/CrashDebugPageProvider;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(CrashDebugPageProvider::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/debug/CrashDebugPageProvider;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/debug/CrashDebugPageProvider;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kcp/debug/CrashDebugPageProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private final setupForceAnrButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 78
    sget v0, Lcom/amazon/kindle/krl/R$id;->btn_force_anr:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sget-object v0, Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceAnrButton$1;->INSTANCE:Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceAnrButton$1;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setupForceCrashButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 38
    sget v0, Lcom/amazon/kindle/krl/R$id;->btn_force_crash:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sget-object v0, Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceCrashButton$1;->INSTANCE:Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceCrashButton$1;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final setupForceNativeCrashButton(Landroid/view/ViewGroup;)V
    .locals 1

    .line 59
    sget v0, Lcom/amazon/kindle/krl/R$id;->btn_force_native_crash:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    sget-object v0, Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceNativeCrashButton$1;->INSTANCE:Lcom/amazon/kcp/debug/CrashDebugPageProvider$setupForceNativeCrashButton$1;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Crashes and ANRs"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/debug/CrashDebugPageProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 24
    sget v1, Lcom/amazon/kindle/krl/R$layout;->crashes_and_anrs_debug_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .line 26
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/CrashDebugPageProvider;->setupForceCrashButton(Landroid/view/ViewGroup;)V

    .line 27
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/CrashDebugPageProvider;->setupForceNativeCrashButton(Landroid/view/ViewGroup;)V

    .line 28
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/CrashDebugPageProvider;->setupForceAnrButton(Landroid/view/ViewGroup;)V

    return-object v0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
