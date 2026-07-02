.class public Lcom/amazon/android/widget/CommandBar;
.super Landroid/widget/FrameLayout;
.source "CommandBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/widget/CommandBar$OnItemClickListener;,
        Lcom/amazon/android/widget/CommandBar$Position;
    }
.end annotation


# instance fields
.field private final actionViewItemClickListener:Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;

.field private itemClickListener:Lcom/amazon/android/widget/CommandBar$OnItemClickListener;

.field private layout:Lcom/amazon/android/widget/CommandActionView;

.field private final layouts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/widget/CommandBar$Position;",
            "Lcom/amazon/android/widget/CommandActionView;",
            ">;"
        }
    .end annotation
.end field

.field private popupButtonItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/android/widget/IInternalWidgetItem;",
            ">;"
        }
    .end annotation
.end field

.field private final positions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/widget/CommandActionView;",
            "Lcom/amazon/android/widget/CommandBar$Position;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/widget/CommandBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 110
    sget v0, Lcom/amazon/kindle/wl/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/android/widget/CommandBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/CommandBar;->layouts:Ljava/util/Map;

    .line 70
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/CommandBar;->positions:Ljava/util/Map;

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBar;->itemClickListener:Lcom/amazon/android/widget/CommandBar$OnItemClickListener;

    .line 76
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBar;->popupButtonItems:Ljava/util/List;

    .line 79
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBar;->layout:Lcom/amazon/android/widget/CommandActionView;

    .line 82
    new-instance p1, Lcom/amazon/android/widget/CommandBar$1;

    invoke-direct {p1, p0}, Lcom/amazon/android/widget/CommandBar$1;-><init>(Lcom/amazon/android/widget/CommandBar;)V

    iput-object p1, p0, Lcom/amazon/android/widget/CommandBar;->actionViewItemClickListener:Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;

    .line 115
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/android/widget/CommandBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 119
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/CommandBar;->layouts:Ljava/util/Map;

    .line 70
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/widget/CommandBar;->positions:Ljava/util/Map;

    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBar;->itemClickListener:Lcom/amazon/android/widget/CommandBar$OnItemClickListener;

    .line 76
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBar;->popupButtonItems:Ljava/util/List;

    .line 79
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBar;->layout:Lcom/amazon/android/widget/CommandActionView;

    .line 82
    new-instance p1, Lcom/amazon/android/widget/CommandBar$1;

    invoke-direct {p1, p0}, Lcom/amazon/android/widget/CommandBar$1;-><init>(Lcom/amazon/android/widget/CommandBar;)V

    iput-object p1, p0, Lcom/amazon/android/widget/CommandBar;->actionViewItemClickListener:Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;

    .line 120
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/android/widget/CommandBar;->init(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/widget/CommandBar;)Lcom/amazon/android/widget/CommandBar$OnItemClickListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/android/widget/CommandBar;->itemClickListener:Lcom/amazon/android/widget/CommandBar$OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/android/widget/CommandBar;)Lcom/amazon/android/widget/CommandActionView;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/android/widget/CommandBar;->layout:Lcom/amazon/android/widget/CommandActionView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/android/widget/CommandBar;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBar;->popupButtonItems:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/android/widget/CommandBar;)Ljava/util/Map;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/android/widget/CommandBar;->positions:Ljava/util/Map;

    return-object p0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    .line 125
    new-instance v0, Lcom/amazon/android/widget/CommandBarAttrs;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/amazon/android/widget/CommandBarAttrs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 127
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 128
    invoke-static {}, Lcom/amazon/android/widget/CommandBar$Position;->values()[Lcom/amazon/android/widget/CommandBar$Position;

    move-result-object p2

    array-length p3, p2

    const/4 p4, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_1

    aget-object v2, p2, v1

    .line 130
    sget v3, Lcom/amazon/kindle/wl/R$layout;->command_bar_internal_container:I

    invoke-virtual {p1, v3, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/amazon/android/widget/CommandActionView;

    iput-object v3, p0, Lcom/amazon/android/widget/CommandBar;->layout:Lcom/amazon/android/widget/CommandActionView;

    .line 131
    invoke-virtual {v3, v0}, Lcom/amazon/android/widget/CommandActionView;->setCommandBarAttrs(Lcom/amazon/android/widget/CommandBarAttrs;)V

    .line 132
    iget-object v3, p0, Lcom/amazon/android/widget/CommandBar;->layout:Lcom/amazon/android/widget/CommandActionView;

    invoke-virtual {v3, v2}, Lcom/amazon/android/widget/CommandActionView;->setPosition(Lcom/amazon/android/widget/CommandBar$Position;)V

    .line 133
    iget-object v3, p0, Lcom/amazon/android/widget/CommandBar;->layout:Lcom/amazon/android/widget/CommandActionView;

    sget-object v4, Lcom/amazon/android/widget/CommandBar$Position;->START:Lcom/amazon/android/widget/CommandBar$Position;

    invoke-virtual {v2, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/amazon/android/widget/CommandBarAttrs;->maxVisibleStartButtons:I

    goto :goto_1

    :cond_0
    iget v4, v0, Lcom/amazon/android/widget/CommandBarAttrs;->maxVisibleEndButtons:I

    :goto_1
    invoke-virtual {v3, v4}, Lcom/amazon/android/widget/CommandActionView;->setMaxVisibleButtons(I)V

    .line 134
    iget-object v3, p0, Lcom/amazon/android/widget/CommandBar;->layouts:Ljava/util/Map;

    iget-object v4, p0, Lcom/amazon/android/widget/CommandBar;->layout:Lcom/amazon/android/widget/CommandActionView;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    iget-object v3, p0, Lcom/amazon/android/widget/CommandBar;->positions:Ljava/util/Map;

    iget-object v4, p0, Lcom/amazon/android/widget/CommandBar;->layout:Lcom/amazon/android/widget/CommandActionView;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object v2, p0, Lcom/amazon/android/widget/CommandBar;->layout:Lcom/amazon/android/widget/CommandActionView;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getPopupButtonItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/android/widget/IInternalWidgetItem;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBar;->popupButtonItems:Ljava/util/List;

    return-object v0
.end method

.method public refreshIcon(Lcom/amazon/android/widget/CommandBar$Position;Lcom/amazon/android/widget/IWidgetItem;)V
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBar;->layouts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/widget/CommandActionView;

    .line 175
    invoke-virtual {p1, p2}, Lcom/amazon/android/widget/CommandActionView;->refreshIcon(Lcom/amazon/android/widget/IWidgetItem;)V

    return-void
.end method

.method public refreshIcons(Lcom/amazon/android/widget/CommandBar$Position;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBar;->layouts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/widget/CommandActionView;

    .line 163
    invoke-virtual {p1}, Lcom/amazon/android/widget/CommandActionView;->refreshIcons()V

    return-void
.end method

.method public setEnableTextWrapInPopup(Lcom/amazon/android/widget/CommandBar$Position;Z)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBar;->layouts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/widget/CommandActionView;

    .line 195
    invoke-virtual {p1, p2}, Lcom/amazon/android/widget/CommandActionView;->setEnableTextWrapInPopup(Z)V

    return-void
.end method

.method public setItems(Lcom/amazon/android/widget/WidgetItemGroup;Lcom/amazon/android/widget/CommandBar$Position;)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBar;->layouts:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/android/widget/CommandActionView;

    .line 148
    invoke-virtual {p2, p1}, Lcom/amazon/android/widget/CommandActionView;->setItemGroup(Lcom/amazon/android/widget/WidgetItemGroup;)V

    return-void
.end method

.method public setOnItemClickListener(Lcom/amazon/android/widget/CommandBar$OnItemClickListener;)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBar;->itemClickListener:Lcom/amazon/android/widget/CommandBar$OnItemClickListener;

    if-ne v0, p1, :cond_0

    return-void

    .line 213
    :cond_0
    iput-object p1, p0, Lcom/amazon/android/widget/CommandBar;->itemClickListener:Lcom/amazon/android/widget/CommandBar$OnItemClickListener;

    if-eqz p1, :cond_1

    .line 214
    iget-object p1, p0, Lcom/amazon/android/widget/CommandBar;->actionViewItemClickListener:Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 216
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBar;->layouts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/android/widget/CommandActionView;

    .line 217
    invoke-virtual {v1, p1}, Lcom/amazon/android/widget/CommandActionView;->setItemClickListener(Lcom/amazon/android/widget/CommandActionView$OnItemClickListener;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public setShowIconsInPopup(Lcom/amazon/android/widget/CommandBar$Position;Z)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/amazon/android/widget/CommandBar;->layouts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/android/widget/CommandActionView;

    .line 185
    invoke-virtual {p1, p2}, Lcom/amazon/android/widget/CommandActionView;->setShowIconsInPopup(Z)V

    return-void
.end method
