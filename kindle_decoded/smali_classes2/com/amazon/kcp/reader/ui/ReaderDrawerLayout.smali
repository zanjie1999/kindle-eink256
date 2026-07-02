.class public Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;
.super Landroidx/drawerlayout/widget/DrawerLayout;
.source "ReaderDrawerLayout.java"


# instance fields
.field private drawerGravity:I

.field private initialTOCPanelWidth:I

.field private final insetListener:Landroidx/core/view/OnApplyWindowInsetsListener;

.field private insets:Landroid/graphics/Rect;

.field private isChromeVisible:Z

.field private lastRightInset:I

.field private lastStartInset:I

.field private tocPanel:Landroid/view/ViewGroup;

.field private toolbar:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 36
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->insets:Landroid/graphics/Rect;

    const p1, 0x800003

    .line 44
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->drawerGravity:I

    .line 46
    new-instance p1, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout$1;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->insetListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    .line 61
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 62
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x800005

    .line 63
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->drawerGravity:I

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->insets:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustTOCPanelForInsets()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustToolbarForInsets()V

    return-void
.end method

.method private adjustPanelHeadLayout()V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->insets:Landroid/graphics/Rect;

    .line 242
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/util/DeviceUtils;->getSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v1

    .line 245
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 247
    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v1

    if-eqz v0, :cond_0

    .line 248
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 249
    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    .line 252
    :cond_0
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->lastRightInset:I

    sub-int v0, v1, v0

    .line 256
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isShown()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    sget v2, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_custom_items:I

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustViewGroupRightPadding(II)V

    goto :goto_0

    .line 259
    :cond_1
    sget v2, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_custom_items:I

    invoke-direct {p0, v2, v1}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustViewGroupRightPadding(II)V

    :goto_0
    if-eqz v0, :cond_2

    .line 264
    sget v2, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_book_info:I

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustViewRightPadding(II)V

    .line 265
    sget v2, Lcom/amazon/kindle/krl/R$id;->reader_drawer_toc_subhead:I

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustViewRightPadding(II)V

    .line 266
    sget v2, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_library:I

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustViewRightPadding(II)V

    .line 268
    :cond_2
    iput v1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->lastRightInset:I

    goto :goto_4

    .line 270
    :cond_3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    .line 279
    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v1

    if-eqz v0, :cond_5

    .line 280
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 281
    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    add-int/2addr v1, v0

    goto :goto_2

    .line 272
    :cond_4
    invoke-virtual {v1}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v1

    if-eqz v0, :cond_5

    .line 273
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 274
    iget v0, v0, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 285
    :cond_5
    :goto_2
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->lastStartInset:I

    sub-int v0, v1, v0

    .line 289
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->isShown()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 290
    sget v2, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_custom_items:I

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustViewGroupStartPadding(II)V

    goto :goto_3

    .line 292
    :cond_6
    sget v2, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_custom_items:I

    invoke-direct {p0, v2, v1}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustViewGroupStartPadding(II)V

    :goto_3
    if-eqz v0, :cond_7

    .line 296
    sget v2, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_book_info:I

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustViewStartPadding(II)V

    .line 297
    sget v2, Lcom/amazon/kindle/krl/R$id;->reader_drawer_toc_subhead:I

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustViewStartPadding(II)V

    .line 298
    sget v2, Lcom/amazon/kindle/krl/R$id;->reader_nav_panel_library:I

    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustViewStartPadding(II)V

    .line 300
    :cond_7
    iput v1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->lastStartInset:I

    :goto_4
    return-void
.end method

.method private adjustTOCPanelForInsets()V
    .locals 8

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->insets:Landroid/graphics/Rect;

    if-eqz v0, :cond_a

    .line 200
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto/16 :goto_7

    .line 204
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v1

    .line 206
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 210
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    iget-boolean v5, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->isChromeVisible:Z

    if-eqz v5, :cond_1

    iget v5, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    .line 212
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v6

    iget-boolean v7, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->isChromeVisible:Z

    if-eqz v7, :cond_2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 210
    :cond_2
    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_4

    :cond_3
    if-eqz v1, :cond_4

    .line 217
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    goto :goto_1

    :cond_4
    iget v2, v0, Landroid/graphics/Rect;->left:I

    :goto_1
    if-eqz v1, :cond_5

    .line 218
    iget v4, v0, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_5
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v4

    .line 219
    :goto_2
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    iget-boolean v6, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->isChromeVisible:Z

    if-eqz v6, :cond_6

    iget v6, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    iget-boolean v7, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->isChromeVisible:Z

    if-eqz v7, :cond_7

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_7
    invoke-virtual {v5, v2, v6, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 225
    :goto_4
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/debug/INeutronUtil;->isNewtronTOCEnabled()Z

    move-result v2

    if-nez v2, :cond_a

    .line 227
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    .line 228
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kcp/util/DeviceUtils;->getSafeInsets(Landroid/content/Context;)Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v3

    if-eqz v1, :cond_8

    .line 230
    iget v1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->initialTOCPanelWidth:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v0

    invoke-virtual {v3}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_6

    .line 232
    :cond_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_9

    invoke-virtual {v3}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result v1

    goto :goto_5

    :cond_9
    invoke-virtual {v3}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result v1

    .line 233
    :goto_5
    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->initialTOCPanelWidth:I

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v0

    add-int/2addr v3, v1

    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 236
    :goto_6
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    :goto_7
    return-void
.end method

.method private adjustToolbarForInsets()V
    .locals 6

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->insets:Landroid/graphics/Rect;

    if-eqz v0, :cond_1

    .line 184
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->toolbar:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->toolbar:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->toolbar:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPadding(IIII)V

    .line 192
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->toolbar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 194
    iget v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v4, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->toolbar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private adjustViewGroupRightPadding(II)V
    .locals 3

    if-eqz p2, :cond_0

    .line 357
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 359
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 361
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 362
    invoke-static {v2, p2}, Lcom/amazon/kcp/util/ViewUtils;->adjustRightPadding(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private adjustViewGroupStartPadding(II)V
    .locals 3

    if-eqz p2, :cond_0

    .line 327
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    .line 329
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 331
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 332
    invoke-static {v2, p2}, Lcom/amazon/kcp/util/ViewUtils;->adjustStartPadding(Landroid/view/View;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private adjustViewRightPadding(II)V
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 346
    invoke-static {p1, p2}, Lcom/amazon/kcp/util/ViewUtils;->adjustRightPadding(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private adjustViewStartPadding(II)V
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 314
    invoke-static {p1, p2}, Lcom/amazon/kcp/util/ViewUtils;->adjustStartPadding(Landroid/view/View;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 171
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNewtronTOCEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    .line 173
    iget v1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->drawerGravity:I

    invoke-virtual {p0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    return-void

    .line 179
    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    .line 128
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->insets:Landroid/graphics/Rect;

    .line 129
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustTOCPanelForInsets()V

    .line 130
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustToolbarForInsets()V

    .line 131
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 94
    invoke-super {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->onAttachedToWindow()V

    .line 95
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 136
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const/4 p1, 0x0

    .line 137
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->insets:Landroid/graphics/Rect;

    .line 138
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustTOCPanelForInsets()V

    .line 139
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustToolbarForInsets()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 100
    invoke-super {p0}, Landroidx/drawerlayout/widget/DrawerLayout;->onDetachedFromWindow()V

    .line 101
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 69
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 70
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNewtronTOCEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    sget v0, Lcom/amazon/kindle/krl/R$id;->toc_component_container:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    goto :goto_0

    .line 73
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_left_panel:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->drawerGravity:I

    iput v1, v0, Landroidx/drawerlayout/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->initialTOCPanelWidth:I

    .line 79
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->insets:Landroid/graphics/Rect;

    .line 81
    sget v0, Lcom/amazon/kindle/krl/R$id;->book_toolbar:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->toolbar:Landroid/view/View;

    .line 84
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 85
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustTOCPanelForInsets()V

    .line 86
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustToolbarForInsets()V

    .line 88
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 89
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 144
    invoke-super/range {p0 .. p5}, Landroidx/drawerlayout/widget/DrawerLayout;->onLayout(ZIIII)V

    .line 145
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/INeutronUtil;->isNewtronTOCEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 146
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->tocPanel:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isShown()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustPanelHeadLayout()V

    :cond_0
    return-void
.end method

.method public onReaderLayoutEvent(Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 106
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->getPublisher()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout$2;->$SwitchMap$com$amazon$kcp$reader$ui$ReaderLayoutEvent$EventType:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->getEventType()Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    goto :goto_0

    .line 116
    :cond_1
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->isChromeVisible:Z

    .line 117
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustTOCPanelForInsets()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 111
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->isChromeVisible:Z

    .line 112
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustTOCPanelForInsets()V

    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 160
    invoke-super {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 161
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->drawerGravity:I

    invoke-virtual {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 164
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class v0, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/reader/TableOfContentsEvent;

    sget-object v1, Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;->STATE_CHANGED:Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/TableOfContentsEvent;-><init>(Lcom/amazon/kcp/reader/TableOfContentsEvent$Type;)V

    .line 165
    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method

.method public openDrawer(I)V
    .locals 0

    .line 154
    invoke-super {p0, p1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 155
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderDrawerLayout;->adjustPanelHeadLayout()V

    return-void
.end method
