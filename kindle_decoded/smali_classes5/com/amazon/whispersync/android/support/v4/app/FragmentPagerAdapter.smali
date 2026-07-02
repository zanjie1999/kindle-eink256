.class public abstract Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;
.super Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;
.source "FragmentPagerAdapter.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "FragmentPagerAdapter"


# instance fields
.field private mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

.field private mCurrentPrimaryItem:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

.field private final mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    .line 67
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 70
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    return-void
.end method

.method private static makeFragmentName(II)Ljava/lang/String;
    .locals 2

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 110
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    if-nez p1, :cond_0

    .line 111
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;->beginTransaction()Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    .line 115
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    check-cast p3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;->detach(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    return-void
.end method

.method public finishUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    .line 136
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 138
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    .line 139
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;->executePendingTransactions()Z

    :cond_0
    return-void
.end method

.method public abstract getItem(I)Lcom/amazon/whispersync/android/support/v4/app/Fragment;
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;->beginTransaction()Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    .line 89
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0, p2}, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;->attach(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual {p0, p2}, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->getItem(I)Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mCurTransaction:Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->makeFragmentName(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, v0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;->add(ILcom/amazon/whispersync/android/support/v4/app/Fragment;Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    .line 100
    :goto_0
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eq v0, p1, :cond_2

    const/4 p1, 0x0

    .line 101
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 102
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_2
    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 145
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
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 120
    check-cast p3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 121
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eq p3, p1, :cond_2

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 123
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 124
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    :cond_0
    if-eqz p3, :cond_1

    const/4 p1, 0x1

    .line 127
    invoke-virtual {p3, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->setMenuVisibility(Z)V

    .line 128
    invoke-virtual {p3, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->setUserVisibleHint(Z)V

    .line 130
    :cond_1
    iput-object p3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentPagerAdapter;->mCurrentPrimaryItem:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    :cond_2
    return-void
.end method

.method public startUpdate(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method
