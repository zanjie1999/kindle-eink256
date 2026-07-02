.class public Lcom/amazon/system/drawing/Rectangle;
.super Ljava/lang/Object;
.source "Rectangle.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 301
    new-instance v0, Lcom/amazon/system/drawing/Rectangle$1;

    invoke-direct {v0}, Lcom/amazon/system/drawing/Rectangle$1;-><init>()V

    sput-object v0, Lcom/amazon/system/drawing/Rectangle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 50
    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 51
    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 52
    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 69
    iput p2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 70
    iput p3, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 71
    iput p4, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/system/drawing/Rectangle$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/system/drawing/Rectangle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public add(Lcom/amazon/system/drawing/Rectangle;)V
    .locals 5

    .line 168
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v1, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 169
    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v2, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 170
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v2, v3

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    sub-int/2addr v2, v0

    .line 171
    iget v3, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v4, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v3, v4

    iget v4, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget p1, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    sub-int/2addr p1, v1

    .line 172
    iput v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    .line 173
    iput v1, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    .line 174
    iput v2, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    .line 175
    iput p1, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    return-void
.end method

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

    if-nez p1, :cond_1

    return v1

    .line 254
    :cond_1
    instance-of v2, p1, Lcom/amazon/system/drawing/Rectangle;

    if-nez v2, :cond_2

    return v1

    .line 257
    :cond_2
    check-cast p1, Lcom/amazon/system/drawing/Rectangle;

    .line 258
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->height:I

    if-eq v2, v3, :cond_3

    return v1

    .line 261
    :cond_3
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->width:I

    if-eq v2, v3, :cond_4

    return v1

    .line 264
    :cond_4
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v3, p1, Lcom/amazon/system/drawing/Rectangle;->x:I

    if-eq v2, v3, :cond_5

    return v1

    .line 267
    :cond_5
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget p1, p1, Lcom/amazon/system/drawing/Rectangle;->y:I

    if-eq v2, p1, :cond_6

    return v1

    :cond_6
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 279
    iget v0, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x1a3

    .line 280
    iget v2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 281
    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x1a3

    .line 282
    iget v1, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 295
    iget p2, p0, Lcom/amazon/system/drawing/Rectangle;->x:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 296
    iget p2, p0, Lcom/amazon/system/drawing/Rectangle;->y:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 297
    iget p2, p0, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget p2, p0, Lcom/amazon/system/drawing/Rectangle;->width:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
