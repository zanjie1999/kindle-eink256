.class final Lcom/amazon/whispersync/android/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whispersync/android/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mBreadCrumbShortTitleRes:I

.field final mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

.field final mBreadCrumbTitleRes:I

.field final mBreadCrumbTitleText:Ljava/lang/CharSequence;

.field final mIndex:I

.field final mName:Ljava/lang/String;

.field final mOps:[I

.field final mTransition:I

.field final mTransitionStyle:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 149
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/android/support/v4/app/BackStackState$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mOps:[I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mTransition:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mTransitionStyle:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mIndex:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 89
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 91
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;)V
    .locals 7

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object p1, p2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mHead:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 43
    iget-object v2, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    .line 44
    :cond_0
    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->next:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    goto :goto_0

    .line 46
    :cond_1
    iget p1, p2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mNumOp:I

    mul-int/lit8 p1, p1, 0x7

    add-int/2addr p1, v1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mOps:[I

    .line 48
    iget-boolean p1, p2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    if-eqz p1, :cond_5

    .line 52
    iget-object p1, p2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mHead:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    const/4 v1, 0x0

    :goto_1
    if-eqz p1, :cond_4

    .line 55
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v3, v1, 0x1

    iget v4, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->cmd:I

    aput v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    .line 56
    iget-object v4, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    iget v4, v4, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mIndex:I

    aput v4, v2, v3

    add-int/lit8 v3, v1, 0x1

    .line 57
    iget v4, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->enterAnim:I

    aput v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    .line 58
    iget v4, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->exitAnim:I

    aput v4, v2, v3

    add-int/lit8 v3, v1, 0x1

    .line 59
    iget v4, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    aput v4, v2, v1

    add-int/lit8 v1, v3, 0x1

    .line 60
    iget v4, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    aput v4, v2, v3

    .line 61
    iget-object v3, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    if-eqz v3, :cond_3

    .line 62
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 63
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v4, v1, 0x1

    aput v2, v3, v1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_2

    .line 65
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v4, 0x1

    iget-object v6, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    iget v6, v6, Lcom/amazon/whispersync/android/support/v4/app/Fragment;->mIndex:I

    aput v6, v3, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto :goto_2

    :cond_2
    move v1, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v1, 0x1

    .line 68
    aput v0, v2, v1

    move v1, v3

    .line 70
    :goto_3
    iget-object p1, p1, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->next:Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    goto :goto_1

    .line 72
    :cond_4
    iget p1, p2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mTransition:I

    .line 73
    iget p1, p2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mTransitionStyle:I

    .line 74
    iget-object p1, p2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    .line 75
    iget p1, p2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mIndex:I

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mIndex:I

    .line 76
    iget p1, p2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    .line 77
    iget-object p1, p2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 78
    iget p1, p2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    iput p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    .line 79
    iget-object p1, p2, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    return-void

    .line 49
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Not on back stack"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public instantiate(Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;)Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;
    .locals 10

    .line 95
    new-instance v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;-><init>(Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 97
    :goto_0
    iget-object v3, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mOps:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 98
    new-instance v3, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;

    invoke-direct {v3}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 99
    iget-object v4, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v2, 0x1

    aget v2, v4, v2

    iput v2, v3, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->cmd:I

    .line 100
    sget-boolean v2, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    const-string v4, "BSE "

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " set base fragment #"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mOps:[I

    aget v6, v6, v5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    :cond_0
    iget-object v2, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v7, v5, 0x1

    aget v5, v6, v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 103
    iput-object v2, v3, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->fragment:Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 104
    iget-object v2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v5, v7, 0x1

    aget v6, v2, v7

    iput v6, v3, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->enterAnim:I

    add-int/lit8 v6, v5, 0x1

    .line 105
    aget v5, v2, v5

    iput v5, v3, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->exitAnim:I

    add-int/lit8 v5, v6, 0x1

    .line 106
    aget v6, v2, v6

    iput v6, v3, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popEnterAnim:I

    add-int/lit8 v6, v5, 0x1

    .line 107
    aget v5, v2, v5

    iput v5, v3, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->popExitAnim:I

    add-int/lit8 v5, v6, 0x1

    .line 108
    aget v2, v2, v6

    if-lez v2, :cond_2

    .line 110
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, v3, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_2

    .line 112
    sget-boolean v7, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->DEBUG:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " set remove fragment #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mOps:[I

    aget v8, v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    :cond_1
    iget-object v7, p1, Lcom/amazon/whispersync/android/support/v4/app/FragmentManagerImpl;->mActive:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mOps:[I

    add-int/lit8 v9, v5, 0x1

    aget v5, v8, v5

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/whispersync/android/support/v4/app/Fragment;

    .line 115
    iget-object v7, v3, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;->removed:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move v5, v9

    goto :goto_1

    :cond_2
    move v2, v5

    .line 118
    invoke-virtual {v0, v3}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->addOp(Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord$Op;)V

    goto/16 :goto_0

    .line 120
    :cond_3
    iget p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mTransition:I

    iput p1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransition:I

    .line 121
    iget p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mTransitionStyle:I

    iput p1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mTransitionStyle:I

    .line 122
    iget-object p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    iput-object p1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mName:Ljava/lang/String;

    .line 123
    iget p1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mIndex:I

    iput p1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mIndex:I

    const/4 p1, 0x1

    .line 124
    iput-boolean p1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mAddToBackStack:Z

    .line 125
    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    iput v1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbTitleRes:I

    .line 126
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    .line 127
    iget v1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    iput v1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleRes:I

    .line 128
    iget-object v1, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    iput-object v1, v0, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/android/support/v4/app/BackStackRecord;->bumpBackStackNesting(I)V

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 138
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mOps:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 139
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mTransition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mTransitionStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbTitleText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 145
    iget p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbShortTitleRes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object p2, p0, Lcom/amazon/whispersync/android/support/v4/app/BackStackState;->mBreadCrumbShortTitleText:Ljava/lang/CharSequence;

    invoke-static {p2, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method
