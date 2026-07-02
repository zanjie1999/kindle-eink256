.class public final Lcom/amazon/kindle/cms/ipc/SoftwareVersion;
.super Ljava/lang/Object;
.source "SoftwareVersion.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/amazon/kindle/cms/ipc/SoftwareVersion;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/kindle/cms/ipc/SoftwareVersion;",
            ">;"
        }
    .end annotation
.end field

.field private static final s_versionPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final m_build:I

.field private final m_major:I

.field private final m_minor:I

.field private final m_release:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion$1;

    invoke-direct {v0}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion$1;-><init>()V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->CREATOR:Landroid/os/Parcelable$Creator;

    const-string v0, "(\\d+)(?:\\.(\\d+)(?:\\.(\\d+)(?:\\.(\\d+))?)?)?"

    .line 166
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->s_versionPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_major:I

    .line 29
    iput p2, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_minor:I

    .line 30
    iput p3, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_release:I

    .line 31
    iput p4, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_build:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_major:I

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_minor:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_release:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_build:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amazon/kindle/cms/ipc/SoftwareVersion$1;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)I
    .locals 4

    .line 113
    iget v0, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_major:I

    iget v1, p1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_major:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 117
    :cond_1
    iget v0, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_minor:I

    iget v1, p1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_minor:I

    if-eq v0, v1, :cond_3

    if-ge v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 121
    :cond_3
    iget v0, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_release:I

    iget v1, p1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_release:I

    if-eq v0, v1, :cond_5

    if-ge v0, v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    :goto_2
    return v2

    .line 125
    :cond_5
    iget v0, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_build:I

    iget p1, p1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_build:I

    if-eq v0, p1, :cond_7

    if-ge v0, p1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x1

    :goto_3
    return v2

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 9
    check-cast p1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->compareTo(Lcom/amazon/kindle/cms/ipc/SoftwareVersion;)I

    move-result p1

    return p1
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

    if-eqz p1, :cond_3

    .line 88
    const-class v2, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 90
    :cond_1
    check-cast p1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    .line 92
    iget v2, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_build:I

    iget v3, p1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_build:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_major:I

    iget v3, p1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_major:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_minor:I

    iget v3, p1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_minor:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_release:I

    iget p1, p1, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_release:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 102
    iget v0, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_major:I

    mul-int/lit8 v0, v0, 0x1f

    .line 103
    iget v1, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_minor:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 104
    iget v1, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_release:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 105
    iget v1, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_build:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 135
    iget v1, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_major:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_minor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_release:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_build:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%d.%d.%d.%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 147
    iget p2, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_major:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget p2, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_minor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget p2, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_release:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget p2, p0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;->m_build:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
