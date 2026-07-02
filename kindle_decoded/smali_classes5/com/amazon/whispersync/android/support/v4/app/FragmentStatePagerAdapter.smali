.class public abstract Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;
.super Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;
.source "FragmentStatePagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentStatePagerAdapter"


# instance fields
.field private mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

.field private final mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/android/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedState:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/android/support/v4/app/Fragment$SavedState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    .line 72
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    .line 73
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 76
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 2

    .line 125
    check-cast p3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 127
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    if-nez p1, :cond_0

    .line 128
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;->beginTransaction()Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    .line 132
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    if-gt p1, p2, :cond_1

    .line 133
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 135
    :cond_1
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    invoke-virtual {v1, p3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;->saveFragmentInstanceState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)Lcom/amazon/whispersync/android/support/v4/app/Fragment$SavedState;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 136
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;->remove(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .line 157
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 159
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    .line 160
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public abstract getItem(I)Lcom/amazon/whispersync/android/support/v4/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_0

    .line 95
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;->beginTransaction()Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    .line 105
    :cond_1
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->getItem(I)Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_2

    .line 108
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment$SavedState;

    if-eqz v1, :cond_2

    .line 110
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->setInitialSavedState(Lcom/amazon/whispersync/android/support/v4/app/Fragment$SavedState;)V

    .line 113
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, p2, :cond_3

    .line 114
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 116
    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 117
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-virtual {p2, p1, v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;->add(ILcom/amazon/whispersync/android/support/v4/app/Fragment;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 166
    check-cast p2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    invoke-virtual {p2}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 5

    if-eqz p1, :cond_4

    .line 194
    check-cast p1, Landroid/os/Bundle;

    .line 195
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string/jumbo p2, "states"

    .line 196
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p2

    .line 197
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 198
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x0

    .line 200
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    aget-object v3, p2, v1

    check-cast v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment$SavedState;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 204
    :cond_0
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 205
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "f"

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 207
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 208
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    invoke-virtual {v3, p1, v1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 210
    :goto_2
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gt v1, v2, :cond_2

    .line 211
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 213
    :cond_2
    invoke-virtual {v3, v0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 214
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 216
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad fragment at key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentStatePagerAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 5

    .line 172
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 174
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/amazon/whispersync/android/support/v4/app/Fragment$SavedState;

    .line 175
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mSavedState:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const-string/jumbo v2, "states"

    .line 176
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 178
    :goto_1
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 179
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v2, :cond_2

    if-nez v0, :cond_1

    .line 182
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 185
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    invoke-virtual {v4, v0, v3, v2}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 143
    check-cast p3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 144
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eq p3, p1, :cond_2

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 146
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->setMenuVisibility(Z)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 149
    invoke-virtual {p3, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 151
    :cond_1
    iput-object p3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentStatePagerAdapter;->mCurrentPrimaryItem:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
