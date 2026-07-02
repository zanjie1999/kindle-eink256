.class public abstract Lcom/facebook/widget/PickerFragment;
.super Landroidx/fragment/app/Fragment;
.source "PickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;,
        Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;,
        Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;,
        Lcom/facebook/widget/PickerFragment$SelectionStrategy;,
        Lcom/facebook/widget/PickerFragment$LoadingStrategy;,
        Lcom/facebook/widget/PickerFragment$GraphObjectFilter;,
        Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;,
        Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;,
        Lcom/facebook/widget/PickerFragment$OnDataChangedListener;,
        Lcom/facebook/widget/PickerFragment$OnErrorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/facebook/model/GraphObject;",
        ">",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation


# static fields
.field private static final ACTIVITY_CIRCLE_SHOW_KEY:Ljava/lang/String; = "com.facebook.android.PickerFragment.ActivityCircleShown"

.field private static final PROFILE_PICTURE_PREFETCH_BUFFER:I = 0x5

.field private static final SELECTION_BUNDLE_KEY:Ljava/lang/String; = "com.facebook.android.PickerFragment.Selection"


# instance fields
.field private activityCircle:Landroid/widget/ProgressBar;

.field adapter:Lcom/facebook/widget/GraphObjectAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/GraphObjectAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private appEventsLogged:Z

.field private doneButton:Landroid/widget/Button;

.field private doneButtonBackground:Landroid/graphics/drawable/Drawable;

.field private doneButtonText:Ljava/lang/String;

.field extraFields:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private filter:Lcom/facebook/widget/PickerFragment$GraphObjectFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/PickerFragment$GraphObjectFilter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final graphObjectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final layout:I

.field private listView:Landroid/widget/ListView;

.field private loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/PickerFragment<",
            "TT;>.",
            "LoadingStrategy;"
        }
    .end annotation
.end field

.field private onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

.field private onDoneButtonClickedListener:Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;

.field private onErrorListener:Lcom/facebook/widget/PickerFragment$OnErrorListener;

.field private onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

.field private selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/widget/PickerFragment<",
            "TT;>.SelectionStrategy;"
        }
    .end annotation
.end field

.field private sessionTracker:Lcom/facebook/internal/SessionTracker;

.field private showPictures:Z

.field private showTitleBar:Z

.field private titleBarBackground:Landroid/graphics/drawable/Drawable;

.field private titleText:Ljava/lang/String;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Ljava/lang/Class;ILandroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;I",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    .line 93
    iput-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    .line 765
    new-instance v0, Lcom/facebook/widget/PickerFragment$6;

    invoke-direct {v0, p0}, Lcom/facebook/widget/PickerFragment$6;-><init>(Lcom/facebook/widget/PickerFragment;)V

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 111
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->graphObjectClass:Ljava/lang/Class;

    .line 112
    iput p2, p0, Lcom/facebook/widget/PickerFragment;->layout:I

    .line 114
    invoke-direct {p0, p3}, Lcom/facebook/widget/PickerFragment;->setPickerFragmentSettingsFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/widget/PickerFragment;Landroid/widget/ListView;Landroid/view/View;I)V
    .locals 0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/PickerFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;I)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/widget/PickerFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/facebook/widget/PickerFragment;->clearResults()V

    return-void
.end method

.method static synthetic access$202(Lcom/facebook/widget/PickerFragment;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/facebook/widget/PickerFragment;->appEventsLogged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/facebook/widget/PickerFragment;->onDoneButtonClickedListener:Lcom/facebook/widget/PickerFragment$OnDoneButtonClickedListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/facebook/widget/PickerFragment;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/facebook/widget/PickerFragment;->reprioritizeDownloads()V

    return-void
.end method

.method static synthetic access$500(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$OnErrorListener;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/facebook/widget/PickerFragment;->onErrorListener:Lcom/facebook/widget/PickerFragment$OnErrorListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/facebook/widget/PickerFragment;)Ljava/lang/Class;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/facebook/widget/PickerFragment;->graphObjectClass:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic access$700(Lcom/facebook/widget/PickerFragment;)Lcom/facebook/widget/PickerFragment$SelectionStrategy;
    .locals 0

    .line 55
    iget-object p0, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    return-object p0
.end method

.method private clearResults()V
    .locals 3

    .line 699
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    invoke-virtual {v0}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 701
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v1}, Lcom/facebook/widget/GraphObjectAdapter;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 703
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-virtual {v2}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->clearResults()V

    .line 704
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    invoke-virtual {v2}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->clear()V

    .line 705
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    if-eqz v1, :cond_0

    .line 708
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

    if-eqz v1, :cond_0

    .line 709
    invoke-interface {v1, p0}, Lcom/facebook/widget/PickerFragment$OnDataChangedListener;->onDataChanged(Lcom/facebook/widget/PickerFragment;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 711
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

    if-eqz v0, :cond_1

    .line 712
    invoke-interface {v0, p0}, Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;->onSelectionChanged(Lcom/facebook/widget/PickerFragment;)V

    :cond_1
    return-void
.end method

.method private inflateTitleBar(Landroid/view/ViewGroup;)V
    .locals 4

    .line 630
    sget v0, Lcom/facebook/android/R$id;->com_facebook_picker_title_bar_stub:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    .line 632
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 634
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x3

    .line 637
    sget v3, Lcom/facebook/android/R$id;->com_facebook_picker_title_bar:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 638
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 640
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->titleBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 641
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 644
    :cond_0
    sget v0, Lcom/facebook/android/R$id;->com_facebook_picker_done_button:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 646
    new-instance v1, Lcom/facebook/widget/PickerFragment$5;

    invoke-direct {v1, p0}, Lcom/facebook/widget/PickerFragment$5;-><init>(Lcom/facebook/widget/PickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getDoneButtonText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getDoneButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButtonBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 663
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 667
    :cond_2
    sget v0, Lcom/facebook/android/R$id;->com_facebook_picker_title:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->titleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    .line 669
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getTitleText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 670
    iget-object p1, p0, Lcom/facebook/widget/PickerFragment;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getTitleText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return-void
.end method

.method private loadDataSkippingRoundTripIfCached()V
    .locals 2

    .line 689
    invoke-direct {p0}, Lcom/facebook/widget/PickerFragment;->clearResults()V

    .line 691
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getSession()Lcom/facebook/Session;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/PickerFragment;->getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->onLoadingData()V

    .line 694
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-virtual {v1, v0}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->startLoading(Lcom/facebook/Request;)V

    :cond_0
    return-void
.end method

.method private onListItemClick(Landroid/widget/ListView;Landroid/view/View;I)V
    .locals 0

    .line 678
    invoke-virtual {p1, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/model/GraphObject;

    .line 679
    iget-object p2, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {p2, p1}, Lcom/facebook/widget/GraphObjectAdapter;->getIdOfGraphObject(Lcom/facebook/model/GraphObject;)Ljava/lang/String;

    move-result-object p1

    .line 680
    iget-object p2, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    invoke-virtual {p2, p1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->toggleSelection(Ljava/lang/String;)V

    .line 681
    iget-object p1, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 683
    iget-object p1, p0, Lcom/facebook/widget/PickerFragment;->onSelectionChangedListener:Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;

    if-eqz p1, :cond_0

    .line 684
    invoke-interface {p1, p0}, Lcom/facebook/widget/PickerFragment$OnSelectionChangedListener;->onSelectionChanged(Lcom/facebook/widget/PickerFragment;)V

    :cond_0
    return-void
.end method

.method private reprioritizeDownloads()V
    .locals 4

    .line 758
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    if-ltz v0, :cond_0

    .line 760
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 761
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    const/4 v3, 0x5

    invoke-virtual {v2, v1, v0, v3}, Lcom/facebook/widget/GraphObjectAdapter;->prioritizeViewRange(III)V

    :cond_0
    return-void
.end method

.method private static setAlpha(Landroid/view/View;F)V
    .locals 3

    .line 595
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x0

    .line 596
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 p1, 0x1

    .line 597
    invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 598
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private setPickerFragmentSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 605
    iget-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    const-string v1, "com.facebook.widget.PickerFragment.ShowPictures"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    const-string v0, "com.facebook.widget.PickerFragment.ExtraFields"

    .line 606
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ","

    .line 608
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 609
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/PickerFragment;->setExtraFields(Ljava/util/Collection;)V

    .line 611
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    const-string v1, "com.facebook.widget.PickerFragment.ShowTitleBar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    const-string v0, "com.facebook.widget.PickerFragment.TitleText"

    .line 612
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 614
    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    .line 615
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->titleTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 616
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const-string v0, "com.facebook.widget.PickerFragment.DoneButtonText"

    .line 619
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 621
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    .line 622
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 623
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method


# virtual methods
.method abstract createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment<",
            "TT;>.PickerFragmentAdapter<TT;>;"
        }
    .end annotation
.end method

.method abstract createLoadingStrategy()Lcom/facebook/widget/PickerFragment$LoadingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment<",
            "TT;>.",
            "LoadingStrategy;"
        }
    .end annotation
.end method

.method abstract createSelectionStrategy()Lcom/facebook/widget/PickerFragment$SelectionStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment<",
            "TT;>.SelectionStrategy;"
        }
    .end annotation
.end method

.method displayActivityCircle()V
    .locals 2

    .line 559
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->layoutActivityCircle()V

    .line 561
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method filterIncludesItem(Lcom/facebook/model/GraphObject;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 511
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->filter:Lcom/facebook/widget/PickerFragment$GraphObjectFilter;

    if-eqz v0, :cond_0

    .line 512
    invoke-interface {v0, p1}, Lcom/facebook/widget/PickerFragment$GraphObjectFilter;->includeItem(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method getDefaultDoneButtonText()Ljava/lang/String;
    .locals 1

    .line 555
    sget v0, Lcom/facebook/android/R$string;->com_facebook_picker_done_button_text:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoneButtonText()Ljava/lang/String;
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getDefaultDoneButtonText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getOnErrorListener()Lcom/facebook/widget/PickerFragment$OnErrorListener;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->onErrorListener:Lcom/facebook/widget/PickerFragment$OnErrorListener;

    return-object v0
.end method

.method abstract getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;
.end method

.method getSelectedGraphObjects()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 518
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    invoke-virtual {v1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->getSelectedIds()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->getGraphObjectsById(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lcom/facebook/Session;
    .locals 1

    .line 366
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->getSession()Lcom/facebook/Session;

    move-result-object v0

    return-object v0
.end method

.method public getShowPictures()Z
    .locals 1

    .line 385
    iget-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    return v0
.end method

.method public getTitleText()Ljava/lang/String;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getDefaultTitleText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    return-object v0
.end method

.method hideActivityCircle()V
    .locals 2

    .line 573
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->clearAnimation()V

    .line 576
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method layoutActivityCircle()V
    .locals 2

    .line 568
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectAdapter;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 v0, 0x3e800000    # 0.25f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 569
    :goto_0
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    invoke-static {v1, v0}, Lcom/facebook/widget/PickerFragment;->setAlpha(Landroid/view/View;F)V

    return-void
.end method

.method public loadData(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 490
    iget-object p1, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-virtual {p1}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->isDataPresentOrLoading()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 493
    :cond_0
    invoke-direct {p0}, Lcom/facebook/widget/PickerFragment;->loadDataSkippingRoundTripIfCached()V

    return-void
.end method

.method logAppEvents(Z)V
    .locals 0

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 184
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 186
    new-instance v0, Lcom/facebook/internal/SessionTracker;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/facebook/widget/PickerFragment$4;

    invoke-direct {v2, p0}, Lcom/facebook/widget/PickerFragment$4;-><init>(Lcom/facebook/widget/PickerFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/facebook/internal/SessionTracker;-><init>(Landroid/content/Context;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    .line 196
    invoke-virtual {p0, p1}, Lcom/facebook/widget/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    .line 198
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->createLoadingStrategy()Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    .line 199
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v0, v1}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->attach(Lcom/facebook/widget/GraphObjectAdapter;)V

    .line 201
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->createSelectionStrategy()Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    const-string v1, "com.facebook.android.PickerFragment.Selection"

    .line 202
    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->readSelectionFromBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 205
    iget-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/facebook/widget/PickerFragment;->inflateTitleBar(Landroid/view/ViewGroup;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    const-string v1, "com.facebook.android.PickerFragment.ActivityCircleShown"

    .line 210
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->displayActivityCircle()V

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->hideActivityCircle()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    .line 122
    new-instance v0, Lcom/facebook/widget/PickerFragment$1;

    invoke-direct {v0, p0}, Lcom/facebook/widget/PickerFragment$1;-><init>(Lcom/facebook/widget/PickerFragment;)V

    invoke-virtual {p1, v0}, Lcom/facebook/widget/GraphObjectAdapter;->setFilter(Lcom/facebook/widget/GraphObjectAdapter$Filter;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 153
    iget p3, p0, Lcom/facebook/widget/PickerFragment;->layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 155
    sget p2, Lcom/facebook/android/R$id;->com_facebook_picker_list_view:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    .line 156
    new-instance p3, Lcom/facebook/widget/PickerFragment$2;

    invoke-direct {p3, p0}, Lcom/facebook/widget/PickerFragment$2;-><init>(Lcom/facebook/widget/PickerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 162
    iget-object p2, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    new-instance p3, Lcom/facebook/widget/PickerFragment$3;

    invoke-direct {p3, p0}, Lcom/facebook/widget/PickerFragment$3;-><init>(Lcom/facebook/widget/PickerFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 171
    iget-object p2, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/facebook/widget/PickerFragment;->onScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 173
    sget p2, Lcom/facebook/android/R$id;->com_facebook_picker_activity_circle:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    .line 175
    invoke-virtual {p0, p1}, Lcom/facebook/widget/PickerFragment;->setupViews(Landroid/view/ViewGroup;)V

    .line 177
    iget-object p2, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 222
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 224
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 225
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 227
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->loadingStrategy:Lcom/facebook/widget/PickerFragment$LoadingStrategy;

    invoke-virtual {v0}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->detach()V

    .line 228
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->sessionTracker:Lcom/facebook/internal/SessionTracker;

    invoke-virtual {v0}, Lcom/facebook/internal/SessionTracker;->stopTracking()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    .line 132
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 133
    sget-object p3, Lcom/facebook/android/R$styleable;->com_facebook_picker_fragment:[I

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 135
    sget p2, Lcom/facebook/android/R$styleable;->com_facebook_picker_fragment_show_pictures:I

    iget-boolean p3, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/facebook/widget/PickerFragment;->setShowPictures(Z)V

    .line 136
    sget p2, Lcom/facebook/android/R$styleable;->com_facebook_picker_fragment_extra_fields:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string p3, ","

    .line 138
    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 139
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/facebook/widget/PickerFragment;->setExtraFields(Ljava/util/Collection;)V

    .line 142
    :cond_0
    sget p2, Lcom/facebook/android/R$styleable;->com_facebook_picker_fragment_show_title_bar:I

    iget-boolean p3, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    .line 143
    sget p2, Lcom/facebook/android/R$styleable;->com_facebook_picker_fragment_title_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    .line 144
    sget p2, Lcom/facebook/android/R$styleable;->com_facebook_picker_fragment_done_button_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    .line 145
    sget p2, Lcom/facebook/android/R$styleable;->com_facebook_picker_fragment_title_bar_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/widget/PickerFragment;->titleBarBackground:Landroid/graphics/drawable/Drawable;

    .line 146
    sget p2, Lcom/facebook/android/R$styleable;->com_facebook_picker_fragment_done_button_background:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lcom/facebook/widget/PickerFragment;->doneButtonBackground:Landroid/graphics/drawable/Drawable;

    .line 148
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method onLoadingData()V
    .locals 0

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 233
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 235
    invoke-virtual {p0, p1}, Lcom/facebook/widget/PickerFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    .line 236
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    const-string v1, "com.facebook.android.PickerFragment.Selection"

    invoke-virtual {v0, p1, v1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->saveSelectionToBundle(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->activityCircle:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 238
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "com.facebook.android.PickerFragment.ActivityCircleShown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 244
    iget-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->appEventsLogged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PickerFragment;->logAppEvents(Z)V

    .line 247
    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method

.method saveSettingsToBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 530
    iget-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    const-string v1, "com.facebook.widget.PickerFragment.ShowPictures"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 531
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 532
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    const-string v1, ","

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.widget.PickerFragment.ExtraFields"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/widget/PickerFragment;->showTitleBar:Z

    const-string v1, "com.facebook.widget.PickerFragment.ShowTitleBar"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 535
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->titleText:Ljava/lang/String;

    const-string v1, "com.facebook.widget.PickerFragment.TitleText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->doneButtonText:Ljava/lang/String;

    const-string v1, "com.facebook.widget.PickerFragment.DoneButtonText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 0

    .line 252
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {p0, p1}, Lcom/facebook/widget/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public setExtraFields(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 412
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    if-eqz p1, :cond_0

    .line 414
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method setSelectedGraphObjects(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 522
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 523
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    invoke-virtual {v1, v0}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->isSelected(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 524
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    invoke-virtual {v1, v0}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;->toggleSelection(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method setSelectionStrategy(Lcom/facebook/widget/PickerFragment$SelectionStrategy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/PickerFragment<",
            "TT;>.SelectionStrategy;)V"
        }
    .end annotation

    .line 581
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    if-eq p1, v0, :cond_0

    .line 582
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment;->selectionStrategy:Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    .line 583
    iget-object p1, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    if-eqz p1, :cond_0

    .line 585
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public setSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 504
    invoke-direct {p0, p1}, Lcom/facebook/widget/PickerFragment;->setPickerFragmentSettingsFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public setShowPictures(Z)V
    .locals 0

    .line 394
    iput-boolean p1, p0, Lcom/facebook/widget/PickerFragment;->showPictures:Z

    return-void
.end method

.method setupViews(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method updateAdapter(Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/SimpleGraphObjectCursor<",
            "TT;>;)V"
        }
    .end annotation

    .line 718
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    if-eqz v0, :cond_3

    .line 730
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 731
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 735
    :cond_0
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v2, v1}, Lcom/facebook/widget/GraphObjectAdapter;->getSectionAndItem(I)Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 736
    invoke-virtual {v1}, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->getType()Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    move-result-object v2

    sget-object v3, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;->ACTIVITY_CIRCLE:Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 741
    :goto_0
    iget-object v3, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {v3, p1}, Lcom/facebook/widget/GraphObjectAdapter;->changeCursor(Lcom/facebook/widget/GraphObjectCursor;)Z

    move-result p1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 745
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    iget-object v3, v1, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->sectionKey:Ljava/lang/String;

    iget-object v1, v1, Lcom/facebook/widget/GraphObjectAdapter$SectionAndItem;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {v0, v3, v1}, Lcom/facebook/widget/GraphObjectAdapter;->getPosition(Ljava/lang/String;Lcom/facebook/model/GraphObject;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 747
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :cond_2
    if-eqz p1, :cond_3

    .line 751
    iget-object p1, p0, Lcom/facebook/widget/PickerFragment;->onDataChangedListener:Lcom/facebook/widget/PickerFragment$OnDataChangedListener;

    if-eqz p1, :cond_3

    .line 752
    invoke-interface {p1, p0}, Lcom/facebook/widget/PickerFragment$OnDataChangedListener;->onDataChanged(Lcom/facebook/widget/PickerFragment;)V

    :cond_3
    return-void
.end method
