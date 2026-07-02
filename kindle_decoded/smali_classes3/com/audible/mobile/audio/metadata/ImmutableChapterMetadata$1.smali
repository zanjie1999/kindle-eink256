.class Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata$1;
.super Ljava/lang/Object;
.source "ImmutableChapterMetadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;
    .locals 8

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 175
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 176
    const-class v0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v7, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 177
    new-instance p1, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;-><init>(IIIIILjava/lang/String;Ljava/util/List;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 166
    invoke-virtual {p0, p1}, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata$1;->createFromParcel(Landroid/os/Parcel;)Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;
    .locals 0

    .line 183
    new-array p1, p1, [Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 166
    invoke-virtual {p0, p1}, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata$1;->newArray(I)[Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;

    move-result-object p1

    return-object p1
.end method
