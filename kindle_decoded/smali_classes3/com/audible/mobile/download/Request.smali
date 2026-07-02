.class public Lcom/audible/mobile/download/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/download/Request;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private final contentType:Lcom/audible/mobile/download/ContentType;

.field private final customerId:Lcom/audible/mobile/domain/CustomerId;

.field private optionalPayload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/audible/mobile/download/Request$1;

    invoke-direct {v0}, Lcom/audible/mobile/download/Request$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/download/Request;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/download/ContentType;Lcom/audible/mobile/domain/CustomerId;Lcom/audible/mobile/domain/Asin;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/audible/mobile/download/Request;->contentType:Lcom/audible/mobile/download/ContentType;

    .line 45
    iput-object p3, p0, Lcom/audible/mobile/download/Request;->asin:Lcom/audible/mobile/domain/Asin;

    .line 46
    iput-object p2, p0, Lcom/audible/mobile/download/Request;->customerId:Lcom/audible/mobile/domain/CustomerId;

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

    if-eqz p1, :cond_8

    .line 79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 82
    :cond_1
    check-cast p1, Lcom/audible/mobile/download/Request;

    .line 84
    iget-object v2, p0, Lcom/audible/mobile/download/Request;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/audible/mobile/download/Request;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/audible/mobile/download/Request;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 86
    :cond_3
    iget-object v2, p0, Lcom/audible/mobile/download/Request;->contentType:Lcom/audible/mobile/download/ContentType;

    iget-object v3, p1, Lcom/audible/mobile/download/Request;->contentType:Lcom/audible/mobile/download/ContentType;

    if-eq v2, v3, :cond_4

    return v1

    .line 88
    :cond_4
    iget-object v2, p0, Lcom/audible/mobile/download/Request;->customerId:Lcom/audible/mobile/domain/CustomerId;

    iget-object v3, p1, Lcom/audible/mobile/download/Request;->customerId:Lcom/audible/mobile/domain/CustomerId;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    return v1

    .line 90
    :cond_5
    iget-object v2, p0, Lcom/audible/mobile/download/Request;->optionalPayload:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/mobile/download/Request;->optionalPayload:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    :goto_1
    return v1

    :cond_7
    return v0

    :cond_8
    :goto_2
    return v1
.end method

.method public getAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/audible/mobile/download/Request;->asin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getContentType()Lcom/audible/mobile/download/ContentType;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/audible/mobile/download/Request;->contentType:Lcom/audible/mobile/download/ContentType;

    return-object v0
.end method

.method public getCustomerId()Lcom/audible/mobile/domain/CustomerId;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/audible/mobile/download/Request;->customerId:Lcom/audible/mobile/domain/CustomerId;

    return-object v0
.end method

.method public getOptionalPayload()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/audible/mobile/download/Request;->optionalPayload:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/audible/mobile/download/Request;->contentType:Lcom/audible/mobile/download/ContentType;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 100
    iget-object v1, p0, Lcom/audible/mobile/download/Request;->asin:Lcom/audible/mobile/domain/Asin;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 101
    iget-object v1, p0, Lcom/audible/mobile/download/Request;->optionalPayload:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 102
    iget-object v1, p0, Lcom/audible/mobile/download/Request;->customerId:Lcom/audible/mobile/domain/CustomerId;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setOptionalPayload(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/audible/mobile/download/Request;->optionalPayload:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/audible/mobile/download/Request;->contentType:Lcom/audible/mobile/download/ContentType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 116
    iget-object v0, p0, Lcom/audible/mobile/download/Request;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 117
    iget-object v0, p0, Lcom/audible/mobile/download/Request;->optionalPayload:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcom/audible/mobile/download/Request;->customerId:Lcom/audible/mobile/domain/CustomerId;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
