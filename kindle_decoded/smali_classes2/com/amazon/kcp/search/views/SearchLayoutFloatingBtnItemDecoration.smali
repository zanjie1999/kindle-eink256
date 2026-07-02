.class public Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SearchLayoutFloatingBtnItemDecoration.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$ShakeSensorEventListener;,
        Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$FloatingBtnTouchListener;
    }
.end annotation


# instance fields
.field private bottomMostVisibleChildPosition:I

.field private final buttonHeight:I

.field private buttonPositionLeft:I

.field private buttonPositionTop:I

.field private final buttonWidth:I

.field private final context:Landroid/content/Context;

.field private floatingBtn:Landroid/widget/Button;

.field private final layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private final parent:Landroidx/recyclerview/widget/RecyclerView;

.field private final parentAdapter:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

.field private shakeSensorEventListener:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$ShakeSensorEventListener;

.field private showDecoration:Z

.field private topMostVisibleChildPosition:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 46
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    .line 49
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parentAdapter:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    .line 50
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    instance-of v0, v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    :cond_1
    iput-object v1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->context:Landroid/content/Context;

    .line 52
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->setUpFloatingBtn()V

    .line 54
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->floatingBtn:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/Button;->measure(II)V

    .line 55
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->floatingBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonHeight:I

    .line 56
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->floatingBtn:Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/widget/Button;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonWidth:I

    .line 60
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isSpokenFeedbackAccessibilityServiceEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 61
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->registerShakeSensorEventListener()V

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->context:Landroid/content/Context;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 66
    new-instance v0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$1;-><init>(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)V

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityManager;->addAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->registerShakeSensorEventListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->unregisterShakeSensorEventListener()V

    return-void
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)Z
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->shouldGestureControlBeAvailable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)Landroid/content/Context;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)Landroid/widget/Button;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->floatingBtn:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->showDecoration:Z

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonPositionLeft:I

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonWidth:I

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonPositionTop:I

    return p0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonHeight:I

    return p0
.end method

.method private measureAndLayoutView()V
    .locals 5

    .line 204
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget v1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonWidth:I

    iget v2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonHeight:I

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 205
    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->floatingBtn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->floatingBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonHeight:I

    .line 207
    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 206
    invoke-virtual {v0, v1, v2}, Landroid/widget/Button;->measure(II)V

    .line 208
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->floatingBtn:Landroid/widget/Button;

    iget v1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonPositionLeft:I

    iget v2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonHeight:I

    const/4 v3, 0x0

    rsub-int/lit8 v2, v2, 0x0

    iget v4, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonWidth:I

    add-int/2addr v4, v1

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/widget/Button;->layout(IIII)V

    return-void
.end method

.method private registerShakeSensorEventListener()V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/4 v1, 0x1

    .line 186
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 188
    iget-object v2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->shakeSensorEventListener:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$ShakeSensorEventListener;

    if-nez v2, :cond_0

    new-instance v2, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$ShakeSensorEventListener;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$ShakeSensorEventListener;-><init>(Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;)V

    :cond_0
    iput-object v2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->shakeSensorEventListener:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$ShakeSensorEventListener;

    const/4 v3, 0x3

    .line 189
    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    return-void
.end method

.method private setUpFloatingBtn()V
    .locals 4

    .line 118
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kcp/search/R$layout;->search_floating_button:I

    iget-object v2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->floatingBtn:Landroid/widget/Button;

    .line 119
    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kcp/search/R$string;->wayfinder_floating_button:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->floatingBtn:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private shouldDrawFloatingBtn()Z
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parentAdapter:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->context:Landroid/content/Context;

    instance-of v2, v0, Landroid/app/Activity;

    if-eqz v2, :cond_0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->isSoftKeyboardOpen(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->updateTopAndBottomVisibleChildPositions()V

    .line 151
    iget v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->topMostVisibleChildPosition:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    iget v3, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->bottomMostVisibleChildPosition:I

    if-ne v3, v2, :cond_1

    goto :goto_0

    .line 154
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parentAdapter:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    invoke-virtual {v2, v0}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->isLibraryContainer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parentAdapter:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    iget v2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->bottomMostVisibleChildPosition:I

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->isLibraryContainer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private shouldGestureControlBeAvailable()Z
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parentAdapter:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    if-nez v0, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->updateTopAndBottomVisibleChildPositions()V

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parentAdapter:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    iget v2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->topMostVisibleChildPosition:I

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->isLibraryContainer(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parentAdapter:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    iget v2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->bottomMostVisibleChildPosition:I

    .line 177
    invoke-virtual {v0, v2}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->isLibraryContainer(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parentAdapter:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    iget-object v2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->layoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 178
    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->isItemInStoreResultSection(I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method

.method private unregisterShakeSensorEventListener()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->context:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 198
    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->shakeSensorEventListener:Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration$ShakeSensorEventListener;

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method private updateTopAndBottomVisibleChildPositions()V
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 130
    :cond_0
    iget-object v3, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->topMostVisibleChildPosition:I

    if-nez v1, :cond_1

    goto :goto_1

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->bottomMostVisibleChildPosition:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 106
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parentAdapter:Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {p1}, Lcom/amazon/kcp/search/views/SearchResultsRecyclerAdapter;->collapseLibraryResults()V

    .line 111
    iget-object p1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->parent:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 113
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string v0, "SearchActivity"

    const-string v1, "LibrarySectionShowLessButtonClicked"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 82
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 84
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->shouldDrawFloatingBtn()Z

    move-result p3

    iput-boolean p3, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->showDecoration:Z

    if-nez p3, :cond_0

    return-void

    .line 89
    :cond_0
    iget-object p3, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/librarymodule/R$dimen;->search_element_spacing:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 90
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonPositionLeft:I

    .line 92
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result p2

    sub-int/2addr v0, p2

    iget p2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonHeight:I

    sub-int/2addr v0, p2

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonPositionTop:I

    .line 94
    invoke-direct {p0}, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->measureAndLayoutView()V

    .line 96
    iget p2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonPositionLeft:I

    int-to-float p2, p2

    iget p3, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->buttonPositionTop:I

    int-to-float p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 97
    iget-object p2, p0, Lcom/amazon/kcp/search/views/SearchLayoutFloatingBtnItemDecoration;->floatingBtn:Landroid/widget/Button;

    invoke-virtual {p2, p1}, Landroid/widget/Button;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
