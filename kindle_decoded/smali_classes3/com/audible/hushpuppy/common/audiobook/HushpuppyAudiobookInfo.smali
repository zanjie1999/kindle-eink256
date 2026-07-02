.class public final Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;
.super Ljava/lang/Object;
.source "HushpuppyAudiobookInfo.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/audiobook/IHushpuppyAudiobookInfo;


# instance fields
.field private final asin:Lcom/audible/mobile/domain/Asin;

.field private final audioFile:Ljava/io/File;

.field private final author:Ljava/lang/String;

.field private final isSample:Z

.field private final narrator:Ljava/lang/String;

.field private final pubDate:Ljava/lang/String;

.field private final publisher:Ljava/lang/String;

.field private final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/audible/hushpuppy/common/relationship/IRelationship;Ljava/io/File;)V
    .locals 10

    .line 40
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->getAudiobook()Lcom/audible/hushpuppy/common/relationship/ICompanion;

    move-result-object v0

    invoke-interface {v0}, Lcom/audible/hushpuppy/common/relationship/ICompanion;->getASIN()Lcom/audible/mobile/domain/Asin;

    move-result-object v0

    :goto_0
    move-object v3, v0

    .line 41
    invoke-interface {p1}, Lcom/audible/hushpuppy/common/relationship/IRelationship;->hasSampleAudiobook()Z

    move-result v9

    const-string v2, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v1, p0

    move-object v8, p2

    .line 40
    invoke-direct/range {v1 .. v9}, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;-><init>(Ljava/lang/String;Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Z)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->title:Ljava/lang/String;

    if-nez p2, :cond_0

    .line 61
    sget-object p2, Lcom/audible/mobile/domain/Asin;->NONE:Lcom/audible/mobile/domain/Asin;

    :cond_0
    iput-object p2, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->asin:Lcom/audible/mobile/domain/Asin;

    .line 62
    iput-object p3, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->narrator:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->publisher:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->pubDate:Ljava/lang/String;

    .line 65
    iput-object p6, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->author:Ljava/lang/String;

    .line 66
    iput-object p7, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->audioFile:Ljava/io/File;

    .line 67
    iput-boolean p8, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->isSample:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 139
    :cond_0
    instance-of v1, p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 142
    :cond_1
    check-cast p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;

    .line 144
    iget-boolean v1, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->isSample:Z

    iget-boolean v3, p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->isSample:Z

    if-eq v1, v3, :cond_2

    return v2

    .line 146
    :cond_2
    iget-object v1, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v1, :cond_3

    iget-object v3, p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_3
    iget-object v1, p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v1, :cond_4

    :goto_0
    return v2

    .line 148
    :cond_4
    iget-object v1, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->audioFile:Ljava/io/File;

    if-eqz v1, :cond_5

    iget-object v3, p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->audioFile:Ljava/io/File;

    invoke-virtual {v1, v3}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_5
    iget-object v1, p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->audioFile:Ljava/io/File;

    if-eqz v1, :cond_6

    :goto_1
    return v2

    .line 150
    :cond_6
    iget-object v1, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->author:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v3, p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->author:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_2

    :cond_7
    iget-object v1, p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->author:Ljava/lang/String;

    if-eqz v1, :cond_8

    :goto_2
    return v2

    .line 152
    :cond_8
    iget-object v1, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->narrator:Ljava/lang/String;

    if-eqz v1, :cond_9

    iget-object v3, p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->narrator:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_3

    :cond_9
    iget-object v1, p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->narrator:Ljava/lang/String;

    if-eqz v1, :cond_a

    :goto_3
    return v2

    .line 154
    :cond_a
    iget-object v1, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->pubDate:Ljava/lang/String;

    if-eqz v1, :cond_b

    iget-object v3, p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->pubDate:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto :goto_4

    :cond_b
    iget-object v1, p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->pubDate:Ljava/lang/String;

    if-eqz v1, :cond_c

    :goto_4
    return v2

    .line 156
    :cond_c
    iget-object v1, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->publisher:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v3, p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->publisher:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_5

    :cond_d
    iget-object v1, p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->publisher:Ljava/lang/String;

    if-eqz v1, :cond_e

    :goto_5
    return v2

    .line 158
    :cond_e
    iget-object v1, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->title:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->title:Ljava/lang/String;

    if-eqz v1, :cond_f

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_6

    :cond_f
    if-eqz p1, :cond_10

    :goto_6
    return v2

    :cond_10
    return v0
.end method

.method public getAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->asin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getAudioFile()Ljava/io/File;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->audioFile:Ljava/io/File;

    return-object v0
.end method

.method public getNarrator()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->narrator:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->title:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 124
    iget-object v2, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->asin:Lcom/audible/mobile/domain/Asin;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 125
    iget-object v2, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->narrator:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 126
    iget-object v2, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->publisher:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 127
    iget-object v2, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->pubDate:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 128
    iget-object v2, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->author:Ljava/lang/String;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 129
    iget-object v2, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->audioFile:Ljava/io/File;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->hashCode()I

    move-result v1

    :cond_6
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 130
    iget-boolean v1, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->isSample:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HushpuppyAudiobookInfo{title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", asin="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->asin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", narrator=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->narrator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", publisher=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->publisher:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", pubDate=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->pubDate:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", author=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->author:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", audioFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->audioFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isSample="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/audible/hushpuppy/common/audiobook/HushpuppyAudiobookInfo;->isSample:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
