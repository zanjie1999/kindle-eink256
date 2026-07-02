.class public final Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "ReaderSyncCxDebugMenuPageProvider.kt"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;->context:Landroid/content/Context;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;)Landroid/content/Context;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;->context:Landroid/content/Context;

    return-object p0
.end method

.method private final configureLibraryRecencySyncOption(Landroid/view/ViewGroup;)V
    .locals 1

    .line 41
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_library_recency_sync:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "viewGroup.findViewById(R\u2026ble_library_recency_sync)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/CheckBox;

    .line 42
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isRecencySyncEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 43
    new-instance v0, Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider$configureLibraryRecencySyncOption$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider$configureLibraryRecencySyncOption$1;-><init>(Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final configureMrprBottomSheetOption(Landroid/view/ViewGroup;)V
    .locals 1

    .line 35
    sget v0, Lcom/amazon/kindle/krl/R$id;->enable_mrpr_bottom_sheet:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string/jumbo v0, "viewGroup.findViewById(R\u2026enable_mrpr_bottom_sheet)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/CheckBox;

    .line 36
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isMrprBottomSheetEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 37
    new-instance v0, Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider$configureMrprBottomSheetOption$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider$configureMrprBottomSheetOption$1;-><init>(Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Reader Sync CX Debug Menu"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "LayoutInflater.from(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    sget v1, Lcom/amazon/kindle/krl/R$layout;->debug_reader_sync_cx:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Landroid/view/ViewGroup;

    .line 27
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;->configureMrprBottomSheetOption(Landroid/view/ViewGroup;)V

    .line 28
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/ReaderSyncCxDebugMenuPageProvider;->configureLibraryRecencySyncOption(Landroid/view/ViewGroup;)V

    return-object v0

    .line 25
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
