.class Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;
.super Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;
.source "DebugPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/debug/DebugPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PerfMarkersDebugMenuPage"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 678
    invoke-direct {p0}, Lcom/amazon/kindle/krx/debug/AbstractDebugMenuPage;-><init>()V

    .line 679
    iput-object p1, p0, Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;->context:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$600(Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;)Landroid/content/Context;
    .locals 0

    .line 673
    iget-object p0, p0, Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;->context:Landroid/content/Context;

    return-object p0
.end method

.method private configureLibraryItemMarkersOption(Landroid/view/ViewGroup;)V
    .locals 1

    .line 696
    sget v0, Lcom/amazon/kindle/krl/R$id;->library_item_markers:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    if-nez p1, :cond_0

    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/kcp/debug/DebugUtils;->areLibraryItemPerfMarkersEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 701
    new-instance v0, Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage$1;-><init>(Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "Perf Markers"

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 3

    .line 689
    iget-object v0, p0, Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 690
    sget v1, Lcom/amazon/kindle/krl/R$layout;->debug_perf_markers:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 691
    invoke-direct {p0, v0}, Lcom/amazon/kcp/debug/DebugPlugin$PerfMarkersDebugMenuPage;->configureLibraryItemMarkersOption(Landroid/view/ViewGroup;)V

    return-object v0
.end method
