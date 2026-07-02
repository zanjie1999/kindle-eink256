.class public Lcom/facebook/widget/PlacePickerFragment;
.super Lcom/facebook/widget/PickerFragment;
.source "PlacePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;,
        Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment<",
        "Lcom/facebook/model/GraphPlace;",
        ">;"
    }
.end annotation


# static fields
.field private static final CATEGORY:Ljava/lang/String; = "category"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final TAG:Ljava/lang/String; = "PlacePickerFragment"

.field private static final WERE_HERE_COUNT:Ljava/lang/String; = "were_here_count"

.field private static final searchTextTimerDelayInMilliseconds:I = 0x7d0


# instance fields
.field private hasSearchTextChangedSinceLastQuery:Z

.field private location:Landroid/location/Location;

.field private radiusInMeters:I

.field private resultsLimit:I

.field private searchBox:Landroid/widget/EditText;

.field private searchText:Ljava/lang/String;

.field private searchTextTimer:Ljava/util/Timer;

.field private showSearchBox:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 112
    const-class v0, Lcom/facebook/model/GraphPlace;

    sget v1, Lcom/facebook/android/R$layout;->com_facebook_placepickerfragment:I

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/widget/PickerFragment;-><init>(Ljava/lang/Class;ILandroid/os/Bundle;)V

    const/16 v0, 0x3e8

    .line 90
    iput v0, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    const/16 v0, 0x64

    .line 91
    iput v0, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    .line 113
    invoke-direct {p0, p1}, Lcom/facebook/widget/PlacePickerFragment;->setPlacePickerSettingsFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/widget/PlacePickerFragment;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/facebook/widget/PlacePickerFragment;->onSearchTextTimerTriggered()V

    return-void
.end method

.method private createRequest(Landroid/location/Location;IILjava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Location;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session;",
            ")",
            "Lcom/facebook/Request;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 388
    invoke-static/range {v0 .. v5}, Lcom/facebook/Request;->newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;

    move-result-object p1

    .line 391
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string p3, "id"

    const-string p4, "name"

    const-string p5, "location"

    const-string p6, "category"

    const-string v0, "were_here_count"

    .line 392
    filled-new-array {p3, p4, p5, p6, v0}, [Ljava/lang/String;

    move-result-object p3

    .line 399
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 401
    iget-object p3, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {p3}, Lcom/facebook/widget/GraphObjectAdapter;->getPictureFieldSpecifier()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 403
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 406
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object p3

    const-string p4, ","

    .line 407
    invoke-static {p4, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    const-string p4, "fields"

    invoke-virtual {p3, p4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    invoke-virtual {p1, p3}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    return-object p1
.end method

.method private createSearchTextTimer()Ljava/util/Timer;
    .locals 7

    .line 430
    new-instance v6, Ljava/util/Timer;

    invoke-direct {v6}, Ljava/util/Timer;-><init>()V

    .line 431
    new-instance v1, Lcom/facebook/widget/PlacePickerFragment$2;

    invoke-direct {v1, p0}, Lcom/facebook/widget/PlacePickerFragment$2;-><init>(Lcom/facebook/widget/PlacePickerFragment;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x7d0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-object v6
.end method

.method private onSearchTextTimerTriggered()V
    .locals 2

    .line 442
    iget-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    if-eqz v0, :cond_0

    .line 443
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 444
    new-instance v1, Lcom/facebook/widget/PlacePickerFragment$3;

    invoke-direct {v1, p0}, Lcom/facebook/widget/PlacePickerFragment$3;-><init>(Lcom/facebook/widget/PlacePickerFragment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 469
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 470
    iput-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    :goto_0
    return-void
.end method

.method private setPlacePickerSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 416
    iget v0, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    const-string v1, "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;->setRadiusInMeters(I)V

    .line 417
    iget v0, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    const-string v1, "com.facebook.widget.PlacePickerFragment.ResultsLimit"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;->setResultsLimit(I)V

    const-string v0, "com.facebook.widget.PlacePickerFragment.SearchText"

    .line 418
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;->setSearchText(Ljava/lang/String;)V

    :cond_0
    const-string v0, "com.facebook.widget.PlacePickerFragment.Location"

    .line 421
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 422
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    .line 423
    invoke-virtual {p0, v0}, Lcom/facebook/widget/PlacePickerFragment;->setLocation(Landroid/location/Location;)V

    .line 425
    :cond_1
    iget-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    const-string v1, "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    :cond_2
    return-void
.end method


# virtual methods
.method createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment<",
            "Lcom/facebook/model/GraphPlace;",
            ">.PickerFragmentAdapter<",
            "Lcom/facebook/model/GraphPlace;",
            ">;"
        }
    .end annotation

    .line 341
    new-instance v0, Lcom/facebook/widget/PlacePickerFragment$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/PlacePickerFragment$1;-><init>(Lcom/facebook/widget/PlacePickerFragment;Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 370
    invoke-virtual {v0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->setShowCheckbox(Z)V

    .line 371
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getShowPictures()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->setShowPicture(Z)V

    return-object v0
.end method

.method createLoadingStrategy()Lcom/facebook/widget/PickerFragment$LoadingStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment<",
            "Lcom/facebook/model/GraphPlace;",
            ">.",
            "LoadingStrategy;"
        }
    .end annotation

    .line 377
    new-instance v0, Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/PlacePickerFragment$AsNeededLoadingStrategy;-><init>(Lcom/facebook/widget/PlacePickerFragment;Lcom/facebook/widget/PlacePickerFragment$1;)V

    return-object v0
.end method

.method createSelectionStrategy()Lcom/facebook/widget/PickerFragment$SelectionStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment<",
            "Lcom/facebook/model/GraphPlace;",
            ">.SelectionStrategy;"
        }
    .end annotation

    .line 382
    new-instance v0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;

    invoke-direct {v0, p0}, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    return-object v0
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .locals 1

    .line 320
    sget v0, Lcom/facebook/android/R$string;->com_facebook_nearby:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;
    .locals 7

    .line 315
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->location:Landroid/location/Location;

    iget v2, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    iget v3, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    iget-object v4, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    iget-object v5, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    move-object v0, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/facebook/widget/PlacePickerFragment;->createRequest(Landroid/location/Location;IILjava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;

    move-result-object p1

    return-object p1
.end method

.method public getSelection()Lcom/facebook/model/GraphPlace;
    .locals 2

    .line 235
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getSelectedGraphObjects()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/model/GraphPlace;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method logAppEvents(Z)V
    .locals 3

    .line 325
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    .line 326
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "Completed"

    goto :goto_0

    :cond_0
    const-string p1, "Unknown"

    :goto_0
    const-string v2, "fb_dialog_outcome"

    .line 333
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    invoke-virtual {p0}, Lcom/facebook/widget/PlacePickerFragment;->getSelection()Lcom/facebook/model/GraphPlace;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string v2, "num_places_picked"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    const-string v2, "fb_place_picker_usage"

    .line 336
    invoke-virtual {v0, v2, p1, v1}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 280
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 282
    iget-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    if-eqz p1, :cond_0

    .line 283
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 284
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 3

    .line 290
    invoke-super {p0}, Lcom/facebook/widget/PickerFragment;->onDetach()V

    .line 292
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 294
    iget-object v1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    .line 246
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/widget/PickerFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 247
    sget-object p3, Lcom/facebook/android/R$styleable;->com_facebook_place_picker_fragment:[I

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 249
    sget p2, Lcom/facebook/android/R$styleable;->com_facebook_place_picker_fragment_radius_in_meters:I

    iget p3, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/facebook/widget/PlacePickerFragment;->setRadiusInMeters(I)V

    .line 250
    sget p2, Lcom/facebook/android/R$styleable;->com_facebook_place_picker_fragment_results_limit:I

    iget p3, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/facebook/widget/PlacePickerFragment;->setResultsLimit(I)V

    .line 251
    sget p2, Lcom/facebook/android/R$styleable;->com_facebook_place_picker_fragment_results_limit:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 252
    sget p2, Lcom/facebook/android/R$styleable;->com_facebook_place_picker_fragment_search_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/facebook/widget/PlacePickerFragment;->setSearchText(Ljava/lang/String;)V

    .line 254
    :cond_0
    sget p2, Lcom/facebook/android/R$styleable;->com_facebook_place_picker_fragment_show_search_box:I

    iget-boolean p3, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    .line 256
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method onLoadingData()V
    .locals 1

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    return-void
.end method

.method public onSearchBoxTextChanged(Ljava/lang/String;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 210
    iget-object p2, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/facebook/internal/Utility;->stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 217
    :cond_1
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lcom/facebook/widget/PlacePickerFragment;->hasSearchTextChangedSinceLastQuery:Z

    .line 224
    iget-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    if-nez p1, :cond_2

    .line 225
    invoke-direct {p0}, Lcom/facebook/widget/PlacePickerFragment;->createSearchTextTimer()Ljava/util/Timer;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchTextTimer:Ljava/util/Timer;

    :cond_2
    return-void
.end method

.method saveSettingsToBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 299
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    .line 301
    iget v0, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    const-string v1, "com.facebook.widget.PlacePickerFragment.RadiusInMeters"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 302
    iget v0, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    const-string v1, "com.facebook.widget.PlacePickerFragment.ResultsLimit"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 303
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    const-string v1, "com.facebook.widget.PlacePickerFragment.SearchText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->location:Landroid/location/Location;

    const-string v1, "com.facebook.widget.PlacePickerFragment.Location"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 305
    iget-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    const-string v1, "com.facebook.widget.PlacePickerFragment.ShowSearchBox"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->location:Landroid/location/Location;

    return-void
.end method

.method public setRadiusInMeters(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/facebook/widget/PlacePickerFragment;->radiusInMeters:I

    return-void
.end method

.method public setResultsLimit(I)V
    .locals 0

    .line 167
    iput p1, p0, Lcom/facebook/widget/PlacePickerFragment;->resultsLimit:I

    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 1

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 191
    :cond_0
    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 240
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    .line 241
    invoke-direct {p0, p1}, Lcom/facebook/widget/PlacePickerFragment;->setPlacePickerSettingsFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method setupViews(Landroid/view/ViewGroup;)V
    .locals 4

    .line 261
    iget-boolean v0, p0, Lcom/facebook/widget/PlacePickerFragment;->showSearchBox:Z

    if-eqz v0, :cond_0

    .line 262
    sget v0, Lcom/facebook/android/R$id;->com_facebook_picker_list_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 264
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/facebook/android/R$layout;->com_facebook_picker_search_box:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    .line 267
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 269
    sget v0, Lcom/facebook/android/R$id;->com_facebook_picker_search_text:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    .line 271
    new-instance v0, Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;

    invoke-direct {v0, p0, v2}, Lcom/facebook/widget/PlacePickerFragment$SearchTextWatcher;-><init>(Lcom/facebook/widget/PlacePickerFragment;Lcom/facebook/widget/PlacePickerFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 272
    iget-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/facebook/widget/PlacePickerFragment;->searchBox:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/facebook/widget/PlacePickerFragment;->searchText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
