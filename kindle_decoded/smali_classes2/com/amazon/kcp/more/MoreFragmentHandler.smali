.class public final Lcom/amazon/kcp/more/MoreFragmentHandler;
.super Ljava/lang/Object;
.source "MoreFragmentHandler.java"

# interfaces
.implements Lcom/amazon/kcp/library/fragments/IFragmentHandler;


# static fields
.field private static final LAYOUT_CONFIGURATION_FILE_NAME:Ljava/lang/String; = "more-screen.json"

.field private static final MORE_FRAGMENT:Ljava/lang/String; = "MoreFragmentHandler_MORE"


# instance fields
.field private final activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/kcp/more/MoreFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    .line 28
    invoke-static {p2}, Lcom/amazon/kcp/more/MoreContext;->setLibraryFragmentClient(Lcom/amazon/kcp/library/fragments/LibraryFragmentClient;)V

    return-void
.end method

.method private getFragment()Landroidx/fragment/app/Fragment;
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/more/MoreFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "MoreFragmentHandler_MORE"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hide(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/amazon/kcp/more/MoreFragmentHandler;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 55
    :cond_0
    const-class p1, Lcom/amazon/kcp/more/MoreFragmentHandler;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/util/MetricsUtils;->emitNullFragmentMetric(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public show(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 3

    .line 38
    invoke-direct {p0}, Lcom/amazon/kcp/more/MoreFragmentHandler;->getFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/amazon/kindle/setting/layout/LayoutUIBuilder;

    invoke-direct {v0}, Lcom/amazon/kindle/setting/layout/LayoutUIBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/kcp/more/MoreFragmentHandler;->activity:Landroidx/fragment/app/FragmentActivity;

    const-string v2, "more-screen.json"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/setting/layout/LayoutUIBuilder;->build(Landroid/content/Context;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    const-string v1, "MoreFragmentHandler_MORE"

    .line 42
    invoke-virtual {p2, p1, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 43
    invoke-static {v0}, Lcom/amazon/kcp/more/MoreContext;->setFragment(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p2, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    :goto_0
    return-void
.end method
