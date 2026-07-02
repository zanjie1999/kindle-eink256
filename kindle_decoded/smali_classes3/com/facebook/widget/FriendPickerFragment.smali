.class public Lcom/facebook/widget/FriendPickerFragment;
.super Lcom/facebook/widget/PickerFragment;
.source "FriendPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;,
        Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment<",
        "Lcom/facebook/model/GraphUser;",
        ">;"
    }
.end annotation


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field private static final NAME:Ljava/lang/String; = "name"


# instance fields
.field private friendPickerType:Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

.field private multiSelect:Z

.field private preSelectedFriendIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 104
    const-class v0, Lcom/facebook/model/GraphUser;

    sget v1, Lcom/facebook/android/R$layout;->com_facebook_friendpickerfragment:I

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/widget/PickerFragment;-><init>(Ljava/lang/Class;ILandroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    .line 86
    sget-object v0, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;->FRIENDS:Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    iput-object v0, p0, Lcom/facebook/widget/FriendPickerFragment;->friendPickerType:Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/FriendPickerFragment;->preSelectedFriendIds:Ljava/util/List;

    .line 105
    invoke-direct {p0, p1}, Lcom/facebook/widget/FriendPickerFragment;->setFriendPickerSettingsFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/widget/FriendPickerFragment;)Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/facebook/widget/FriendPickerFragment;->friendPickerType:Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    return-object p0
.end method

.method private createRequest(Ljava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Session;",
            ")",
            "Lcom/facebook/Request;"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/facebook/widget/FriendPickerFragment;->friendPickerType:Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    invoke-virtual {p1}, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;->getRequestPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p3, p1, v0}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object p1

    .line 293
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const-string p2, "id"

    const-string v0, "name"

    .line 294
    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    .line 298
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 300
    iget-object p2, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    invoke-virtual {p2}, Lcom/facebook/widget/GraphObjectAdapter;->getPictureFieldSpecifier()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 302
    invoke-interface {p3, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 305
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, ","

    .line 306
    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "fields"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    invoke-virtual {p1, p2}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    return-object p1
.end method

.method private setFriendPickerSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "com.facebook.widget.FriendPickerFragment.UserId"

    .line 315
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;->setUserId(Ljava/lang/String;)V

    .line 318
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    const-string v1, "com.facebook.widget.FriendPickerFragment.MultiSelect"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/widget/FriendPickerFragment;->setMultiSelect(Z)V

    const-string v0, "com.facebook.widget.FriendPickerFragment.FriendPickerType"

    .line 319
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 321
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;->valueOf(Ljava/lang/String;)Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/widget/FriendPickerFragment;->friendPickerType:Lcom/facebook/widget/FriendPickerFragment$FriendPickerType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method createAdapter()Lcom/facebook/widget/PickerFragment$PickerFragmentAdapter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment<",
            "Lcom/facebook/model/GraphUser;",
            ">.PickerFragmentAdapter<",
            "Lcom/facebook/model/GraphUser;",
            ">;"
        }
    .end annotation

    .line 221
    new-instance v0, Lcom/facebook/widget/FriendPickerFragment$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/FriendPickerFragment$1;-><init>(Lcom/facebook/widget/FriendPickerFragment;Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 235
    invoke-virtual {v0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->setShowCheckbox(Z)V

    .line 236
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getShowPictures()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->setShowPicture(Z)V

    const-string v1, "name"

    .line 237
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/widget/GraphObjectAdapter;->setSortFields(Ljava/util/List;)V

    .line 238
    invoke-virtual {v0, v1}, Lcom/facebook/widget/GraphObjectAdapter;->setGroupByField(Ljava/lang/String;)V

    return-object v0
.end method

.method createLoadingStrategy()Lcom/facebook/widget/PickerFragment$LoadingStrategy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment<",
            "Lcom/facebook/model/GraphUser;",
            ">.",
            "LoadingStrategy;"
        }
    .end annotation

    .line 245
    new-instance v0, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;-><init>(Lcom/facebook/widget/FriendPickerFragment;Lcom/facebook/widget/FriendPickerFragment$1;)V

    return-object v0
.end method

.method createSelectionStrategy()Lcom/facebook/widget/PickerFragment$SelectionStrategy;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/facebook/widget/PickerFragment<",
            "Lcom/facebook/model/GraphUser;",
            ">.SelectionStrategy;"
        }
    .end annotation

    .line 250
    iget-boolean v0, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;

    invoke-direct {v0, p0}, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;

    invoke-direct {v0, p0}, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    :goto_0
    return-object v0
.end method

.method getDefaultTitleText()Ljava/lang/String;
    .locals 1

    .line 265
    sget v0, Lcom/facebook/android/R$string;->com_facebook_choose_friends:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getRequestForLoadData(Lcom/facebook/Session;)Lcom/facebook/Request;
    .locals 2

    .line 255
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment;->adapter:Lcom/facebook/widget/GraphObjectAdapter;

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment;->userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "me"

    .line 260
    :goto_0
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment;->extraFields:Ljava/util/HashSet;

    invoke-direct {p0, v0, v1, p1}, Lcom/facebook/widget/FriendPickerFragment;->createRequest(Ljava/lang/String;Ljava/util/Set;Lcom/facebook/Session;)Lcom/facebook/Request;

    move-result-object p1

    return-object p1

    .line 256
    :cond_1
    new-instance p1, Lcom/facebook/FacebookException;

    const-string v0, "Can\'t issue requests until Fragment has been created."

    invoke-direct {p1, v0}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSelection()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/model/GraphUser;",
            ">;"
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getSelectedGraphObjects()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public loadData(Z)V
    .locals 0

    .line 286
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->loadData(Z)V

    .line 287
    iget-object p1, p0, Lcom/facebook/widget/FriendPickerFragment;->preSelectedFriendIds:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/PickerFragment;->setSelectedGraphObjects(Ljava/util/List;)V

    return-void
.end method

.method logAppEvents(Z)V
    .locals 3

    .line 270
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/facebook/widget/PickerFragment;->getSession()Lcom/facebook/Session;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger;->newLogger(Landroid/content/Context;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;

    move-result-object v0

    .line 271
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "Completed"

    goto :goto_0

    :cond_0
    const-string p1, "Unknown"

    :goto_0
    const-string v2, "fb_dialog_outcome"

    .line 278
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {p0}, Lcom/facebook/widget/FriendPickerFragment;->getSelection()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const-string v2, "num_friends_picked"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x0

    const-string v2, "fb_friend_picker_usage"

    .line 281
    invoke-virtual {v0, v2, p1, v1}, Lcom/facebook/AppEventsLogger;->logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 0

    .line 199
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/widget/PickerFragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 200
    sget-object p3, Lcom/facebook/android/R$styleable;->com_facebook_friend_picker_fragment:[I

    invoke-virtual {p1, p2, p3}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 202
    sget p2, Lcom/facebook/android/R$styleable;->com_facebook_friend_picker_fragment_multi_select:I

    iget-boolean p3, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/facebook/widget/FriendPickerFragment;->setMultiSelect(Z)V

    .line 204
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method saveSettingsToBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 213
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->saveSettingsToBundle(Landroid/os/Bundle;)V

    .line 215
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment;->userId:Ljava/lang/String;

    const-string v1, "com.facebook.widget.FriendPickerFragment.UserId"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    iget-boolean v0, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    const-string v1, "com.facebook.widget.FriendPickerFragment.MultiSelect"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMultiSelect(Z)V
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    if-eq v0, p1, :cond_0

    .line 140
    iput-boolean p1, p0, Lcom/facebook/widget/FriendPickerFragment;->multiSelect:Z

    .line 141
    invoke-virtual {p0}, Lcom/facebook/widget/FriendPickerFragment;->createSelectionStrategy()Lcom/facebook/widget/PickerFragment$SelectionStrategy;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/facebook/widget/PickerFragment;->setSelectionStrategy(Lcom/facebook/widget/PickerFragment$SelectionStrategy;)V

    :cond_0
    return-void
.end method

.method public setSettingsFromBundle(Landroid/os/Bundle;)V
    .locals 0

    .line 208
    invoke-super {p0, p1}, Lcom/facebook/widget/PickerFragment;->setSettingsFromBundle(Landroid/os/Bundle;)V

    .line 209
    invoke-direct {p0, p1}, Lcom/facebook/widget/FriendPickerFragment;->setFriendPickerSettingsFromBundle(Landroid/os/Bundle;)V

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/facebook/widget/FriendPickerFragment;->userId:Ljava/lang/String;

    return-void
.end method
