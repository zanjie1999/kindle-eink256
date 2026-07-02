.class public final Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;
.super Lcom/audible/mobile/domain/impl/AbstractOrderedImpl;
.source "DefaultBookmarkImpl.java"

# interfaces
.implements Lcom/audible/mobile/bookmarks/domain/Bookmark;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/domain/impl/AbstractOrderedImpl<",
        "Lcom/audible/mobile/bookmarks/domain/Bookmark;",
        ">;",
        "Lcom/audible/mobile/bookmarks/domain/Bookmark;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private final bookmarkType:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

.field private final creationDate:J

.field private final customerId:Lcom/audible/mobile/domain/CustomerId;

.field private final endPosition:Lcom/audible/mobile/domain/Time;

.field private id:J

.field private lastUpdateTime:J

.field private notes:Ljava/lang/String;

.field private positionFromStart:Lcom/audible/mobile/domain/Time;

.field private final title:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLcom/audible/mobile/domain/Asin;Lcom/audible/mobile/bookmarks/domain/BookmarkType;Lcom/audible/mobile/domain/Time;JJLjava/lang/String;Lcom/audible/mobile/domain/Time;Ljava/lang/String;Ljava/lang/String;Lcom/audible/mobile/domain/CustomerId;)V
    .locals 0

    .line 96
    invoke-direct {p0}, Lcom/audible/mobile/domain/impl/AbstractOrderedImpl;-><init>()V

    .line 97
    iput-wide p1, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->id:J

    .line 98
    iput-object p3, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->asin:Lcom/audible/mobile/domain/Asin;

    .line 99
    iput-object p5, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->positionFromStart:Lcom/audible/mobile/domain/Time;

    .line 100
    iput-wide p6, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->creationDate:J

    .line 101
    iput-wide p8, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->lastUpdateTime:J

    .line 102
    iput-object p10, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->notes:Ljava/lang/String;

    .line 103
    iput-object p4, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->bookmarkType:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    .line 104
    iput-object p11, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->endPosition:Lcom/audible/mobile/domain/Time;

    .line 105
    iput-object p12, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->title:Ljava/lang/String;

    .line 106
    iput-object p13, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->version:Ljava/lang/String;

    .line 107
    iput-object p14, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->customerId:Lcom/audible/mobile/domain/CustomerId;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    .line 247
    const-class v2, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_3

    .line 250
    :cond_1
    check-cast p1, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;

    .line 252
    iget-wide v2, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->creationDate:J

    iget-wide v4, p1, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->creationDate:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    return v1

    .line 254
    :cond_2
    iget-wide v2, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->id:J

    iget-wide v4, p1, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->id:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    return v1

    .line 256
    :cond_3
    iget-wide v2, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->lastUpdateTime:J

    iget-wide v4, p1, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->lastUpdateTime:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    return v1

    .line 258
    :cond_4
    iget-object v2, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->asin:Lcom/audible/mobile/domain/Asin;

    iget-object v3, p1, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 260
    :cond_5
    iget-object v2, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->bookmarkType:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    iget-object v3, p1, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->bookmarkType:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    if-eq v2, v3, :cond_6

    return v1

    .line 262
    :cond_6
    iget-object v2, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->notes:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->notes:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->notes:Ljava/lang/String;

    if-eqz v2, :cond_8

    :goto_0
    return v1

    .line 264
    :cond_8
    iget-object v2, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->positionFromStart:Lcom/audible/mobile/domain/Time;

    iget-object v3, p1, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->positionFromStart:Lcom/audible/mobile/domain/Time;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    return v1

    .line 266
    :cond_9
    iget-object v2, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->endPosition:Lcom/audible/mobile/domain/Time;

    iget-object v3, p1, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->endPosition:Lcom/audible/mobile/domain/Time;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    return v1

    .line 268
    :cond_a
    iget-object v2, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->title:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v3, p1, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_1

    :cond_b
    iget-object v2, p1, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->title:Ljava/lang/String;

    if-eqz v2, :cond_c

    :goto_1
    return v1

    .line 270
    :cond_c
    iget-object v2, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->version:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->version:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_2

    :cond_d
    if-eqz p1, :cond_e

    :goto_2
    return v1

    :cond_e
    return v0

    :cond_f
    :goto_3
    return v1
.end method

.method public getOrdinal()I
    .locals 3

    .line 190
    invoke-virtual {p0}, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->getPositionFromStart()Lcom/audible/mobile/domain/Time;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/mobile/domain/Time;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-virtual {p0}, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->getPositionFromStart()Lcom/audible/mobile/domain/Time;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/domain/Time;->getAmount()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v1, v0

    return v1
.end method

.method public getPositionFromStart()Lcom/audible/mobile/domain/Time;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->positionFromStart:Lcom/audible/mobile/domain/Time;

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    .line 278
    iget-wide v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->lastUpdateTime:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 279
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->notes:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 280
    iget-wide v4, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->id:J

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v0, v4

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 281
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 282
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->positionFromStart:Lcom/audible/mobile/domain/Time;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 283
    iget-wide v4, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->creationDate:J

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v0, v4

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 284
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->bookmarkType:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 285
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->endPosition:Lcom/audible/mobile/domain/Time;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 286
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->title:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 287
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->version:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_2
    add-int/2addr v1, v3

    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 229
    iget-wide v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->lastUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 230
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->notes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-wide v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->id:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 232
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 233
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->positionFromStart:Lcom/audible/mobile/domain/Time;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 234
    iget-wide v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->creationDate:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 235
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->bookmarkType:Lcom/audible/mobile/bookmarks/domain/BookmarkType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->endPosition:Lcom/audible/mobile/domain/Time;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 237
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/audible/mobile/bookmarks/domain/impl/DefaultBookmarkImpl;->customerId:Lcom/audible/mobile/domain/CustomerId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
