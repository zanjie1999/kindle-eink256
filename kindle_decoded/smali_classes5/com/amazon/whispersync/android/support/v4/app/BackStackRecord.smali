.class final Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;
.super Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
.source "BackStackRecord.java"

# interfaces
.implements Lcom/amazon/whispersync/android/support/v4/app/FragmentManager$BackStackEntry;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;
    }
.end annotation


# static fields
.field static final OP_ADD:I = 0x1

.field static final OP_ATTACH:I = 0x7

.field static final OP_DETACH:I = 0x6

.field static final OP_HIDE:I = 0x4

.field static final OP_NULL:I = 0x0

.field static final OP_REMOVE:I = 0x3

.field static final OP_REPLACE:I = 0x2

.field static final OP_SHOW:I = 0x5

.field static final TAG:Ljava/lang/String; = "BackStackEntry"


# instance fields
.field mAddToBackStack:Z

.field mAllowAddToBackStack:Z

.field mBreadCrumbShortTitleRes:I

.field mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field mBreadCrumbTitleRes:I

.field mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field mCommitted:Z

.field mEnterAnim:I

.field mExitAnim:I

.field mHead:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

.field mIndex:I

.field final mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

.field mName:Ljava/lang/String;

.field mNumOp:I

.field mPopEnterAnim:I

.field mPopExitAnim:I

.field mTail:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

.field mTransition:I

.field mTransitionStyle:I


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;)V
    .locals 1

    .line 286
    invoke-direct {p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;-><init>()V

    const/4 v0, 0x1

    .line 201
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    .line 287
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    return-void
.end method

.method private doAddOp(ILcom/amazon/whispersync/android/support/v4/app/Fragment;Ljava/lang/String;I)V
    .locals 3

    .line 347
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iput-object v0, p2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mFragmentManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    const-string v0, " now "

    const-string v1, ": was "

    if-eqz p3, :cond_2

    .line 350
    iget-object v2, p2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 351
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change tag of fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 355
    :cond_1
    :goto_0
    iput-object p3, p2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    :cond_2
    if-eqz p1, :cond_5

    .line 359
    iget p3, p2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mFragmentId:I

    if-eqz p3, :cond_4

    if-ne p3, p1, :cond_3

    goto :goto_1

    .line 360
    :cond_3
    new-instance p3, Ljava/lang/IllegalStateException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t change container ID of fragment "

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mFragmentId:I

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 364
    :cond_4
    :goto_1
    iput p1, p2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mFragmentId:I

    iput p1, p2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mContainerId:I

    .line 367
    :cond_5
    new-instance p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    invoke-direct {p1}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 368
    iput p4, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 369
    iput-object p2, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 370
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->addOp(Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;)V

    return-void
.end method


# virtual methods
.method public add(ILcom/amazon/whispersync/android/support/v4/app/Fragment;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 337
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->doAddOp(ILcom/amazon/whispersync/android/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(ILcom/amazon/whispersync/android/support/v4/app/Fragment;Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x1

    .line 342
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->doAddOp(ILcom/amazon/whispersync/android/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method public add(Lcom/amazon/whispersync/android/support/v4/app/Fragment;Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 332
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->doAddOp(ILcom/amazon/whispersync/android/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0
.end method

.method addOp(Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mHead:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    if-nez v0, :cond_0

    .line 318
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTail:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mHead:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    goto :goto_0

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTail:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    iput-object v0, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->prev:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    .line 321
    iput-object p1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->next:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    .line 322
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTail:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    .line 324
    :goto_0
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mEnterAnim:I

    iput v0, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->enterAnim:I

    .line 325
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mExitAnim:I

    iput v0, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->exitAnim:I

    .line 326
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    iput v0, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    .line 327
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mPopExitAnim:I

    iput v0, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    .line 328
    iget p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mNumOp:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mNumOp:I

    return-void
.end method

.method public addToBackStack(Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 1

    .line 455
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 459
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 460
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object p0

    .line 456
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public attach(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 2

    .line 423
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;-><init>()V

    const/4 v1, 0x7

    .line 424
    iput v1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 425
    iput-object p1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 426
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->addOp(Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method bumpBackStackNesting(I)V
    .locals 6

    .line 502
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v0, :cond_0

    return-void

    .line 505
    :cond_0
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bump nesting in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " by "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mHead:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    :goto_0
    if-eqz v0, :cond_5

    .line 509
    iget-object v1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    iget v2, v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v2, p1

    iput v2, v1, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mBackStackNesting:I

    .line 510
    sget-boolean v1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    const-string v2, " to "

    const-string v3, "Bump nesting of "

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    iget v4, v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    :cond_2
    iget-object v1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    .line 513
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_4

    .line 514
    iget-object v4, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 515
    iget v5, v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v5, p1

    iput v5, v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mBackStackNesting:I

    .line 516
    sget-boolean v5, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 520
    :cond_4
    iget-object v0, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->next:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    goto :goto_0

    :cond_5
    return-void
.end method

.method public commit()I
    .locals 1

    const/4 v0, 0x0

    .line 525
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method public commitAllowingStateLoss()I
    .locals 1

    const/4 v0, 0x1

    .line 529
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->commitInternal(Z)I

    move-result v0

    return v0
.end method

.method commitInternal(Z)I
    .locals 2

    .line 533
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mCommitted:Z

    if-nez v0, :cond_2

    .line 534
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Commit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v0, 0x1

    .line 535
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mCommitted:Z

    .line 536
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->allocBackStackIndex(Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;)I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mIndex:I

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 539
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mIndex:I

    .line 541
    :goto_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->enqueueAction(Ljava/lang/Runnable;Z)V

    .line 542
    iget p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mIndex:I

    return p1

    .line 533
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "commit already called"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public detach(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 2

    .line 414
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;-><init>()V

    const/4 v1, 0x6

    .line 415
    iput v1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 416
    iput-object p1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 417
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->addOp(Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method public disallowAddToBackStack()Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 2

    .line 469
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 473
    iput-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    return-object p0

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This transaction is already being added to the back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 212
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mName="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " mIndex="

    .line 213
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mIndex:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mCommitted="

    .line 214
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mCommitted:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 215
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    if-eqz p2, :cond_0

    .line 216
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mTransition=#"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " mTransitionStyle=#"

    .line 218
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 219
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 221
    :cond_0
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mEnterAnim:I

    if-nez p2, :cond_1

    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mExitAnim:I

    if-eqz p2, :cond_2

    .line 222
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mEnterAnim=#"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 223
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mEnterAnim:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " mExitAnim=#"

    .line 224
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 225
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mExitAnim:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    :cond_2
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    if-nez p2, :cond_3

    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mPopExitAnim:I

    if-eqz p2, :cond_4

    .line 228
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mPopEnterAnim=#"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 229
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " mPopExitAnim=#"

    .line 230
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 231
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mPopExitAnim:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    :cond_4
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-nez p2, :cond_5

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    if-eqz p2, :cond_6

    .line 234
    :cond_5
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mBreadCrumbTitleRes=#"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " mBreadCrumbTitleText="

    .line 236
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 237
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 239
    :cond_6
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    if-eqz p2, :cond_8

    .line 240
    :cond_7
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "mBreadCrumbShortTitleRes=#"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 241
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, " mBreadCrumbShortTitleText="

    .line 242
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 243
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 246
    :cond_8
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mHead:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    if-eqz p2, :cond_f

    .line 247
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "Operations:"

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "    "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 249
    iget-object p4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mHead:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    :goto_0
    if-eqz p4, :cond_f

    .line 252
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  Op #"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ":"

    .line 253
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "cmd="

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " fragment="

    .line 255
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 256
    iget v1, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->enterAnim:I

    if-nez v1, :cond_9

    iget v1, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->exitAnim:I

    if-eqz v1, :cond_a

    .line 257
    :cond_9
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "enterAnim=#"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 258
    iget v1, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->enterAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " exitAnim=#"

    .line 259
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    iget v1, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->exitAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 262
    :cond_a
    iget v1, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    if-nez v1, :cond_b

    iget v1, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    if-eqz v1, :cond_c

    .line 263
    :cond_b
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "popEnterAnim=#"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 264
    iget v1, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " popExitAnim=#"

    .line 265
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 266
    iget v1, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 268
    :cond_c
    iget-object v1, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_e

    const/4 v1, 0x0

    .line 269
    :goto_1
    iget-object v2, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_e

    .line 270
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 271
    iget-object v2, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    const-string v2, "Removed: "

    .line 272
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const-string v2, "Removed:"

    .line 274
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    .line 276
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 278
    :goto_2
    iget-object v2, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 281
    :cond_e
    iget-object p4, p4, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->next:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    goto/16 :goto_0

    :cond_f
    return-void
.end method

.method public getBreadCrumbShortTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 310
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    if-eqz v0, :cond_0

    .line 311
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbShortTitleRes()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    return v0
.end method

.method public getBreadCrumbTitle()Ljava/lang/CharSequence;
    .locals 2

    .line 303
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    if-eqz v0, :cond_0

    .line 304
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget-object v1, v1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActivity:Lcom/amazon/whispersync/android/support/v4/app/FragmentActivity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getBreadCrumbTitleRes()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mIndex:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 708
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTransition()I
    .locals 1

    .line 712
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    return v0
.end method

.method public getTransitionStyle()I
    .locals 1

    .line 716
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    return v0
.end method

.method public hide(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 2

    .line 396
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;-><init>()V

    const/4 v1, 0x4

    .line 397
    iput v1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 398
    iput-object p1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 399
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->addOp(Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method public isAddToBackStackAllowed()Z
    .locals 1

    .line 465
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mAllowAddToBackStack:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 720
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mNumOp:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public popFromBackStack(Z)V
    .locals 7

    .line 631
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "popFromBackStack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    const/4 v0, -0x1

    .line 633
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 635
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTail:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    :goto_0
    if-eqz v1, :cond_2

    .line 637
    iget v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->cmd:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 689
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown cmd: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 683
    :pswitch_0
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 684
    iget v3, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 685
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v4}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v4

    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->detachFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V

    goto/16 :goto_2

    .line 677
    :pswitch_1
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 678
    iget v3, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 679
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v4}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v4

    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->attachFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V

    goto/16 :goto_2

    .line 671
    :pswitch_2
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 672
    iget v3, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iput v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 673
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v4}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v4

    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->hideFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V

    goto :goto_2

    .line 665
    :pswitch_3
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 666
    iget v3, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 667
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v4}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v4

    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->showFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V

    goto :goto_2

    .line 660
    :pswitch_4
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 661
    iget v4, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v4, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 662
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v2, v3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->addFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;Z)V

    goto :goto_2

    .line 646
    :pswitch_5
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 647
    iget v4, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iput v4, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 648
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v5}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v5

    iget v6, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v4, v2, v5, v6}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->removeFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V

    .line 651
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 652
    :goto_1
    iget-object v4, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 653
    iget-object v4, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 654
    iget v5, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    iput v5, v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 655
    iget-object v5, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v5, v4, v3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->addFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 639
    :pswitch_6
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 640
    iget v3, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    iput v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 641
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v4}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v4

    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->removeFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V

    .line 693
    :cond_1
    :goto_2
    iget-object v1, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->prev:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    goto/16 :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 697
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget v1, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCurState:I

    iget v2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    invoke-static {v2}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->reverseTransit(I)I

    move-result v2

    iget v3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    const/4 v4, 0x1

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 701
    :cond_3
    iget p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz p1, :cond_4

    .line 702
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->freeBackStackIndex(I)V

    .line 703
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mIndex:I

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public remove(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 2

    .line 387
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;-><init>()V

    const/4 v1, 0x3

    .line 388
    iput v1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 389
    iput-object p1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 390
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->addOp(Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;)V

    return-object p0
.end method

.method public replace(ILcom/amazon/whispersync/android/support/v4/app/Fragment;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x0

    .line 374
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->replace(ILcom/amazon/whispersync/android/support/v4/app/Fragment;Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    move-result-object p1

    return-object p1
.end method

.method public replace(ILcom/amazon/whispersync/android/support/v4/app/Fragment;Ljava/lang/String;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 382
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->doAddOp(ILcom/amazon/whispersync/android/support/v4/app/Fragment;Ljava/lang/String;I)V

    return-object p0

    .line 379
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must use non-zero containerViewId"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public run()V
    .locals 9

    .line 546
    sget-boolean v0, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Run: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 548
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_2

    .line 549
    iget v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mIndex:I

    if-ltz v0, :cond_1

    goto :goto_0

    .line 550
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "addToBackStack() called after commit()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 554
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    .line 556
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mHead:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    :goto_1
    if-eqz v1, :cond_8

    .line 558
    iget v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->cmd:I

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 615
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->cmd:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 610
    :pswitch_0
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 611
    iget v3, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 612
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->attachFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V

    goto/16 :goto_3

    .line 605
    :pswitch_1
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 606
    iget v3, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 607
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->detachFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V

    goto/16 :goto_3

    .line 600
    :pswitch_2
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 601
    iget v3, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 602
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->showFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V

    goto/16 :goto_3

    .line 595
    :pswitch_3
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 596
    iget v3, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 597
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->hideFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V

    goto/16 :goto_3

    .line 590
    :pswitch_4
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 591
    iget v3, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v3, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 592
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    iget v5, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v3, v2, v4, v5}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->removeFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V

    goto/16 :goto_3

    .line 565
    :pswitch_5
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 566
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget-object v4, v4, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    const/4 v4, 0x0

    .line 567
    :goto_2
    iget-object v5, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget-object v5, v5, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 568
    iget-object v5, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget-object v5, v5, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mAdded:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 569
    sget-boolean v6, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OP_REPLACE: adding="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " old="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    :cond_3
    iget v6, v5, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mContainerId:I

    iget v7, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mContainerId:I

    if-ne v6, v7, :cond_6

    .line 572
    iget-object v6, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-nez v6, :cond_4

    .line 573
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    .line 575
    :cond_4
    iget-object v6, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget v6, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->exitAnim:I

    iput v6, v5, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 577
    iget-boolean v6, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v6, :cond_5

    .line 578
    iget v6, v5, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mBackStackNesting:I

    add-int/2addr v6, v0

    iput v6, v5, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mBackStackNesting:I

    .line 579
    sget-boolean v6, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bump nesting of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 582
    :cond_5
    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget v7, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    iget v8, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v6, v5, v7, v8}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->removeFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;II)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 586
    :cond_7
    iget v4, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v4, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 587
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v2, v3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->addFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;Z)V

    goto :goto_3

    .line 560
    :pswitch_6
    iget-object v2, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 561
    iget v4, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->enterAnim:I

    iput v4, v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mNextAnim:I

    .line 562
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4, v2, v3}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->addFragment(Lcom/amazon/whispersync/android/support/v4/app/Fragment;Z)V

    .line 619
    :goto_3
    iget-object v1, v1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->next:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    goto/16 :goto_1

    .line 622
    :cond_8
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    iget v2, v1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mCurState:I

    iget v3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    iget v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->moveToState(IIIZ)V

    .line 625
    iget-boolean v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz v0, :cond_9

    .line 626
    iget-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mManager:Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v0, p0}, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->addBackStackState(Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;)V

    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setBreadCrumbShortTitle(I)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 0

    .line 490
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    const/4 p1, 0x0

    .line 491
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBreadCrumbShortTitle(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x0

    .line 496
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 497
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBreadCrumbTitle(I)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 0

    .line 478
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    const/4 p1, 0x0

    .line 479
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setBreadCrumbTitle(Ljava/lang/CharSequence;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x0

    .line 484
    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 485
    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setCustomAnimations(II)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 1

    const/4 v0, 0x0

    .line 432
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->setCustomAnimations(IIII)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;

    move-result-object p1

    return-object p1
.end method

.method public setCustomAnimations(IIII)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 0

    .line 437
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mEnterAnim:I

    .line 438
    iput p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mExitAnim:I

    .line 439
    iput p3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mPopEnterAnim:I

    .line 440
    iput p4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mPopExitAnim:I

    return-object p0
.end method

.method public setTransition(I)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 0

    .line 445
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    return-object p0
.end method

.method public setTransitionStyle(I)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 0

    .line 450
    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    return-object p0
.end method

.method public show(Lcom/amazon/whispersync/android/support/v4/app/Fragment;)Lcom/amazon/whispersync/android/support/v4/app/FragmentTransaction;
    .locals 2

    .line 405
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;-><init>()V

    const/4 v1, 0x5

    .line 406
    iput v1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 407
    iput-object p1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 408
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->addOp(Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;)V

    return-object p0
.end method
