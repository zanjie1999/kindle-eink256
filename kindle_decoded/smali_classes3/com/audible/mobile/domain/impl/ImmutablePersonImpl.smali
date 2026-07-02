.class public final Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;
.super Lcom/audible/mobile/domain/impl/AbstractOrderedImpl;
.source "ImmutablePersonImpl.java"

# interfaces
.implements Lcom/audible/mobile/domain/Person;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/audible/mobile/domain/impl/AbstractOrderedImpl<",
        "Lcom/audible/mobile/domain/Person;",
        ">;",
        "Lcom/audible/mobile/domain/Person;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final name:Ljava/lang/String;

.field private final ordinal:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/audible/mobile/domain/impl/AbstractOrderedImpl;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;->name:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;->ordinal:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/audible/mobile/domain/impl/ImmutablePersonImpl$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;-><init>(Landroid/os/Parcel;)V

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

    if-eqz p1, :cond_4

    .line 69
    const-class v2, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    check-cast p1, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;

    .line 75
    iget v2, p0, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;->ordinal:I

    iget v3, p1, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;->ordinal:I

    if-eq v2, v3, :cond_2

    return v1

    .line 78
    :cond_2
    iget-object v2, p0, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;->name:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public getOrdinal()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;->ordinal:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 89
    iget v1, p0, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;->ordinal:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 59
    iget-object p2, p0, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    iget p2, p0, Lcom/audible/mobile/domain/impl/ImmutablePersonImpl;->ordinal:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
