.class public abstract Lcom/amazon/kindle/panels/TOCTreeViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "TOCTreeViewAdapter.java"

# interfaces
.implements Landroid/widget/ListAdapter;


# instance fields
.field protected final activity:Lcom/amazon/kcp/reader/ReaderActivity;

.field protected currentSelectedPosition:I

.field protected currentlyReadPosition:I

.field protected currentlyReadTitle:Ljava/lang/String;

.field protected doc:Lcom/amazon/android/docviewer/KindleDoc;

.field protected docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field protected final navigateClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 65
    new-instance v0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter$1;-><init>(Lcom/amazon/kindle/panels/TOCTreeViewAdapter;)V

    iput-object v0, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->navigateClickListener:Landroid/view/View$OnClickListener;

    .line 47
    iput-object p1, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 48
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 49
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->doc:Lcom/amazon/android/docviewer/KindleDoc;

    return-void
.end method


# virtual methods
.method public notifyDataSetChanged()V
    .locals 1

    .line 171
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 172
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->updateSelectedPosition()V

    :cond_0
    return-void
.end method

.method public setCurrReadPosition(I)V
    .locals 0

    .line 53
    iput p1, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->currentlyReadPosition:I

    return-void
.end method

.method public setCurrReadTitle(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->currentlyReadTitle:Ljava/lang/String;

    return-void
.end method

.method protected setSafeInsets(Landroid/view/View;)V
    .locals 5

    .line 134
    new-instance v0, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {v0}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>()V

    .line 135
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/amazon/kindle/panels/TOCTreeViewAdapter;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 140
    new-instance v0, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v2

    .line 141
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    .line 142
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v4

    .line 143
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v1

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>(IIII)V

    .line 147
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/DeviceUtils;->getSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v1

    .line 148
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 152
    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v1

    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v0

    add-int/2addr v1, v0

    .line 153
    invoke-static {p1, v1}, Lcom/amazon/kcp/util/ViewUtils;->adjustRightPadding(Landroid/view/View;I)V

    goto :goto_1

    .line 156
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 157
    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v0

    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v1

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v0

    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 161
    invoke-static {p1, v0}, Lcom/amazon/kcp/util/ViewUtils;->adjustStartPadding(Landroid/view/View;I)V

    :goto_1
    return-void
.end method

.method protected abstract updateSelectedPosition()V
.end method
