.class public Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;
.super Ljava/lang/Object;
.source "GuidedReviewResponseImpl.java"

# interfaces
.implements Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final answer:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final question:Ljava/lang/String;

.field private final questionType:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    new-instance v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Parcel must not be null."

    .line 43
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->answer:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->id:Ljava/lang/String;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->question:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;->values()[Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    move-result-object v0

    aget-object p1, v0, p1

    :goto_0
    iput-object p1, p0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->questionType:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

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

    if-eqz p1, :cond_9

    .line 75
    const-class v2, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 78
    :cond_1
    check-cast p1, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;

    .line 80
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->answer:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->answer:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->answer:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :goto_0
    return v1

    .line 83
    :cond_3
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->id:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->id:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_4
    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :goto_1
    return v1

    .line 86
    :cond_5
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->question:Ljava/lang/String;

    if-nez v2, :cond_6

    iget-object v2, p1, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->question:Ljava/lang/String;

    if-eqz v2, :cond_7

    goto :goto_2

    :cond_6
    iget-object v3, p1, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->question:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :goto_2
    return v1

    .line 89
    :cond_7
    iget-object v2, p0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->questionType:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    iget-object p1, p1, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->questionType:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    if-eq v2, p1, :cond_8

    return v1

    :cond_8
    return v0

    :cond_9
    :goto_3
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 103
    iget-object p2, p0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->answer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 105
    iget-object p2, p0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->question:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 106
    iget-object p2, p0, Lcom/audible/mobile/network/apis/domain/GuidedReviewResponseImpl;->questionType:Lcom/audible/mobile/network/apis/domain/GuidedReviewResponse$QuestionType;

    if-nez p2, :cond_0

    const/4 p2, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
