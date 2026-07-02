.class Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;
.super Lcom/amazon/whispersync/android/support/v4/app/LoaderManager;
.source "LoaderManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;
    }
.end annotation


# static fields
.field static DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "LoaderManager"


# instance fields
.field mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

.field mCreatingLoader:Z

.field final mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray<",
            "Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray<",
            "Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRetaining:Z

.field mRetainingStarted:Z

.field mStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;Z)V
    .locals 1

    .line 474
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManager;-><init>()V

    .line 193
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    .line 199
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    .line 475
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    .line 476
    iput-boolean p2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mStarted:Z

    return-void
.end method

.method private createAndInstallLoader(ILandroid/os/Bundle;Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;)Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 494
    :try_start_0
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    .line 495
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;)Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object p1

    .line 496
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->installLoader(Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    return-object p1

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    throw p1
.end method

.method private createLoader(ILandroid/os/Bundle;Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;)Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            "Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks<",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;"
        }
    .end annotation

    .line 485
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;-><init>(Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;ILandroid/os/Bundle;Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;)V

    .line 486
    invoke-interface {p3, p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;->onCreateLoader(ILandroid/os/Bundle;)Lcom/amazon/whispersync/android/support/v4/content/Loader;

    move-result-object p1

    .line 487
    iput-object p1, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    return-object v0
.end method


# virtual methods
.method public destroyLoader(I)V
    .locals 3

    .line 654
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-nez v0, :cond_4

    .line 658
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroyLoader in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_1

    .line 661
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 662
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v2, v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->removeAt(I)V

    .line 663
    invoke-virtual {v1}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 665
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_2

    .line 667
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 668
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->removeAt(I)V

    .line 669
    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 671
    :cond_2
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result p1

    if-nez p1, :cond_3

    .line 672
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mFragments:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    :cond_3
    return-void

    .line 655
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Called while creating a loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method doDestroy()V
    .locals 2

    .line 769
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-nez v0, :cond_1

    .line 770
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying Active in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 772
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 776
    :cond_1
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying Inactive in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 777
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 778
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 780
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->clear()V

    return-void
.end method

.method doReportNextStart()V
    .locals 3

    .line 757
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_0

    .line 758
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v2, v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    iput-boolean v1, v2, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mReportNextStart:Z

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method doReportStart()V
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 764
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->reportStart()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method doRetain()V
    .locals 3

    .line 730
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retaining in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 731
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_1

    .line 732
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 733
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called doRetain when not started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoaderManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 738
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    const/4 v1, 0x0

    .line 739
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 740
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 741
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->retain()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method doStart()V
    .locals 3

    .line 697
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 698
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v0, :cond_1

    .line 699
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 700
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 701
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called doStart when already started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoaderManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 705
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mStarted:Z

    .line 709
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v0

    :goto_0
    if-ltz v1, :cond_2

    .line 710
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method doStop()V
    .locals 3

    .line 715
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Stopping in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 716
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-nez v0, :cond_1

    .line 717
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 718
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 719
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Called doStop when not started: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LoaderManager"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 723
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 724
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->stop()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 726
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mStarted:Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    .line 796
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->size()I

    move-result v0

    const-string v1, ": "

    const-string v2, "  #"

    const/4 v3, 0x0

    const-string v4, "    "

    if-lez v0, :cond_0

    .line 797
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Active Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    .line 799
    :goto_0
    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v6}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_0

    .line 800
    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v6, v5}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 801
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v7, v5}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->keyAt(I)I

    move-result v7

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 802
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 803
    invoke-virtual {v6, v0, p2, p3, p4}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 806
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 807
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Inactive Loaders:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 808
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 809
    :goto_1
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v4}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 810
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v4, v3}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 811
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v5, v3}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 812
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 813
    invoke-virtual {v4, v0, p2, p3, p4}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method finishRetain()V
    .locals 2

    .line 746
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    if-eqz v0, :cond_1

    .line 747
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finished Retaining in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x0

    .line 749
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mRetaining:Z

    .line 750
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 751
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v1, v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->finishRetain()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getLoader(I)Lcom/amazon/whispersync/android/support/v4/content/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/amazon/whispersync/android/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 682
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-nez v0, :cond_2

    .line 686
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz p1, :cond_1

    .line 688
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v0, :cond_0

    .line 689
    iget-object p1, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    return-object p1

    .line 691
    :cond_0
    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    .line 683
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Called while creating a loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public hasRunningLoaders()Z
    .locals 6

    .line 821
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 823
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v4, v2}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 824
    iget-boolean v5, v4, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    if-eqz v5, :cond_0

    iget-boolean v4, v4, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public initLoader(ILandroid/os/Bundle;Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;)Lcom/amazon/whispersync/android/support/v4/content/Loader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Lcom/amazon/whispersync/android/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 539
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-nez v0, :cond_5

    .line 543
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 545
    sget-boolean v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initLoader in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    if-nez v0, :cond_1

    .line 549
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;)Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object v0

    .line 550
    sget-boolean p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Created new loader "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 552
    :cond_1
    sget-boolean p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "  Re-using existing loader "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 553
    :cond_2
    iput-object p3, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mCallbacks:Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;

    .line 556
    :cond_3
    :goto_0
    iget-boolean p1, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz p1, :cond_4

    .line 558
    iget-object p1, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    iget-object p2, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mData:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->callOnLoadFinished(Lcom/amazon/whispersync/android/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 561
    :cond_4
    iget-object p1, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    return-object p1

    .line 540
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method installLoader(Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    iget v1, p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mId:I

    invoke-virtual {v0, v1, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 505
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mStarted:Z

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->start()V

    :cond_0
    return-void
.end method

.method public restartLoader(ILandroid/os/Bundle;Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;)Lcom/amazon/whispersync/android/support/v4/content/Loader;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<D:",
            "Ljava/lang/Object;",
            ">(I",
            "Landroid/os/Bundle;",
            "Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks<",
            "TD;>;)",
            "Lcom/amazon/whispersync/android/support/v4/content/Loader<",
            "TD;>;"
        }
    .end annotation

    .line 589
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mCreatingLoader:Z

    if-nez v0, :cond_9

    .line 593
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 594
    sget-boolean v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restartLoader in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    if-eqz v0, :cond_8

    .line 596
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v1, :cond_6

    .line 598
    iget-boolean v2, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mHaveData:Z

    if-eqz v2, :cond_2

    .line 603
    sget-boolean v2, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Removing last inactive loader: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    const/4 v2, 0x0

    .line 604
    iput-boolean v2, v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mDeliveredData:Z

    .line 605
    invoke-virtual {v1}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 606
    iget-object v1, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    invoke-virtual {v1}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->abandon()V

    .line 607
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1, v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 611
    :cond_2
    iget-boolean v1, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mStarted:Z

    const/4 v2, 0x0

    if-nez v1, :cond_3

    .line 615
    sget-boolean v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    .line 616
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1, v2}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 617
    invoke-virtual {v0}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    goto :goto_0

    .line 622
    :cond_3
    iget-object v1, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    if-eqz v1, :cond_5

    .line 623
    sget-boolean v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Removing pending loader: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 624
    :cond_4
    iget-object v1, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    invoke-virtual {v1}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->destroy()V

    .line 625
    iput-object v2, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 627
    :cond_5
    sget-boolean v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    .line 628
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->createLoader(ILandroid/os/Bundle;Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;)Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mPendingLoader:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    .line 630
    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    return-object p1

    .line 636
    :cond_6
    sget-boolean v1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Making last loader inactive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 637
    :cond_7
    iget-object v1, v0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    invoke-virtual {v1}, Lcom/amazon/whispersync/android/support/v4/content/Loader;->abandon()V

    .line 638
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mInactiveLoaders:Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;

    invoke-virtual {v1, p1, v0}, Lcom/amazon/whispersync/android/support/v4/app/HCSparseArray;->put(ILjava/lang/Object;)V

    .line 642
    :cond_8
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->createAndInstallLoader(ILandroid/os/Bundle;Lcom/amazon/whispersync/android/support/v4/app/LoaderManager$LoaderCallbacks;)Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;

    move-result-object p1

    .line 643
    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl$LoaderInfo;->mLoader:Lcom/amazon/whispersync/android/support/v4/content/Loader;

    return-object p1

    .line 590
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Called while creating a loader"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "LoaderManager{"

    .line 786
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 787
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 788
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Lcom/amazon/whispersync/android/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, "}}"

    .line 790
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateActivity(Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;)V
    .locals 0

    .line 480
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    return-void
.end method
