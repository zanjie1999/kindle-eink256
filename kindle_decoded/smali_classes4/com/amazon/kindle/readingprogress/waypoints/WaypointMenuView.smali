.class public Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;
.super Landroid/widget/LinearLayout;
.source "WaypointMenuView.java"

# interfaces
.implements Lcom/amazon/kindle/readingprogress/waypoints/IWaypointMenuView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$WaypointExtendedAdapter;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private adapter:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$WaypointExtendedAdapter;

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private final handler:Landroid/os/Handler;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private waypointHeader:Landroid/widget/TextView;

.field private waypointList:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    const-class p1, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;

    invoke-static {p1}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->TAG:Ljava/lang/String;

    .line 51
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->handler:Landroid/os/Handler;

    .line 55
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->TAG:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;Lcom/amazon/kindle/krx/events/IMessageQueue;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->onColorModeChange(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    return-void
.end method

.method private buildWaypointAdapter()V
    .locals 3

    .line 92
    new-instance v0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$WaypointExtendedAdapter;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$layout;->bookmark_view_row:I

    invoke-direct {v0, p0, v1, v2}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$WaypointExtendedAdapter;-><init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->adapter:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$WaypointExtendedAdapter;

    .line 93
    new-instance v1, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$1;-><init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method private buildWaypointList()V
    .locals 3

    .line 101
    sget v0, Lcom/amazon/kindle/krl/R$id;->waypoint_view_header:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->waypointHeader:Landroid/widget/TextView;

    .line 102
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->waypoint_view_divider_text:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    sget v0, Lcom/amazon/kindle/krl/R$id;->waypoint_view_list:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->waypointList:Landroid/widget/ListView;

    .line 104
    iget-object v1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->adapter:Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$WaypointExtendedAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->waypointList:Landroid/widget/ListView;

    new-instance v1, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$2;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$2;-><init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->waypointList:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 138
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->waypointList:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->waypointList:Landroid/widget/ListView;

    sget v1, Lcom/amazon/kindle/krl/R$id;->waypoint_view_empty:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method private onColorModeChange(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 2

    .line 161
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 162
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->contextual_menu_down_center_bg_amazon_dark:I

    .line 163
    sget v0, Lcom/amazon/kindle/krl/R$color;->waypoint_view_highlight_dark:I

    .line 164
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->list_item_separator_dark:I

    goto :goto_0

    .line 166
    :cond_0
    sget p1, Lcom/amazon/kindle/krl/R$drawable;->contextual_menu_down_center_bg_amazon_light:I

    .line 167
    sget v0, Lcom/amazon/kindle/krl/R$color;->waypoint_view_highlight_light:I

    .line 168
    sget v1, Lcom/amazon/kindle/krl/R$drawable;->list_item_separator_light:I

    .line 171
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 172
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->waypointHeader:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 173
    sget p1, Lcom/amazon/kindle/krl/R$id;->bookmark_divider_line:I

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 174
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->waypointList:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 175
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->waypointList:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->waypoint_header_divider_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDividerHeight(I)V

    return-void
.end method


# virtual methods
.method public hide(Z)Z
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 191
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$anim;->fade_out:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    const/4 p1, 0x4

    .line 193
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isVisible()Z
    .locals 1

    .line 222
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onColorModeChangeEvent(Lcom/amazon/kindle/event/ColorModeChangeEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 144
    iget-object p1, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$3;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView$3;-><init>(Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 62
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->buildWaypointAdapter()V

    .line 70
    invoke-direct {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->buildWaypointList()V

    .line 72
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->onColorModeChange(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    const/4 v1, 0x0

    .line 74
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 75
    iput-object v0, p0, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method

.method public setContainer(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)V
    .locals 0

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 80
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    const/high16 p1, 0x40000

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x60000

    .line 84
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    :goto_0
    return-void
.end method

.method public show(Z)Z
    .locals 2

    .line 208
    invoke-virtual {p0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->isVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 210
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$anim;->fade_in:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 213
    :cond_0
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointMenuView;->setVisibility(I)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
