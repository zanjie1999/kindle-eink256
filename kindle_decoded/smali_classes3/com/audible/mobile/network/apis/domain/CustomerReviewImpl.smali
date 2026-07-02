.class public Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;
.super Ljava/lang/Object;
.source "CustomerReviewImpl.java"

# interfaces
.implements Lcom/audible/mobile/network/apis/domain/CustomerReview;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final authorName:Ljava/lang/String;

.field private final body:Ljava/lang/String;

.field private final format:Lcom/audible/mobile/network/apis/domain/CustomerReview$Format;

.field private final guidedReviewResponses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse;",
            ">;"
        }
    .end annotation
.end field

.field private final id:Ljava/lang/String;

.field private final location:Ljava/lang/String;

.field private final ratings:Lcom/audible/mobile/network/apis/domain/ReviewRatings;

.field private final reviewContentScores:Lcom/audible/mobile/network/apis/domain/ReviewContentScores;

.field private final submissionDate:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Parcel must not be null."

    .line 58
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->authorName:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->body:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {}, Lcom/audible/mobile/network/apis/domain/CustomerReview$Format;->values()[Lcom/audible/mobile/network/apis/domain/CustomerReview$Format;

    move-result-object v1

    aget-object v0, v1, v0

    :goto_0
    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->format:Lcom/audible/mobile/network/apis/domain/CustomerReview$Format;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->guidedReviewResponses:Ljava/util/List;

    .line 64
    const-class v1, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->id:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->location:Ljava/lang/String;

    .line 67
    const-class v0, Lcom/audible/mobile/network/apis/domain/ReviewRatings;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/network/apis/domain/ReviewRatings;

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->ratings:Lcom/audible/mobile/network/apis/domain/ReviewRatings;

    .line 68
    const-class v0, Lcom/audible/mobile/network/apis/domain/ReviewContentScores;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/network/apis/domain/ReviewContentScores;

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->reviewContentScores:Lcom/audible/mobile/network/apis/domain/ReviewContentScores;

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->submissionDate:Ljava/lang/String;

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->title:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_15

    .line 158
    const-class v2, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_9

    .line 161
    :cond_1
    check-cast p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;

    .line 163
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->authorName:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->authorName:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->authorName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    return v1

    .line 166
    :cond_3
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->body:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->body:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->body:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    return v1

    .line 169
    :cond_5
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->format:Lcom/audible/mobile/network/apis/domain/CustomerReview$Format;

    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->format:Lcom/audible/mobile/network/apis/domain/CustomerReview$Format;

    if-eq v2, v3, :cond_6

    return v1

    .line 172
    :cond_6
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->guidedReviewResponses:Ljava/util/List;

    if-nez v2, :cond_7

    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->guidedReviewResponses:Ljava/util/List;

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_7
    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->guidedReviewResponses:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :goto_2
    return v1

    .line 175
    :cond_8
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->id:Ljava/lang/String;

    if-nez v2, :cond_9

    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->id:Ljava/lang/String;

    if-eqz v2, :cond_a

    goto :goto_3

    :cond_9
    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :goto_3
    return v1

    .line 178
    :cond_a
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->location:Ljava/lang/String;

    if-nez v2, :cond_b

    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->location:Ljava/lang/String;

    if-eqz v2, :cond_c

    goto :goto_4

    :cond_b
    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->location:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :goto_4
    return v1

    .line 181
    :cond_c
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->ratings:Lcom/audible/mobile/network/apis/domain/ReviewRatings;

    if-nez v2, :cond_d

    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->ratings:Lcom/audible/mobile/network/apis/domain/ReviewRatings;

    if-eqz v2, :cond_e

    goto :goto_5

    :cond_d
    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->ratings:Lcom/audible/mobile/network/apis/domain/ReviewRatings;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :goto_5
    return v1

    .line 184
    :cond_e
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->reviewContentScores:Lcom/audible/mobile/network/apis/domain/ReviewContentScores;

    if-nez v2, :cond_f

    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->reviewContentScores:Lcom/audible/mobile/network/apis/domain/ReviewContentScores;

    if-eqz v2, :cond_10

    goto :goto_6

    :cond_f
    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->reviewContentScores:Lcom/audible/mobile/network/apis/domain/ReviewContentScores;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    :goto_6
    return v1

    .line 187
    :cond_10
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->submissionDate:Ljava/lang/String;

    if-nez v2, :cond_11

    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->submissionDate:Ljava/lang/String;

    if-eqz v2, :cond_12

    goto :goto_7

    :cond_11
    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->submissionDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :goto_7
    return v1

    .line 190
    :cond_12
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->title:Ljava/lang/String;

    if-nez v2, :cond_13

    if-eqz p1, :cond_14

    goto :goto_8

    :cond_13
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    :goto_8
    return v1

    :cond_14
    return v0

    :cond_15
    :goto_9
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->authorName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->body:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->format:Lcom/audible/mobile/network/apis/domain/CustomerReview$Format;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->guidedReviewResponses:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 208
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->ratings:Lcom/audible/mobile/network/apis/domain/ReviewRatings;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 211
    iget-object v0, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->reviewContentScores:Lcom/audible/mobile/network/apis/domain/ReviewContentScores;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 212
    iget-object p2, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->submissionDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 213
    iget-object p2, p0, Lcom/audible/mobile/network/apis/domain/CustomerReviewImpl;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
