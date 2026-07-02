.class public final Lcom/audible/hushpuppy/common/ebook/EBookInfo;
.super Ljava/lang/Object;
.source "EBookInfo.java"


# instance fields
.field private final ebookAsin:Lcom/audible/mobile/domain/Asin;

.field private final format:Ljava/lang/String;

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/audible/mobile/domain/Asin;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->ebookAsin:Lcom/audible/mobile/domain/Asin;

    .line 28
    iput-object p2, p0, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->version:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->format:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 55
    :cond_0
    instance-of v1, p1, Lcom/audible/hushpuppy/common/ebook/EBookInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 59
    :cond_1
    check-cast p1, Lcom/audible/hushpuppy/common/ebook/EBookInfo;

    .line 61
    iget-object v1, p0, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->ebookAsin:Lcom/audible/mobile/domain/Asin;

    if-eqz v1, :cond_2

    iget-object v3, p1, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->ebookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->ebookAsin:Lcom/audible/mobile/domain/Asin;

    if-eqz v1, :cond_3

    :goto_0
    return v2

    .line 64
    :cond_3
    iget-object v1, p0, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->version:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v3, p1, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->version:Ljava/lang/String;

    if-eqz v1, :cond_5

    :goto_1
    return v2

    .line 67
    :cond_5
    iget-object v1, p0, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->format:Ljava/lang/String;

    iget-object p1, p1, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->format:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_7

    :goto_2
    return v2

    :cond_7
    return v0
.end method

.method public getEBookAsin()Lcom/audible/mobile/domain/Asin;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->ebookAsin:Lcom/audible/mobile/domain/Asin;

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->ebookAsin:Lcom/audible/mobile/domain/Asin;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 77
    iget-object v2, p0, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->version:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 78
    iget-object v2, p0, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->format:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EBookInfo{ebookAsin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->ebookAsin:Lcom/audible/mobile/domain/Asin;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", format=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/audible/hushpuppy/common/ebook/EBookInfo;->format:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
