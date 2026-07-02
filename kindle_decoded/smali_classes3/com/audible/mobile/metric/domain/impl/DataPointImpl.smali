.class public final Lcom/audible/mobile/metric/domain/impl/DataPointImpl;
.super Ljava/lang/Object;
.source "DataPointImpl.java"

# interfaces
.implements Lcom/audible/mobile/metric/domain/DataPoint;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/metric/domain/DataPoint;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/metric/domain/DataPoint;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final dataType:Lcom/audible/mobile/metric/domain/DataType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/metric/domain/DataType<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/audible/mobile/metric/domain/impl/DataPointImpl$1;

    invoke-direct {v0}, Lcom/audible/mobile/metric/domain/impl/DataPointImpl$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 45
    const-class v0, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/metric/domain/DataType;

    const-class v1, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;-><init>(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/metric/domain/DataType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/audible/mobile/metric/domain/DataType<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "dataType must not be null."

    .line 56
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "data must not be null."

    .line 57
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 58
    iput-object p1, p0, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;->dataType:Lcom/audible/mobile/metric/domain/DataType;

    .line 59
    iput-object p2, p0, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;->data:Ljava/lang/Object;

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

    if-eqz p1, :cond_3

    .line 107
    const-class v2, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    check-cast p1, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;

    .line 113
    iget-object v2, p0, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;->data:Ljava/lang/Object;

    iget-object v3, p1, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;->data:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;->dataType:Lcom/audible/mobile/metric/domain/DataType;

    iget-object p1, p1, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;->dataType:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDataAsString()Ljava/lang/String;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;->data:Ljava/lang/Object;

    instance-of v1, v0, Ljava/lang/Enum;

    if-eqz v1, :cond_0

    .line 91
    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    instance-of v1, v0, Lcom/audible/mobile/domain/Identifier;

    if-eqz v1, :cond_1

    .line 95
    check-cast v0, Lcom/audible/mobile/domain/Identifier;

    invoke-interface {v0}, Lcom/audible/mobile/domain/Identifier;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 98
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;->dataType:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 120
    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;->data:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;->dataType:Lcom/audible/mobile/metric/domain/DataType;

    invoke-interface {v1}, Lcom/audible/mobile/metric/domain/Metric$Named;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\': \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;->getDataAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;->dataType:Lcom/audible/mobile/metric/domain/DataType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 134
    iget-object p2, p0, Lcom/audible/mobile/metric/domain/impl/DataPointImpl;->data:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
