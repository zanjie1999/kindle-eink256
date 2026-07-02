.class public Lcom/amazon/xray/ui/widget/TabView;
.super Landroid/widget/FrameLayout;
.source "TabView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/widget/TabView$ScrollToSelectedTabLayoutListener;,
        Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;,
        Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnLayoutChangeListener;,
        Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnCheckedChangeListener;,
        Lcom/amazon/xray/ui/widget/TabView$TabArrayAdapter;,
        Lcom/amazon/xray/ui/widget/TabView$TabAdapter;,
        Lcom/amazon/xray/ui/widget/TabView$OnTabSelectedListener;
    }
.end annotation


# static fields
.field private static final NO_TAB_SELECTED:I = -0x1

.field private static final ORIENTATION_HORIZONTAL:I = 0x0

.field private static final ORIENTATION_VERTICAL:I = 0x1

.field private static final STATE_FRAGMENT_STATE:Ljava/lang/String; = "tabFragmentState"

.field private static final STATE_SELECTED_INDEX:Ljava/lang/String; = "tabIndex"

.field private static final STATE_SUPER:Ljava/lang/String; = "super"


# instance fields
.field private adapter:Lcom/amazon/xray/ui/widget/TabView$TabAdapter;

.field private final buttonOnCheckedListener:Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnCheckedChangeListener;

.field private final buttonOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field private contentContainerId:I

.field private fragmentState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field

.field private final groupOnCheckedListener:Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;

.field private horizontalScrollView:Landroid/widget/HorizontalScrollView;

.field private onTabSelectedListener:Lcom/amazon/xray/ui/widget/TabView$OnTabSelectedListener;

.field private orientation:I

.field private originalTypeface:Landroid/graphics/Typeface;

.field private radioGroup:Landroid/widget/RadioGroup;

.field private scrollView:Landroid/widget/ScrollView;

.field private selectedTabIndex:I

.field private tabTypefaceBoldable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;-><init>(Lcom/amazon/xray/ui/widget/TabView;Lcom/amazon/xray/ui/widget/TabView$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->groupOnCheckedListener:Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;

    .line 55
    new-instance v0, Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnCheckedChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnCheckedChangeListener;-><init>(Lcom/amazon/xray/ui/widget/TabView;Lcom/amazon/xray/ui/widget/TabView$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->buttonOnCheckedListener:Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnCheckedChangeListener;

    .line 58
    new-instance v0, Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnLayoutChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnLayoutChangeListener;-><init>(Lcom/amazon/xray/ui/widget/TabView;Lcom/amazon/xray/ui/widget/TabView$1;)V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->buttonOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 61
    iput-object v1, p0, Lcom/amazon/xray/ui/widget/TabView;->onTabSelectedListener:Lcom/amazon/xray/ui/widget/TabView$OnTabSelectedListener;

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Lcom/amazon/xray/ui/widget/TabView;->selectedTabIndex:I

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->fragmentState:Ljava/util/HashMap;

    .line 102
    sget-object v0, Lcom/amazon/kindle/xray/R$styleable;->XrayTabViewAttributes:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 104
    :try_start_0
    sget p2, Lcom/amazon/kindle/xray/R$styleable;->XrayTabViewAttributes_xray_orientation:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/amazon/xray/ui/widget/TabView;->orientation:I

    .line 105
    sget p2, Lcom/amazon/kindle/xray/R$styleable;->XrayTabViewAttributes_xray_content_view:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/amazon/xray/ui/widget/TabView;->contentContainerId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    throw p2
.end method

.method static synthetic access$1000(Lcom/amazon/xray/ui/widget/TabView;)Lcom/amazon/xray/ui/widget/TabView$OnTabSelectedListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/TabView;->onTabSelectedListener:Lcom/amazon/xray/ui/widget/TabView$OnTabSelectedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/xray/ui/widget/TabView;)Landroid/graphics/Typeface;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/TabView;->originalTypeface:Landroid/graphics/Typeface;

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/xray/ui/widget/TabView;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/amazon/xray/ui/widget/TabView;->tabTypefaceBoldable:Z

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/xray/ui/widget/TabView;)Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnCheckedChangeListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/TabView;->buttonOnCheckedListener:Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnCheckedChangeListener;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amazon/xray/ui/widget/TabView;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/amazon/xray/ui/widget/TabView;->selectedTabIndex:I

    return p0
.end method

.method static synthetic access$702(Lcom/amazon/xray/ui/widget/TabView;I)I
    .locals 0

    .line 36
    iput p1, p0, Lcom/amazon/xray/ui/widget/TabView;->selectedTabIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/amazon/xray/ui/widget/TabView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/TabView;->configureTabContent()V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/xray/ui/widget/TabView;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/TabView;->scrollToSelectedTabButton()V

    return-void
.end method

.method private configureTabContent()V
    .locals 4

    .line 269
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->adapter:Lcom/amazon/xray/ui/widget/TabView$TabAdapter;

    if-nez v0, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 278
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/TabView;->saveCurrentTabFragmentState()V

    .line 281
    iget v0, p0, Lcom/amazon/xray/ui/widget/TabView;->selectedTabIndex:I

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TabView;->adapter:Lcom/amazon/xray/ui/widget/TabView$TabAdapter;

    invoke-virtual {v1}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 282
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->adapter:Lcom/amazon/xray/ui/widget/TabView$TabAdapter;

    iget v1, p0, Lcom/amazon/xray/ui/widget/TabView;->selectedTabIndex:I

    invoke-virtual {v0, v1}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getFragment(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TabView;->adapter:Lcom/amazon/xray/ui/widget/TabView$TabAdapter;

    iget v2, p0, Lcom/amazon/xray/ui/widget/TabView;->selectedTabIndex:I

    invoke-virtual {v1, v2}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getStateKey(I)Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    .line 285
    iget-object v2, p0, Lcom/amazon/xray/ui/widget/TabView;->fragmentState:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment$SavedState;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$SavedState;)V

    .line 286
    invoke-static {v0}, Lcom/amazon/xray/ui/util/FragmentStateUtil;->apply(Landroidx/fragment/app/Fragment;)V

    .line 288
    :cond_1
    iget-object v2, p0, Lcom/amazon/xray/ui/widget/TabView;->adapter:Lcom/amazon/xray/ui/widget/TabView$TabAdapter;

    invoke-virtual {v2}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    iget v3, p0, Lcom/amazon/xray/ui/widget/TabView;->contentContainerId:I

    invoke-virtual {v2, v3, v0, v1}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    :cond_2
    return-void
.end method

.method private saveCurrentTabFragmentState()V
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->adapter:Lcom/amazon/xray/ui/widget/TabView$TabAdapter;

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 301
    iget v1, p0, Lcom/amazon/xray/ui/widget/TabView;->contentContainerId:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 303
    iget-object v2, p0, Lcom/amazon/xray/ui/widget/TabView;->fragmentState:Ljava/util/HashMap;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->saveFragmentInstanceState(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$SavedState;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private scrollToSelectedTabButton()V
    .locals 2

    .line 311
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->radioGroup:Landroid/widget/RadioGroup;

    iget v1, p0, Lcom/amazon/xray/ui/widget/TabView;->selectedTabIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TabView;->scrollView:Landroid/widget/ScrollView;

    invoke-static {v1, v0}, Lcom/amazon/xray/ui/util/ScrollViewUtil;->scrollToVisible(Landroid/widget/ScrollView;Landroid/view/View;)V

    .line 313
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TabView;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-static {v1, v0}, Lcom/amazon/xray/ui/util/ScrollViewUtil;->scrollToVisible(Landroid/widget/HorizontalScrollView;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public getSelectedTabIndex()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/amazon/xray/ui/widget/TabView;->selectedTabIndex:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 113
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 116
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/xray/R$bool;->xray_tab_typeface_boldable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/xray/ui/widget/TabView;->tabTypefaceBoldable:Z

    .line 119
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget v1, p0, Lcom/amazon/xray/ui/widget/TabView;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    sget v1, Lcom/amazon/kindle/xray/R$layout;->xray_view_tabs_vertical:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/amazon/kindle/xray/R$layout;->xray_view_tabs_horizontal:I

    :goto_0
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_tab_scroll_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->scrollView:Landroid/widget/ScrollView;

    .line 122
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_tab_horizontal_scroll_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    .line 123
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_tab_radio_group:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->radioGroup:Landroid/widget/RadioGroup;

    .line 126
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->scrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 127
    new-instance v2, Lcom/amazon/xray/ui/widget/TabView$ScrollToSelectedTabLayoutListener;

    invoke-direct {v2, p0, v1}, Lcom/amazon/xray/ui/widget/TabView$ScrollToSelectedTabLayoutListener;-><init>(Lcom/amazon/xray/ui/widget/TabView;Lcom/amazon/xray/ui/widget/TabView$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_1

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->horizontalScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz v0, :cond_2

    .line 129
    new-instance v2, Lcom/amazon/xray/ui/widget/TabView$ScrollToSelectedTabLayoutListener;

    invoke-direct {v2, p0, v1}, Lcom/amazon/xray/ui/widget/TabView$ScrollToSelectedTabLayoutListener;-><init>(Lcom/amazon/xray/ui/widget/TabView;Lcom/amazon/xray/ui/widget/TabView$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/HorizontalScrollView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 133
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->radioGroup:Landroid/widget/RadioGroup;

    new-instance v2, Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;

    invoke-direct {v2, p0, v1}, Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;-><init>(Lcom/amazon/xray/ui/widget/TabView;Lcom/amazon/xray/ui/widget/TabView$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 151
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 152
    check-cast p1, Landroid/os/Bundle;

    const/4 v0, -0x1

    const-string v1, "tabIndex"

    .line 153
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/amazon/xray/ui/widget/TabView;->selectedTabIndex:I

    const-string v0, "tabFragmentState"

    .line 154
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->fragmentState:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->fragmentState:Ljava/util/HashMap;

    :cond_0
    const-string v0, "super"

    .line 158
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 160
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 138
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/TabView;->saveCurrentTabFragmentState()V

    .line 140
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 141
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "super"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 142
    iget v1, p0, Lcom/amazon/xray/ui/widget/TabView;->selectedTabIndex:I

    const-string v2, "tabIndex"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    iget-object v1, p0, Lcom/amazon/xray/ui/widget/TabView;->fragmentState:Ljava/util/HashMap;

    const-string v2, "tabFragmentState"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method

.method public setAdapter(Lcom/amazon/xray/ui/widget/TabView$TabAdapter;)V
    .locals 8

    .line 187
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->adapter:Lcom/amazon/xray/ui/widget/TabView$TabAdapter;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 191
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/TabView;->saveCurrentTabFragmentState()V

    .line 192
    invoke-virtual {p1}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 193
    iget v1, p0, Lcom/amazon/xray/ui/widget/TabView;->contentContainerId:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 195
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 196
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->executePendingTransactions()Z

    .line 200
    :cond_0
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TabView;->adapter:Lcom/amazon/xray/ui/widget/TabView$TabAdapter;

    .line 204
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/amazon/xray/ui/widget/TabView;->contentContainerId:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    .line 205
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    if-eqz p1, :cond_b

    .line 209
    iget v0, p0, Lcom/amazon/xray/ui/widget/TabView;->selectedTabIndex:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ltz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v2

    if-le v0, v3, :cond_2

    .line 210
    :cond_1
    iput v1, p0, Lcom/amazon/xray/ui/widget/TabView;->selectedTabIndex:I

    .line 214
    :cond_2
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->radioGroup:Landroid/widget/RadioGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 217
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v0

    .line 218
    iget v3, p0, Lcom/amazon/xray/ui/widget/TabView;->orientation:I

    if-nez v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 219
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getCount()I

    move-result v5

    if-ge v4, v5, :cond_a

    .line 220
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    if-eqz v3, :cond_4

    sget v6, Lcom/amazon/kindle/xray/R$layout;->xray_view_tabs_horizontal_tab:I

    goto :goto_2

    :cond_4
    sget v6, Lcom/amazon/kindle/xray/R$layout;->xray_view_tabs_vertical_tab:I

    :goto_2
    iget-object v7, p0, Lcom/amazon/xray/ui/widget/TabView;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v5, v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/RadioButton;

    .line 223
    invoke-virtual {v5, v4}, Landroid/widget/RadioButton;->setId(I)V

    .line 224
    invoke-virtual {p1, v4}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getLabel(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    if-eqz v3, :cond_5

    .line 227
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getTabBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/amazon/xray/ui/util/ViewUtil;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 229
    :cond_5
    iget v6, p0, Lcom/amazon/xray/ui/widget/TabView;->selectedTabIndex:I

    if-ne v4, v6, :cond_6

    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 232
    invoke-virtual {p1}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getCount()I

    move-result v6

    sub-int/2addr v6, v2

    if-ge v4, v6, :cond_7

    add-int/lit8 v6, v4, 0x1

    .line 233
    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setNextFocusForwardId(I)V

    .line 236
    :cond_7
    iget-object v6, p0, Lcom/amazon/xray/ui/widget/TabView;->originalTypeface:Landroid/graphics/Typeface;

    if-nez v6, :cond_8

    .line 237
    invoke-virtual {v5}, Landroid/widget/RadioButton;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    iput-object v6, p0, Lcom/amazon/xray/ui/widget/TabView;->originalTypeface:Landroid/graphics/Typeface;

    .line 242
    :cond_8
    iget-boolean v6, p0, Lcom/amazon/xray/ui/widget/TabView;->tabTypefaceBoldable:Z

    if-eqz v6, :cond_9

    .line 243
    iget-object v6, p0, Lcom/amazon/xray/ui/widget/TabView;->originalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6, v2}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 244
    iget-object v6, p0, Lcom/amazon/xray/ui/widget/TabView;->buttonOnLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_4

    .line 246
    :cond_9
    iget-object v6, p0, Lcom/amazon/xray/ui/widget/TabView;->originalTypeface:Landroid/graphics/Typeface;

    invoke-virtual {v5, v6, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 247
    iget-object v6, p0, Lcom/amazon/xray/ui/widget/TabView;->buttonOnCheckedListener:Lcom/amazon/xray/ui/widget/TabView$RadioButtonOnCheckedChangeListener;

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 251
    :goto_4
    invoke-virtual {v0}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getTabTextColors()Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/RadioButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 253
    iget-object v6, p0, Lcom/amazon/xray/ui/widget/TabView;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v5}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 257
    :cond_a
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/TabView;->radioGroup:Landroid/widget/RadioGroup;

    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->groupOnCheckedListener:Lcom/amazon/xray/ui/widget/TabView$RadioGroupOnCheckedChangeListener;

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 260
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/TabView;->scrollToSelectedTabButton()V

    .line 261
    invoke-direct {p0}, Lcom/amazon/xray/ui/widget/TabView;->configureTabContent()V

    :cond_b
    return-void
.end method

.method public setOnTabSelectedListener(Lcom/amazon/xray/ui/widget/TabView$OnTabSelectedListener;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/TabView;->onTabSelectedListener:Lcom/amazon/xray/ui/widget/TabView$OnTabSelectedListener;

    return-void
.end method

.method public setSelectedTabIndex(I)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->adapter:Lcom/amazon/xray/ui/widget/TabView$TabAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/xray/ui/widget/TabView$TabAdapter;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/TabView;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_0
    return-void
.end method
