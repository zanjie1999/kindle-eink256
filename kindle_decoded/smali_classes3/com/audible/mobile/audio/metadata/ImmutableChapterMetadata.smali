.class public final Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;
.super Ljava/lang/Object;
.source "ImmutableChapterMetadata.java"

# interfaces
.implements Lcom/audible/mobile/audio/metadata/ChapterMetadata;


# static fields
.field private static final CHAPTER_PREFIX:Ljava/lang/String; = "Chapter "

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private final globalIndex:I

.field private final length:I

.field private final level:I

.field private final levelIndex:I

.field private final startTime:I

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 166
    new-instance v0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata$1;

    invoke-direct {v0}, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata$1;-><init>()V

    sput-object v0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Chapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIIIILjava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    iput p1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->level:I

    .line 120
    iput p2, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->levelIndex:I

    .line 121
    iput p3, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->globalIndex:I

    .line 122
    iput p4, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->startTime:I

    .line 123
    iput p5, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->length:I

    if-nez p6, :cond_0

    const-string p6, ""

    .line 124
    :cond_0
    iput-object p6, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->title:Ljava/lang/String;

    .line 125
    invoke-static {p7}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p7, Ljava/util/List;

    iput-object p7, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->children:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Lcom/audible/mobile/audio/metadata/ChapterMetadata;)V
    .locals 8

    .line 87
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;-><init>(IIIILjava/lang/String;Lcom/audible/mobile/audio/metadata/ChapterMetadata;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(IIIILjava/lang/String;Lcom/audible/mobile/audio/metadata/ChapterMetadata;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/lang/String;",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;)V"
        }
    .end annotation

    if-nez p6, :cond_0

    const/4 p6, 0x0

    const/4 v1, 0x0

    goto :goto_0

    .line 103
    :cond_0
    invoke-interface {p6}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getLevel()I

    move-result p6

    add-int/lit8 p6, p6, 0x1

    move v1, p6

    :goto_0
    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p7

    invoke-direct/range {v0 .. v7}, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;-><init>(IIIIILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p1

    move v3, p2

    move-object v5, p3

    .line 72
    invoke-direct/range {v0 .. v6}, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;-><init>(IIIILjava/lang/String;Lcom/audible/mobile/audio/metadata/ChapterMetadata;)V

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/audible/mobile/audio/metadata/ChapterMetadata;)I
    .locals 2

    const-string v0, "The Chapter to compare to cannot be null!"

    .line 234
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    iget v0, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->startTime:I

    invoke-interface {p1}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getStartTime()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 236
    iget v0, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->startTime:I

    invoke-interface {p1}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getStartTime()I

    move-result p1

    :goto_0
    sub-int/2addr v0, p1

    return v0

    .line 237
    :cond_0
    iget v0, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->globalIndex:I

    invoke-interface {p1}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getIndex()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 238
    iget v0, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->globalIndex:I

    invoke-interface {p1}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getIndex()I

    move-result p1

    goto :goto_0

    .line 239
    :cond_1
    iget v0, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->level:I

    invoke-interface {p1}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getLevel()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 240
    iget v0, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->level:I

    invoke-interface {p1}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getLevel()I

    move-result p1

    goto :goto_0

    .line 242
    :cond_2
    iget v0, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->levelIndex:I

    invoke-interface {p1}, Lcom/audible/mobile/audio/metadata/ChapterMetadata;->getLevelIndex()I

    move-result p1

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 33
    check-cast p1, Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    invoke-virtual {p0, p1}, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->compareTo(Lcom/audible/mobile/audio/metadata/ChapterMetadata;)I

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

    .line 251
    :cond_0
    instance-of v1, p1, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 254
    :cond_1
    check-cast p1, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;

    .line 256
    iget v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->level:I

    iget v3, p1, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->level:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->levelIndex:I

    iget v3, p1, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->levelIndex:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->globalIndex:I

    iget v3, p1, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->globalIndex:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->startTime:I

    iget v3, p1, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->startTime:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->length:I

    iget v3, p1, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->length:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->children:Ljava/util/List;

    iget-object p1, p1, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->children:Ljava/util/List;

    .line 261
    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/audio/metadata/ChapterMetadata;",
            ">;"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->children:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 204
    iget v0, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->globalIndex:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->length:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->level:I

    return v0
.end method

.method public getLevelIndex()I
    .locals 1

    .line 216
    iget v0, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->levelIndex:I

    return v0
.end method

.method public getStartTime()I
    .locals 1

    .line 222
    iget v0, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->startTime:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 267
    iget v0, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->level:I

    mul-int/lit8 v0, v0, 0x1f

    .line 268
    iget v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->levelIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 269
    iget v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->globalIndex:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 270
    iget v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->startTime:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 271
    iget v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->length:I

    add-int/2addr v0, v1

    .line 272
    iget-object v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/audible/mobile/audio/metadata/ChapterMetadata;

    mul-int/lit8 v0, v0, 0x1f

    .line 273
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImmutableChapterMetadata{level="

    .line 282
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->level:I

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", levelIndex="

    .line 284
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->levelIndex:I

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", globalIndex="

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->globalIndex:I

    .line 287
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", startTime="

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->startTime:I

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->length:I

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    .line 292
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->title:Ljava/lang/String;

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", children=["

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->children:Ljava/util/List;

    const-string v2, ", "

    .line 295
    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]}"

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 157
    iget p2, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->level:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget p2, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->levelIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget p2, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->globalIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget p2, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->startTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget p2, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->length:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/audible/mobile/audio/metadata/ImmutableChapterMetadata;->children:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
