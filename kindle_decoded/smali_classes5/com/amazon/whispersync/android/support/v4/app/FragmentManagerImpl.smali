.class final Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;
.super Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;
.source "FragmentManager.java"


# static fields
.field static final ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final ANIM_DUR:I = 0xdc

.field public static final ANIM_STYLE_CLOSE_ENTER:I = 0x3

.field public static final ANIM_STYLE_CLOSE_EXIT:I = 0x4

.field public static final ANIM_STYLE_FADE_ENTER:I = 0x5

.field public static final ANIM_STYLE_FADE_EXIT:I = 0x6

.field public static final ANIM_STYLE_OPEN_ENTER:I = 0x1

.field public static final ANIM_STYLE_OPEN_EXIT:I = 0x2

.field static DEBUG:Z = false

.field static final DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

.field static final DECELERATE_QUINT:Landroid/view/animation/Interpolator;

.field static final HONEYCOMB:Z

.field static final TAG:Ljava/lang/String; = "FragmentManager"

.field static final TARGET_REQUEST_CODE_STATE_TAG:Ljava/lang/String; = "android:target_req_state"

.field static final TARGET_STATE_TAG:Ljava/lang/String; = "android:target_state"

.field static final USER_VISIBLE_HINT_TAG:Ljava/lang/String; = "android:user_visible_hint"

.field static final VIEW_STATE_TAG:Ljava/lang/String; = "android:view_state"


# instance fields
.field mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/android/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

.field mAdded:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/android/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mAvailBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mAvailIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mBackStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackChangeListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/android/support/v4/app/FragmentManager$OnBackStackChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field mBackStackIndices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;",
            ">;"
        }
    .end annotation
.end field

.field mCreatedMenus:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/android/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mCurState:I

.field mDestroyed:Z

.field mExecCommit:Ljava/lang/Runnable;

.field mExecutingActions:Z

.field mHavePendingDeferredStart:Z

.field mNeedMenuInvalidate:Z

.field mNoTransactionsBecause:Ljava/lang/String;

.field mPendingActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field mStateArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mStateBundle:Landroid/os/Bundle;

.field mStateSaved:Z

.field mTmpActions:[Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 381
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    .line 672
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 673
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    .line 674
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->ACCELERATE_QUINT:Landroid/view/animation/Interpolator;

    .line 675
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->ACCELERATE_CUBIC:Landroid/view/animation/Interpolator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 377
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager;-><init>()V

    const/4 v0, 0x0

    .line 404
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v0, 0x0

    .line 414
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 415
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    .line 417
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$1;-><init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;)V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    return-void
.end method

.method private checkStateLoss()V
    .locals 3

    .line 1298
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    if-nez v0, :cond_1

    .line 1302
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 1303
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can not perform this action inside of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1299
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;
    .locals 0

    .line 695
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 696
    sget-object p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p1, 0xdc

    .line 697
    invoke-virtual {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object p0
.end method

.method static makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;
    .locals 10

    .line 681
    new-instance p0, Landroid/view/animation/AnimationSet;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 682
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    move-object v1, v0

    move v2, p1

    move v3, p2

    move v4, p1

    move v5, p2

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 684
    sget-object p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DECELERATE_QUINT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p1, 0xdc

    .line 685
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 686
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 687
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p3, p4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 688
    sget-object p3, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DECELERATE_CUBIC:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p3}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 689
    invoke-virtual {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 690
    invoke-virtual {p0, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    return-object p0
.end method

.method public static reverseTransit(I)I
    .locals 3

    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1001

    goto :goto_0

    :cond_1
    const/16 v0, 0x1003

    :cond_2
    :goto_0
    return v0
.end method

.method public static transitToStyleIndex(IZ)I
    .locals 1

    const/16 v0, 0x1001

    if-eq p0, v0, :cond_4

    const/16 v0, 0x1003

    if-eq p0, v0, :cond_2

    const/16 v0, 0x2002

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p0, 0x3

    goto :goto_0

    :cond_1
    const/4 p0, 0x4

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    const/4 p0, 0x5

    goto :goto_0

    :cond_3
    const/4 p0, 0x6

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    const/4 p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x2

    :goto_0
    return p0
.end method


# virtual methods
.method addBackStackState(Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;)V
    .locals 1

    .line 1448
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1451
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1452
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    return-void
.end method

.method public addFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;Z)V
    .locals 2

    .line 1143
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1146
    :cond_0
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1147
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->makeActive(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V

    .line 1148
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_3

    .line 1149
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 1150
    iput-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAdded:Z

    const/4 v1, 0x0

    .line 1151
    iput-boolean v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mRemoving:Z

    .line 1152
    iget-boolean v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_2

    .line 1153
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_2
    if-eqz p2, :cond_3

    .line 1156
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V

    :cond_3
    return-void
.end method

.method public addOnBackStackChangedListener(Lcom/amazon/whispersync/android/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 501
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allocBackStackIndex(Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;)I
    .locals 3

    .line 1328
    monitor-enter p0

    .line 1329
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1340
    sget-boolean v1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1341
    :cond_1
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1342
    monitor-exit p0

    return v0

    .line 1330
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1331
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1333
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1334
    sget-boolean v1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1335
    :cond_4
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1336
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    .line 1344
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public attachActivity(Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;)V
    .locals 1

    .line 1795
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    if-nez v0, :cond_0

    .line 1796
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    return-void

    .line 1795
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public attachFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V
    .locals 2

    .line 1231
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1232
    :cond_0
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mDetached:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1233
    iput-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mDetached:Z

    .line 1234
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAdded:Z

    if-nez v0, :cond_2

    .line 1235
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 1236
    iput-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAdded:Z

    .line 1237
    iget-boolean v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_1

    .line 1238
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1240
    :cond_1
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;III)V

    :cond_2
    return-void
.end method

.method public beginTransaction()Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 1

    .line 426
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;-><init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;)V

    return-object v0
.end method

.method public detachFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V
    .locals 2

    .line 1215
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detach: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1216
    :cond_0
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mDetached:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 1217
    iput-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mDetached:Z

    .line 1218
    iget-boolean v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_2

    .line 1220
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1221
    iget-boolean v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v1, :cond_1

    .line 1222
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_1
    const/4 v1, 0x0

    .line 1224
    iput-boolean v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAdded:Z

    .line 1225
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;III)V

    :cond_2
    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 2

    const/4 v0, 0x0

    .line 1809
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v1, 0x2

    .line 1810
    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1848
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1849
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1850
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 1852
    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1929
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1930
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1931
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 1932
    iget-boolean v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_0

    .line 1933
    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public dispatchCreate()V
    .locals 2

    const/4 v0, 0x0

    .line 1804
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v1, 0x1

    .line 1805
    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 6

    .line 1872
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1873
    :goto_0
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    .line 1874
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v4, :cond_1

    .line 1875
    iget-boolean v5, v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHidden:Z

    if-nez v5, :cond_1

    iget-boolean v5, v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v5, :cond_1

    iget-boolean v5, v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v5, :cond_1

    .line 1877
    invoke-virtual {v4, p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    if-nez v2, :cond_0

    .line 1879
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1881
    :cond_0
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    .line 1886
    :cond_3
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz p1, :cond_6

    .line 1887
    :goto_1
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_6

    .line 1888
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v2, :cond_4

    .line 1889
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 1890
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onDestroyOptionsMenu()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1895
    :cond_6
    iput-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    return v3
.end method

.method public dispatchDestroy()V
    .locals 1

    const/4 v0, 0x1

    .line 1841
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    .line 1842
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    const/4 v0, 0x0

    .line 1843
    invoke-virtual {p0, v0, v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    const/4 v0, 0x0

    .line 1844
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    return-void
.end method

.method public dispatchLowMemory()V
    .locals 2

    .line 1859
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1860
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1861
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 1863
    invoke-virtual {v1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onLowMemory()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 1915
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1916
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1917
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 1918
    iget-boolean v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_0

    .line 1919
    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 3

    .line 1943
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1944
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1945
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 1946
    iget-boolean v2, v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_0

    .line 1947
    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public dispatchPause()V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 1824
    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 1902
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1903
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1904
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 1905
    iget-boolean v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_0

    iget-boolean v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_0

    iget-boolean v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_0

    .line 1907
    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    :cond_2
    return v1
.end method

.method public dispatchReallyStop()V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 1837
    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    return-void
.end method

.method public dispatchResume()V
    .locals 2

    const/4 v0, 0x0

    .line 1819
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v1, 0x5

    .line 1820
    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    return-void
.end method

.method public dispatchStart()V
    .locals 2

    const/4 v0, 0x0

    .line 1814
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v1, 0x4

    .line 1815
    invoke-virtual {p0, v1, v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    return-void
.end method

.method public dispatchStop()V
    .locals 2

    const/4 v0, 0x1

    .line 1831
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 1833
    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(IZ)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 569
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 570
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 572
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Active Fragments in "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 573
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ":"

    .line 574
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 576
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 577
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 578
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    if-eqz v4, :cond_0

    .line 580
    invoke-virtual {v4, v0, p2, p3, p4}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 586
    :cond_1
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 587
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 589
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Added Fragments:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_2

    .line 591
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 592
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 593
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 598
    :cond_2
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 599
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 601
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Fragments Created Menus:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 603
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCreatedMenus:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 604
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 605
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 610
    :cond_3
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 611
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 613
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Back Stack:"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v1, :cond_4

    .line 615
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;

    .line 616
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  #"

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    .line 617
    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    invoke-virtual {v4, v0, p2, p3, p4}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 623
    :cond_4
    monitor-enter p0

    .line 624
    :try_start_0
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-eqz p2, :cond_5

    .line 625
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_5

    .line 627
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Back Stack Indices:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p4, 0x0

    :goto_4
    if-ge p4, p2, :cond_5

    .line 629
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;

    .line 630
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    .line 631
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 636
    :cond_5
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 637
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mAvailBackStackIndices: "

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 638
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    :cond_6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz p2, :cond_7

    .line 643
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 645
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p4, "Pending Actions:"

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    if-ge v2, p2, :cond_7

    .line 647
    iget-object p4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Runnable;

    .line 648
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ": "

    .line 649
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 654
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 656
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 657
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 658
    iget-boolean p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz p2, :cond_8

    .line 659
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mNeedMenuInvalidate="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 660
    iget-boolean p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 662
    :cond_8
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    if-eqz p2, :cond_9

    .line 663
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mNoTransactionsBecause="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 664
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNoTransactionsBecause:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 666
    :cond_9
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz p2, :cond_a

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_a

    .line 667
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mAvailIndices: "

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 668
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_a
    return-void

    :catchall_0
    move-exception p1

    .line 640
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public enqueueAction(Ljava/lang/Runnable;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 1310
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 1312
    :cond_0
    monitor-enter p0

    .line 1313
    :try_start_0
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    if-eqz p2, :cond_3

    .line 1316
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-nez p2, :cond_1

    .line 1317
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    .line 1319
    :cond_1
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1320
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_2

    .line 1321
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1322
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1324
    :cond_2
    monitor-exit p0

    return-void

    .line 1314
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 1324
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public execPendingActions()Z
    .locals 6

    .line 1387
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-nez v0, :cond_9

    .line 1391
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iget-object v1, v1, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1400
    :goto_0
    monitor-enter p0

    .line 1401
    :try_start_0
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 1405
    :cond_0
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1406
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    array-length v3, v3

    if-ge v3, v2, :cond_2

    .line 1407
    :cond_1
    new-array v3, v2, [Ljava/lang/Runnable;

    iput-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    .line 1409
    :cond_2
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1410
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mPendingActions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1411
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iget-object v3, v3, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mExecCommit:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1412
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1414
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 1416
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 1417
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mTmpActions:[Ljava/lang/Runnable;

    const/4 v5, 0x0

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1419
    :cond_3
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    const/4 v2, 0x1

    goto :goto_0

    .line 1402
    :cond_4
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1423
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 1425
    :goto_3
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_6

    .line 1426
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v4, :cond_5

    .line 1427
    iget-object v4, v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mLoaderManager:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    if-eqz v4, :cond_5

    .line 1428
    invoke-virtual {v4}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v4

    or-int/2addr v3, v4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    if-nez v3, :cond_7

    .line 1432
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    .line 1433
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    :cond_7
    return v2

    :catchall_0
    move-exception v0

    .line 1412
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1392
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must be called from main thread of process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1388
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Recursive entry to executePendingTransactions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executePendingTransactions()Z
    .locals 1

    .line 431
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentById(I)Lcom/amazon/whispersync/android/support/v4/app/Fragment;
    .locals 3

    .line 1246
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 1248
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1249
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 1250
    iget v2, v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1255
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 1256
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v1, :cond_2

    .line 1257
    iget v2, v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/Fragment;
    .locals 3

    .line 1266
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    .line 1268
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1269
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 1270
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1275
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 1276
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v1, :cond_2

    .line 1277
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFragmentByWho(Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/Fragment;
    .locals 3

    .line 1286
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1287
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1288
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    .line 1289
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public freeBackStackIndex(I)V
    .locals 2

    .line 1373
    monitor-enter p0

    .line 1374
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1375
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1378
    :cond_0
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeing back stack index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1379
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getBackStackEntryAt(I)Lcom/amazon/whispersync/android/support/v4/app/FragmentManager$BackStackEntry;
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager$BackStackEntry;

    return-object p1
.end method

.method public getBackStackEntryCount()I
    .locals 1

    .line 490
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/Fragment;
    .locals 4

    const/4 v0, -0x1

    .line 524
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, ": index "

    const-string v2, "Fragement no longer exists for key "

    if-ge p1, v0, :cond_2

    .line 532
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v0, :cond_1

    return-object v0

    .line 534
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 529
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hideFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V
    .locals 2

    .line 1177
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hide: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1178
    :cond_0
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHidden:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    .line 1179
    iput-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHidden:Z

    .line 1180
    iget-object v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1181
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->loadAnimation(Lcom/amazon/whispersync/android/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1184
    iget-object p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1186
    :cond_1
    iget-object p2, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 1188
    :cond_2
    iget-boolean p2, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAdded:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz p2, :cond_3

    .line 1189
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1191
    :cond_3
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onHiddenChanged(Z)V

    :cond_4
    return-void
.end method

.method loadAnimation(Lcom/amazon/whispersync/android/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;
    .locals 2

    .line 703
    iget v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {p1, p2, p3, v0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 709
    :cond_0
    iget p1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    if-eqz p1, :cond_1

    .line 710
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-static {v0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    if-nez p2, :cond_2

    return-object p1

    .line 720
    :cond_2
    invoke-static {p2, p3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->transitToStyleIndex(IZ)I

    move-result p2

    if-gez p2, :cond_3

    return-object p1

    :cond_3
    const p3, 0x3f79999a    # 0.975f

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    packed-switch p2, :pswitch_data_0

    if-nez p4, :cond_4

    .line 740
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 741
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    iget p4, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0

    .line 737
    :pswitch_0
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-static {p1, v1, v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 735
    :pswitch_1
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-static {p1, v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->makeFadeAnimation(Landroid/content/Context;FF)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 733
    :pswitch_2
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    const p2, 0x3f89999a    # 1.075f

    invoke-static {p1, v1, p2, v1, v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 731
    :pswitch_3
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-static {p1, p3, v1, v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 729
    :pswitch_4
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-static {p1, v1, p3, v1, v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    .line 727
    :pswitch_5
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    const/high16 p2, 0x3f900000    # 1.125f

    invoke-static {p1, p2, v1, v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->makeOpenCloseAnimation(Landroid/content/Context;FFFF)Landroid/view/animation/Animation;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_0
    if-nez p4, :cond_5

    :cond_5
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method makeActive(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V
    .locals 2

    .line 1110
    iget v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    return-void

    .line 1114
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto :goto_0

    .line 1122
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->setIndex(I)V

    .line 1123
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1115
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    .line 1116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1118
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->setIndex(I)V

    .line 1119
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void
.end method

.method makeInactive(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V
    .locals 3

    .line 1128
    iget v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mIndex:I

    if-gez v0, :cond_0

    return-void

    .line 1132
    :cond_0
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Freeing fragment index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1133
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1134
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 1135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1137
    :cond_2
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    iget v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mIndex:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1138
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iget v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->invalidateSupportFragmentIndex(I)V

    .line 1139
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->initState()V

    return-void
.end method

.method moveToState(IIIZ)V
    .locals 3

    .line 1066
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1067
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p4, :cond_2

    .line 1070
    iget p4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-ne p4, p1, :cond_2

    return-void

    .line 1074
    :cond_2
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCurState:I

    .line 1075
    iget-object p4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-eqz p4, :cond_6

    const/4 p4, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1077
    :goto_1
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 1078
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v2, :cond_3

    .line 1080
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;III)V

    .line 1081
    iget-object v2, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mLoaderManager:Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;

    if-eqz v2, :cond_3

    .line 1082
    invoke-virtual {v2}, Lcom/amazon/whispersync/android/support/v4/app/LoaderManagerImpl;->hasRunningLoaders()Z

    move-result v2

    or-int/2addr v1, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    .line 1088
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->startPendingDeferredFragments()V

    .line 1091
    :cond_5
    iget-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    if-eqz p1, :cond_6

    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 p3, 0x5

    if-ne p2, p3, :cond_6

    .line 1092
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    .line 1093
    iput-boolean p4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_6
    return-void
.end method

.method moveToState(IZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1062
    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    return-void
.end method

.method moveToState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V
    .locals 2

    .line 1058
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCurState:I

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;III)V

    return-void
.end method

.method moveToState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;III)V
    .locals 10

    .line 774
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAdded:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-le p2, v1, :cond_0

    const/4 p2, 0x1

    .line 777
    :cond_0
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mRemoving:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mState:I

    if-le p2, v0, :cond_1

    move p2, v0

    .line 783
    :cond_1
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mDeferStart:Z

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mState:I

    if-ge v0, v2, :cond_2

    if-le p2, v3, :cond_2

    const/4 p2, 0x3

    .line 786
    :cond_2
    iget v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mState:I

    const/4 v4, 0x2

    const-string v5, "Fragment "

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-ge v0, p2, :cond_20

    .line 790
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mInLayout:Z

    if-nez v0, :cond_3

    return-void

    .line 793
    :cond_3
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 798
    iput-object v6, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 799
    iget v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mStateAfterAnimating:I

    invoke-virtual {p0, p1, v0, v7, v7}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;III)V

    .line 801
    :cond_4
    iget v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mState:I

    const/16 v8, 0x8

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_d

    if-eq v0, v4, :cond_19

    if-eq v0, v3, :cond_19

    if-eq v0, v2, :cond_1c

    goto/16 :goto_b

    .line 803
    :cond_5
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveto CREATED: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 804
    :cond_6
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v0, :cond_8

    const-string v4, "android:view_state"

    .line 805
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 807
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v4, "android:target_state"

    invoke-virtual {p0, v0, v4}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->getFragment(Landroid/os/Bundle;Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTarget:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v0, :cond_7

    .line 810
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v4, "android:target_req_state"

    invoke-virtual {v0, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 813
    :cond_7
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v4, "android:user_visible_hint"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v0, :cond_8

    .line 816
    iput-boolean v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mDeferStart:Z

    if-le p2, v3, :cond_8

    const/4 p2, 0x3

    .line 822
    :cond_8
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iput-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    .line 823
    iget-object v4, v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mFragments:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iput-object v4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    .line 824
    iput-boolean v7, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    .line 825
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 826
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_1f

    .line 830
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->onAttachFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V

    .line 832
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mRetaining:Z

    if-nez v0, :cond_a

    .line 833
    iput-boolean v7, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    .line 834
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 835
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_9

    goto :goto_0

    .line 836
    :cond_9
    new-instance p2, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " did not call through to super.onCreate()"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 840
    :cond_a
    :goto_0
    iput-boolean v7, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mRetaining:Z

    .line 841
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mFromLayout:Z

    if-eqz v0, :cond_d

    .line 845
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v6, v4}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 848
    iput-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 849
    invoke-static {v0}, Lcom/amazon/whispersync/android/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 850
    iget-boolean v4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHidden:Z

    if-eqz v4, :cond_b

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 851
    :cond_b
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v4}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_1

    .line 853
    :cond_c
    iput-object v6, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    :cond_d
    :goto_1
    if-le p2, v1, :cond_19

    .line 858
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moveto ACTIVITY_CREATED: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 859
    :cond_e
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mFromLayout:Z

    if-nez v0, :cond_16

    .line 861
    iget v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mContainerId:I

    if-eqz v0, :cond_10

    .line 862
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-virtual {v4, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_11

    .line 863
    iget-boolean v4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mRestored:Z

    if-eqz v4, :cond_f

    goto :goto_2

    .line 864
    :cond_f
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No view found for id 0x"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mContainerId:I

    invoke-static {p4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " for fragment "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_10
    move-object v0, v6

    .line 869
    :cond_11
    :goto_2
    iput-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 870
    iget-object v4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v4

    iget-object v9, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, v4, v0, v9}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    iput-object v4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v4, :cond_15

    .line 873
    iput-object v4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 874
    invoke-static {v4}, Lcom/amazon/whispersync/android/support/v4/app/NoSaveStateFrameLayout;->wrap(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    iput-object v4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 876
    invoke-virtual {p0, p1, p3, v1, p4}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->loadAnimation(Lcom/amazon/whispersync/android/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object p3

    if-eqz p3, :cond_12

    .line 879
    iget-object p4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p4, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 881
    :cond_12
    iget-object p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 883
    :cond_13
    iget-boolean p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHidden:Z

    if-eqz p3, :cond_14

    iget-object p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 884
    :cond_14
    iget-object p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    iget-object p4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, p3, p4}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    goto :goto_3

    .line 886
    :cond_15
    iput-object v6, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    .line 890
    :cond_16
    :goto_3
    iput-boolean v7, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    .line 891
    iget-object p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {p1, p3}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 892
    iget-boolean p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    if-eqz p3, :cond_18

    .line 896
    iget-object p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz p3, :cond_17

    .line 897
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->restoreViewState()V

    .line 899
    :cond_17
    iput-object v6, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    goto :goto_4

    .line 893
    :cond_18
    new-instance p2, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " did not call through to super.onActivityCreated()"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_19
    :goto_4
    if-le p2, v3, :cond_1c

    .line 904
    sget-boolean p3, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p3, :cond_1a

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "moveto STARTED: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 905
    :cond_1a
    iput-boolean v7, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    .line 906
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->performStart()V

    .line 907
    iget-boolean p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    if-eqz p3, :cond_1b

    goto :goto_5

    .line 908
    :cond_1b
    new-instance p2, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " did not call through to super.onStart()"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1c
    :goto_5
    if-le p2, v2, :cond_38

    .line 914
    sget-boolean p3, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p3, :cond_1d

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "moveto RESUMED: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 915
    :cond_1d
    iput-boolean v7, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    .line 916
    iput-boolean v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mResumed:Z

    .line 917
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onResume()V

    .line 918
    iget-boolean p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    if-eqz p3, :cond_1e

    .line 922
    iput-object v6, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 923
    iput-object v6, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    goto/16 :goto_b

    .line 919
    :cond_1e
    new-instance p2, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " did not call through to super.onResume()"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 827
    :cond_1f
    new-instance p2, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " did not call through to super.onAttach()"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_20
    if-le v0, p2, :cond_38

    if-eq v0, v1, :cond_30

    if-eq v0, v4, :cond_29

    if-eq v0, v3, :cond_27

    if-eq v0, v2, :cond_24

    const/4 v8, 0x5

    if-eq v0, v8, :cond_21

    goto/16 :goto_b

    :cond_21
    if-ge p2, v8, :cond_24

    .line 930
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "movefrom RESUMED: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 931
    :cond_22
    iput-boolean v7, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    .line 932
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onPause()V

    .line 933
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_23

    .line 937
    iput-boolean v7, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mResumed:Z

    goto :goto_6

    .line 934
    :cond_23
    new-instance p2, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " did not call through to super.onPause()"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_24
    :goto_6
    if-ge p2, v2, :cond_27

    .line 941
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STARTED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 942
    :cond_25
    iput-boolean v7, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    .line 943
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->performStop()V

    .line 944
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_26

    goto :goto_7

    .line 945
    :cond_26
    new-instance p2, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " did not call through to super.onStop()"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_27
    :goto_7
    if-ge p2, v3, :cond_29

    .line 951
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom STOPPED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 952
    :cond_28
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->performReallyStop()V

    :cond_29
    if-ge p2, v4, :cond_30

    .line 956
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 957
    :cond_2a
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2b

    .line 960
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2b

    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v0, :cond_2b

    .line 961
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V

    .line 964
    :cond_2b
    iput-boolean v7, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    .line 965
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->performDestroyView()V

    .line 966
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    if-eqz v0, :cond_2f

    .line 970
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2e

    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2e

    .line 972
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCurState:I

    if-lez v0, :cond_2c

    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-nez v0, :cond_2c

    .line 973
    invoke-virtual {p0, p1, p3, v7, p4}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->loadAnimation(Lcom/amazon/whispersync/android/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object p3

    goto :goto_8

    :cond_2c
    move-object p3, v6

    :goto_8
    if-eqz p3, :cond_2d

    .line 978
    iget-object p4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    iput-object p4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 979
    iput p2, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mStateAfterAnimating:I

    .line 980
    new-instance p4, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$5;

    invoke-direct {p4, p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$5;-><init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V

    invoke-virtual {p3, p4}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 996
    iget-object p4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p4, p3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 998
    :cond_2d
    iget-object p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object p4, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, p4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1000
    :cond_2e
    iput-object v6, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1001
    iput-object v6, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    .line 1002
    iput-object v6, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    goto :goto_9

    .line 967
    :cond_2f
    new-instance p2, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " did not call through to super.onDestroyView()"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_30
    :goto_9
    if-ge p2, v1, :cond_38

    .line 1006
    iget-boolean p3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mDestroyed:Z

    if-eqz p3, :cond_31

    .line 1007
    iget-object p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz p3, :cond_31

    .line 1015
    iput-object v6, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    .line 1016
    invoke-virtual {p3}, Landroid/view/View;->clearAnimation()V

    .line 1019
    :cond_31
    iget-object p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz p3, :cond_32

    .line 1024
    iput p2, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mStateAfterAnimating:I

    goto :goto_c

    .line 1027
    :cond_32
    sget-boolean p3, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p3, :cond_33

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "movefrom CREATED: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1028
    :cond_33
    iget-boolean p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mRetaining:Z

    if-nez p3, :cond_35

    .line 1029
    iput-boolean v7, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    .line 1030
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onDestroy()V

    .line 1031
    iget-boolean p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    if-eqz p3, :cond_34

    goto :goto_a

    .line 1032
    :cond_34
    new-instance p2, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " did not call through to super.onDestroy()"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1037
    :cond_35
    :goto_a
    iput-boolean v7, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    .line 1038
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onDetach()V

    .line 1039
    iget-boolean p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mCalled:Z

    if-eqz p3, :cond_37

    .line 1043
    iget-boolean p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mRetaining:Z

    if-nez p3, :cond_36

    .line 1044
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->makeInactive(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V

    goto :goto_b

    .line 1046
    :cond_36
    iput-object v6, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    .line 1047
    iput-object v6, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    goto :goto_b

    .line 1040
    :cond_37
    new-instance p2, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " did not call through to super.onDetach()"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/amazon/whispersync/android/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_38
    :goto_b
    move v1, p2

    .line 1054
    :goto_c
    iput v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mState:I

    return-void
.end method

.method public noteStateNotSaved()V
    .locals 1

    const/4 v0, 0x0

    .line 1800
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    return-void
.end method

.method public performPendingDeferredStart(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V
    .locals 2

    .line 761
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_1

    .line 762
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mExecutingActions:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 764
    iput-boolean p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mHavePendingDeferredStart:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 767
    iput-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mDeferStart:Z

    .line 768
    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCurState:I

    invoke-virtual {p0, p1, v1, v0, v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;III)V

    :cond_1
    return-void
.end method

.method public popBackStack()V
    .locals 2

    .line 436
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$2;-><init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public popBackStack(II)V
    .locals 2

    if-ltz p1, :cond_0

    .line 471
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$4;-><init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    return-void

    .line 469
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public popBackStack(Ljava/lang/String;I)V
    .locals 1

    .line 452
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl$3;-><init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;Ljava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method public popBackStackImmediate()Z
    .locals 4

    .line 445
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 446
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 447
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iget-object v0, v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public popBackStackImmediate(II)Z
    .locals 2

    .line 480
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 481
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    if-ltz p1, :cond_0

    .line 485
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iget-object v0, v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result p1

    return p1

    .line 483
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public popBackStackImmediate(Ljava/lang/String;I)Z
    .locals 2

    .line 461
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->checkStateLoss()V

    .line 462
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->executePendingTransactions()Z

    .line 463
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    iget-object v0, v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method

.method popBackStackState(Landroid/os/Handler;Ljava/lang/String;II)Z
    .locals 4

    .line 1456
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-nez p2, :cond_2

    if-gez p3, :cond_2

    and-int/lit8 v2, p4, 0x1

    if-nez v2, :cond_2

    .line 1460
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-gez p1, :cond_1

    return v0

    .line 1464
    :cond_1
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;

    .line 1465
    invoke-virtual {p1, v1}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->popFromBackStack(Z)V

    .line 1466
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    goto/16 :goto_8

    :cond_2
    if-nez p2, :cond_4

    if-ltz p3, :cond_3

    goto :goto_0

    :cond_3
    const/4 p1, -0x1

    goto :goto_4

    .line 1472
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_1
    if-ltz p1, :cond_7

    .line 1474
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;

    if-eqz p2, :cond_5

    .line 1475
    invoke-virtual {v2}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_2

    :cond_5
    if-ltz p3, :cond_6

    .line 1478
    iget v2, v2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mIndex:I

    if-ne p3, v2, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    :goto_2
    if-gez p1, :cond_8

    return v0

    :cond_8
    and-int/2addr p4, v1

    if-eqz p4, :cond_b

    :cond_9
    :goto_3
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_b

    .line 1490
    iget-object p4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;

    if-eqz p2, :cond_a

    .line 1491
    invoke-virtual {p4}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_a
    if-ltz p3, :cond_b

    iget p4, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mIndex:I

    if-ne p3, p4, :cond_b

    goto :goto_3

    .line 1500
    :cond_b
    :goto_4
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_c

    return v0

    .line 1503
    :cond_c
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1505
    iget-object p3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    sub-int/2addr p3, v1

    :goto_5
    if-le p3, p1, :cond_d

    .line 1506
    iget-object p4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, -0x1

    goto :goto_5

    .line 1508
    :cond_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    const/4 p3, 0x0

    :goto_6
    if-gt p3, p1, :cond_10

    .line 1510
    sget-boolean p4, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz p4, :cond_e

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Popping back stack state: "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1511
    :cond_e
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;

    if-ne p3, p1, :cond_f

    const/4 v2, 0x1

    goto :goto_7

    :cond_f
    const/4 v2, 0x0

    :goto_7
    invoke-virtual {p4, v2}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->popFromBackStack(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    .line 1513
    :cond_10
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->reportBackStackChanged()V

    :goto_8
    return v1
.end method

.method public putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V
    .locals 1

    .line 515
    iget v0, p3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_0

    .line 519
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void

    .line 516
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Fragment "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " is not currently in the FragmentManager"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V
    .locals 3

    .line 1162
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1163
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1164
    iget-boolean v2, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 1165
    :cond_1
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1166
    iget-boolean v2, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_2

    .line 1167
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    :cond_2
    const/4 v2, 0x0

    .line 1169
    iput-boolean v2, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAdded:Z

    .line 1170
    iput-boolean v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mRemoving:Z

    xor-int/2addr v0, v1

    .line 1171
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;III)V

    :cond_3
    return-void
.end method

.method public removeOnBackStackChangedListener(Lcom/amazon/whispersync/android/support/v4/app/FragmentManager$OnBackStackChangedListener;)V
    .locals 1

    .line 508
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method reportBackStackChanged()V
    .locals 2

    .line 1440
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1441
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1442
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackChangeListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager$OnBackStackChangedListener;

    invoke-interface {v1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManager$OnBackStackChangedListener;->onBackStackChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method restoreAllState(Landroid/os/Parcelable;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/android/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1693
    :cond_0
    check-cast p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;

    .line 1694
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mActive:[Lcom/amazon/whispersync/android/support/v4/app/FragmentState;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    const/4 v2, 0x0

    .line 1699
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1700
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 1701
    sget-boolean v4, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreAllState: re-attaching retained "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1702
    :cond_2
    iget-object v4, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mActive:[Lcom/amazon/whispersync/android/support/v4/app/FragmentState;

    iget v5, v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mIndex:I

    aget-object v4, v4, v5

    .line 1703
    iput-object v3, v4, Lcom/amazon/whispersync/android/support/v4/app/FragmentState;->mInstance:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 1704
    iput-object v0, v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 1705
    iput v1, v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mBackStackNesting:I

    .line 1706
    iput-boolean v1, v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mInLayout:Z

    .line 1707
    iput-boolean v1, v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAdded:Z

    .line 1708
    iput-object v0, v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTarget:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 1709
    iget-object v5, v4, Lcom/amazon/whispersync/android/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 1710
    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-virtual {v6}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 1711
    iget-object v4, v4, Lcom/amazon/whispersync/android/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v5, "android:view_state"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v4

    iput-object v4, v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1719
    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mActive:[Lcom/amazon/whispersync/android/support/v4/app/FragmentState;

    array-length v3, v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    .line 1720
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    .line 1721
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_5
    const/4 v2, 0x0

    .line 1723
    :goto_1
    iget-object v3, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mActive:[Lcom/amazon/whispersync/android/support/v4/app/FragmentState;

    array-length v4, v3

    const-string v5, ": "

    if-ge v2, v4, :cond_b

    .line 1724
    aget-object v3, v3, v2

    const-string/jumbo v4, "restoreAllState: adding #"

    if-eqz v3, :cond_7

    .line 1726
    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-virtual {v3, v6}, Lcom/amazon/whispersync/android/support/v4/app/FragmentState;->instantiate(Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;)Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    move-result-object v6

    .line 1727
    sget-boolean v7, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1728
    :cond_6
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1732
    iput-object v0, v3, Lcom/amazon/whispersync/android/support/v4/app/FragmentState;->mInstance:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    goto :goto_2

    .line 1734
    :cond_7
    sget-boolean v3, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ": (null)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1735
    :cond_8
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1736
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    if-nez v3, :cond_9

    .line 1737
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    .line 1739
    :cond_9
    sget-boolean v3, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreAllState: adding avail #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1740
    :cond_a
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailIndices:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_b
    if-eqz p2, :cond_e

    const/4 v2, 0x0

    .line 1746
    :goto_3
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_e

    .line 1747
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 1748
    iget v4, v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTargetIndex:I

    if-ltz v4, :cond_d

    .line 1749
    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_c

    .line 1750
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget v6, v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    iput-object v4, v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTarget:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    goto :goto_4

    .line 1752
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Re-attaching retained fragment "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " target no longer exists: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTargetIndex:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "FragmentManager"

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1754
    iput-object v0, v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTarget:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    :cond_d
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1761
    :cond_e
    iget-object p2, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mAdded:[I

    if-eqz p2, :cond_11

    .line 1762
    new-instance p2, Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v2, v2

    invoke-direct {p2, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 1763
    :goto_5
    iget-object v2, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mAdded:[I

    array-length v3, v2

    if-ge p2, v3, :cond_12

    .line 1764
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    aget v2, v2, p2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v2, :cond_10

    const/4 v3, 0x1

    .line 1769
    iput-boolean v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAdded:Z

    .line 1770
    sget-boolean v3, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restoreAllState: making added #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1771
    :cond_f
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 1766
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No instantiated fragment for index #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mAdded:[I

    aget p1, p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1774
    :cond_11
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    .line 1778
    :cond_12
    iget-object p2, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mBackStack:[Lcom/amazon/whispersync/android/support/v4/app/BackStackState;

    if-eqz p2, :cond_15

    .line 1779
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mBackStack:[Lcom/amazon/whispersync/android/support/v4/app/BackStackState;

    array-length v0, v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    .line 1780
    :goto_6
    iget-object p2, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mBackStack:[Lcom/amazon/whispersync/android/support/v4/app/BackStackState;

    array-length v0, p2

    if-ge v1, v0, :cond_16

    .line 1781
    aget-object p2, p2, v1

    invoke-virtual {p2, p0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->instantiate(Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;)Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;

    move-result-object p2

    .line 1782
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "restoreAllState: adding bse #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " (index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1784
    :cond_13
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1785
    iget v0, p2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v0, :cond_14

    .line 1786
    invoke-virtual {p0, v0, p2}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->setBackStackIndex(ILcom/amazon/whispersync/android/support/v4/app/BackStackRecord;)V

    :cond_14
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1790
    :cond_15
    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    :cond_16
    return-void
.end method

.method retainNonConfig()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/whispersync/android/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 1520
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 1521
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1522
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v2, :cond_2

    .line 1523
    iget-boolean v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mRetainInstance:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_0

    .line 1525
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1527
    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    .line 1528
    iput-boolean v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mRetaining:Z

    .line 1529
    iget-object v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTarget:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v3, :cond_1

    iget v3, v3, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mIndex:I

    goto :goto_1

    :cond_1
    const/4 v3, -0x1

    :goto_1
    iput v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTargetIndex:I

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method saveAllState()Landroid/os/Parcelable;
    .locals 12

    .line 1585
    invoke-virtual {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    .line 1587
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->HONEYCOMB:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1597
    iput-boolean v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateSaved:Z

    .line 1600
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_1

    goto/16 :goto_4

    .line 1605
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1606
    new-array v3, v0, [Lcom/amazon/whispersync/android/support/v4/app/FragmentState;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const-string v7, ": "

    if-ge v5, v0, :cond_8

    .line 1609
    iget-object v8, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v8, :cond_7

    .line 1613
    new-instance v6, Lcom/amazon/whispersync/android/support/v4/app/FragmentState;

    invoke-direct {v6, v8}, Lcom/amazon/whispersync/android/support/v4/app/FragmentState;-><init>(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V

    .line 1614
    aput-object v6, v3, v5

    .line 1616
    iget v9, v8, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mState:I

    if-lez v9, :cond_4

    iget-object v9, v6, Lcom/amazon/whispersync/android/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    if-nez v9, :cond_4

    .line 1617
    invoke-virtual {p0, v8}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object v9

    iput-object v9, v6, Lcom/amazon/whispersync/android/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1619
    iget-object v10, v8, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTarget:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v10, :cond_5

    .line 1620
    iget v10, v10, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mIndex:I

    if-ltz v10, :cond_3

    if-nez v9, :cond_2

    .line 1628
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    iput-object v9, v6, Lcom/amazon/whispersync/android/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1630
    :cond_2
    iget-object v9, v6, Lcom/amazon/whispersync/android/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    iget-object v10, v8, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTarget:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    const-string v11, "android:target_state"

    invoke-virtual {p0, v9, v11, v10}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->putFragment(Landroid/os/Bundle;Ljava/lang/String;Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V

    .line 1632
    iget v9, v8, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTargetRequestCode:I

    if-eqz v9, :cond_5

    .line 1633
    iget-object v10, v6, Lcom/amazon/whispersync/android/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    const-string v11, "android:target_req_state"

    invoke-virtual {v10, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 1621
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failure saving state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has target not in fragment manager: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTarget:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    .line 1623
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v5, Lcom/amazon/whispersync/android/support/v4/util/LogWriter;

    invoke-direct {v5, v1}, Lcom/amazon/whispersync/android/support/v4/util/LogWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    new-array v1, v4, [Ljava/lang/String;

    const-string v4, "  "

    invoke-virtual {p0, v4, v2, v3, v1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1625
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1640
    :cond_4
    iget-object v9, v8, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    iput-object v9, v6, Lcom/amazon/whispersync/android/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    .line 1643
    :cond_5
    :goto_1
    sget-boolean v9, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v9, :cond_6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Saved state of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v6, Lcom/amazon/whispersync/android/support/v4/app/FragmentState;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_6
    const/4 v6, 0x1

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_8
    if-nez v6, :cond_9

    .line 1649
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    return-object v2

    .line 1657
    :cond_9
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    .line 1658
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_b

    .line 1660
    new-array v1, v0, [I

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_c

    .line 1662
    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    iget v6, v6, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mIndex:I

    aput v6, v1, v5

    .line 1663
    sget-boolean v6, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "saveAllState: adding fragment #"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_b
    move-object v1, v2

    .line 1670
    :cond_c
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    if-eqz v0, :cond_e

    .line 1671
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 1673
    new-array v2, v0, [Lcom/amazon/whispersync/android/support/v4/app/BackStackState;

    :goto_3
    if-ge v4, v0, :cond_e

    .line 1675
    new-instance v5, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;

    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;

    invoke-direct {v5, p0, v6}, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;-><init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;)V

    aput-object v5, v2, v4

    .line 1676
    sget-boolean v5, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_d

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "saveAllState: adding back stack #"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStack:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1682
    :cond_e
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;-><init>()V

    .line 1683
    iput-object v3, v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mActive:[Lcom/amazon/whispersync/android/support/v4/app/FragmentState;

    .line 1684
    iput-object v1, v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mAdded:[I

    .line 1685
    iput-object v2, v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerState;->mBackStack:[Lcom/amazon/whispersync/android/support/v4/app/BackStackState;

    return-object v0

    :cond_f
    :goto_4
    return-object v2
.end method

.method saveFragmentBasicState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)Landroid/os/Bundle;
    .locals 3

    .line 1555
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 1556
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1558
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1559
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1560
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    .line 1561
    iput-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateBundle:Landroid/os/Bundle;

    move-object v1, v0

    .line 1564
    :cond_1
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 1565
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->saveFragmentViewState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V

    .line 1567
    :cond_2
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    if-nez v1, :cond_3

    .line 1569
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v1, v0

    .line 1571
    :cond_3
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const-string v2, "android:view_state"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 1574
    :cond_4
    iget-boolean p1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez p1, :cond_5

    const-string v0, "android:user_visible_hint"

    .line 1576
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_5
    return-object v1
.end method

.method public saveFragmentInstanceState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)Lcom/amazon/whispersync/android/support/v4/app/Fragment$SavedState;
    .locals 3

    .line 542
    iget v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mIndex:I

    if-ltz v0, :cond_1

    .line 546
    iget v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mState:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 547
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->saveFragmentBasicState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 548
    new-instance v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment$SavedState;

    invoke-direct {v1, p1}, Lcom/amazon/whispersync/android/support/v4/app/Fragment$SavedState;-><init>(Landroid/os/Bundle;)V

    :cond_0
    return-object v1

    .line 543
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not currently in the FragmentManager"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method saveFragmentViewState(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V
    .locals 2

    .line 1537
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1540
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    if-nez v0, :cond_1

    .line 1541
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    goto :goto_0

    .line 1543
    :cond_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1545
    :goto_0
    iget-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 1546
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1547
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    iput-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    const/4 p1, 0x0

    .line 1548
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mStateArray:Landroid/util/SparseArray;

    :cond_2
    return-void
.end method

.method public setBackStackIndex(ILcom/amazon/whispersync/android/support/v4/app/BackStackRecord;)V
    .locals 3

    .line 1348
    monitor-enter p0

    .line 1349
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 1354
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting back stack index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1355
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_0
    if-ge v0, p1, :cond_5

    .line 1358
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1359
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    if-nez v1, :cond_3

    .line 1360
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    .line 1362
    :cond_3
    sget-boolean v1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding available back stack index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1363
    :cond_4
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAvailBackStackIndices:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1366
    :cond_5
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding back stack index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " with "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1367
    :cond_6
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mBackStackIndices:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1369
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public showFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V
    .locals 3

    .line 1196
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "show: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1197
    :cond_0
    iget-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 1198
    iput-boolean v0, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHidden:Z

    .line 1199
    iget-object v1, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 1200
    invoke-virtual {p0, p1, p2, v2, p3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->loadAnimation(Lcom/amazon/whispersync/android/support/v4/app/Fragment;IZI)Landroid/view/animation/Animation;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1203
    iget-object p3, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p3, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1205
    :cond_1
    iget-object p2, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1207
    :cond_2
    iget-boolean p2, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mAdded:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz p2, :cond_3

    iget-boolean p2, p1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz p2, :cond_3

    .line 1208
    iput-boolean v2, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mNeedMenuInvalidate:Z

    .line 1210
    :cond_3
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->onHiddenChanged(Z)V

    :cond_4
    return-void
.end method

.method startPendingDeferredFragments()V
    .locals 2

    .line 1099
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1101
    :goto_0
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1102
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    if-eqz v1, :cond_1

    .line 1104
    invoke-virtual {p0, v1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 558
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-static {v1, v0}, Lcom/amazon/whispersync/android/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    const-string/jumbo v1, "}}"

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
