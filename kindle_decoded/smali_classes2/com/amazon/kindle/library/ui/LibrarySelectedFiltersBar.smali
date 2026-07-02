.class public Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;
.super Ljava/lang/Object;
.source "LibrarySelectedFiltersBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$FiltersBarTextChangeCallback;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:Ljava/lang/Integer;

.field private static final FILTER_NAME_SEPARATOR:Ljava/lang/String; = ", "

.field private static final INTERPOLATED_TIME_MAX:Ljava/lang/Integer;


# instance fields
.field private activity:Landroid/app/Activity;

.field private final callback:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$FiltersBarTextChangeCallback;

.field private final filterStateChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

.field private final filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

.field private final libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

.field private final libraryType:Ljava/lang/String;

.field private final rootView:Landroid/view/ViewGroup;

.field private final selFiltersCloseBtn:Landroid/widget/ImageButton;

.field private final selFiltersNamesView:Landroid/widget/TextView;

.field private final selectedFiltersBar:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->INTERPOLATED_TIME_MAX:Ljava/lang/Integer;

    const/16 v0, 0xc8

    .line 52
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->ANIMATION_DURATION:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/amazon/kcp/library/ILibraryFilter;Ljava/lang/String;Lcom/amazon/kcp/library/LibraryFilterStateManager;Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$FiltersBarTextChangeCallback;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$1;-><init>(Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;)V

    iput-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->filterStateChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    .line 74
    iput-object p1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->activity:Landroid/app/Activity;

    .line 75
    iput-object p5, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    .line 76
    iput-object p6, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->callback:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$FiltersBarTextChangeCallback;

    .line 77
    iput-object p3, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    .line 78
    iput-object p4, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->libraryType:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget p3, Lcom/amazon/kindle/librarymodule/R$layout;->lib_selected_filters_bar:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->rootView:Landroid/view/ViewGroup;

    .line 80
    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->lib_selected_filters_bar:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selectedFiltersBar:Landroid/widget/LinearLayout;

    .line 81
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->rootView:Landroid/view/ViewGroup;

    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->selected_filter_names:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selFiltersNamesView:Landroid/widget/TextView;

    .line 82
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->rootView:Landroid/view/ViewGroup;

    sget p2, Lcom/amazon/kindle/librarymodule/R$id;->selected_filters_close_btn:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selFiltersCloseBtn:Landroid/widget/ImageButton;

    .line 83
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    iget-object p2, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->filterStateChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    invoke-virtual {p1, p2}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->registerListener(Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;)V

    .line 84
    invoke-direct {p0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->refreshSelectedFiltersBar()V

    .line 85
    invoke-direct {p0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->setCloseBtnClickListener()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->refreshSelectedFiltersBar()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;)Lcom/amazon/kcp/library/LibraryFilterStateManager;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;)Ljava/lang/String;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->libraryType:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/Integer;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->INTERPOLATED_TIME_MAX:Ljava/lang/Integer;

    return-object v0
.end method

.method private refreshSelectedFiltersBar()V
    .locals 8

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->getSelectedItemIds()Ljava/util/Set;

    move-result-object v0

    .line 92
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const-string v2, ""

    if-lez v1, :cond_4

    .line 93
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 94
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 95
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 97
    iget-object v4, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->libraryFilter:Lcom/amazon/kcp/library/ILibraryFilter;

    invoke-interface {v4}, Lcom/amazon/kcp/library/ILibraryFilter;->getItemsMap()Ljava/util/Map;

    move-result-object v4

    .line 98
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 99
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/library/LibraryFilterItem;

    if-eqz v5, :cond_0

    .line 101
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$2;-><init>(Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;)V

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 110
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/library/LibraryFilterItem;

    .line 111
    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getTitleFormatArgs()[Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 112
    iget-object v4, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getTitleResId()I

    move-result v5

    .line 113
    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getTitleFormatArgs()[Ljava/lang/Object;

    move-result-object v6

    .line 112
    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v4, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getContentDescriptionResId()I

    move-result v5

    .line 115
    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getContentDescriptionFormatArgs()[Ljava/lang/Object;

    move-result-object v1

    .line 114
    invoke-virtual {v4, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 117
    :cond_2
    iget-object v4, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getTitleResId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v4, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Lcom/amazon/kcp/library/LibraryFilterItem;->getContentDescriptionResId()I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    :cond_3
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 123
    new-instance v1, Landroid/text/SpannableString;

    iget-object v4, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->activity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/librarymodule/R$string;->showing:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 124
    new-instance v4, Landroid/text/style/StyleSpan;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v6, 0x21

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v7, v5, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 125
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-static {v2, v5}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 126
    iget-object v2, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selFiltersNamesView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {p0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->refreshLayout()V

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v3, v5}, Lorg/apache/commons/lang3/StringUtils;->join(Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-virtual {p0, v7}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->setVisibility(I)V

    goto :goto_2

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selFiltersNamesView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    .line 133
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->setVisibility(I)V

    .line 135
    :goto_2
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->callback:Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$FiltersBarTextChangeCallback;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$FiltersBarTextChangeCallback;->onTextChanged(Ljava/lang/String;)V

    return-void
.end method

.method private setCloseBtnClickListener()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selFiltersCloseBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$3;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$3;-><init>(Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private slideUp(Landroid/view/View;)V
    .locals 4

    .line 183
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 184
    new-instance v1, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$4;

    invoke-direct {v1, p0, p1, v0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar$4;-><init>(Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;Landroid/view/View;I)V

    .line 194
    sget-object v0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->ANIMATION_DURATION:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 195
    invoke-virtual {p1, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    const/16 v0, 0x8

    .line 211
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->setVisibility(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    .line 218
    iput-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->activity:Landroid/app/Activity;

    .line 219
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->filterStateManager:Lcom/amazon/kcp/library/LibraryFilterStateManager;

    iget-object v1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->filterStateChangedListener:Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/library/LibraryFilterStateManager;->deregisterListener(Lcom/amazon/kcp/library/LibraryFilterStateManager$ILibraryFilterStateChangedListener;)V

    return-void
.end method

.method public refreshLayout()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selectedFiltersBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 158
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 159
    iget-object v1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->activity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 160
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    const/high16 v1, -0x80000000

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    const/4 v1, 0x0

    .line 161
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 162
    iget-object v2, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selectedFiltersBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selectedFiltersBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selectedFiltersBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 164
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selectedFiltersBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selFiltersCloseBtn:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 224
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selFiltersNamesView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selectedFiltersBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_2

    if-nez p1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selectedFiltersBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 177
    :cond_1
    iget-object p1, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selectedFiltersBar:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->slideUp(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public show()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->selectedFiltersBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-direct {p0}, Lcom/amazon/kindle/library/ui/LibrarySelectedFiltersBar;->refreshSelectedFiltersBar()V

    :cond_0
    return-void
.end method
