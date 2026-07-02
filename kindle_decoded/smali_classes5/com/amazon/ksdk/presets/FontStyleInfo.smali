.class public final Lcom/amazon/ksdk/presets/FontStyleInfo;
.super Ljava/lang/Object;
.source "FontStyleInfo.java"


# instance fields
.field final mFontFile:Ljava/lang/String;

.field final mFontFileSize:F

.field final mFontSlant:Ljava/lang/String;

.field final mFontWeight:I

.field final mId:J


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;F)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/amazon/ksdk/presets/FontStyleInfo;->mId:J

    .line 26
    iput p3, p0, Lcom/amazon/ksdk/presets/FontStyleInfo;->mFontWeight:I

    .line 27
    iput-object p4, p0, Lcom/amazon/ksdk/presets/FontStyleInfo;->mFontSlant:Ljava/lang/String;

    .line 28
    iput-object p5, p0, Lcom/amazon/ksdk/presets/FontStyleInfo;->mFontFile:Ljava/lang/String;

    .line 29
    iput p6, p0, Lcom/amazon/ksdk/presets/FontStyleInfo;->mFontFileSize:F

    return-void
.end method


# virtual methods
.method public getFontFile()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/ksdk/presets/FontStyleInfo;->mFontFile:Ljava/lang/String;

    return-object v0
.end method

.method public getFontFileSize()F
    .locals 1

    .line 54
    iget v0, p0, Lcom/amazon/ksdk/presets/FontStyleInfo;->mFontFileSize:F

    return v0
.end method

.method public getFontSlant()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/ksdk/presets/FontStyleInfo;->mFontSlant:Ljava/lang/String;

    return-object v0
.end method

.method public getFontWeight()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/amazon/ksdk/presets/FontStyleInfo;->mFontWeight:I

    return v0
.end method

.method public getId()J
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/FontStyleInfo;->mId:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontStyleInfo{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/ksdk/presets/FontStyleInfo;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mFontWeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/FontStyleInfo;->mFontWeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mFontSlant="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/FontStyleInfo;->mFontSlant:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mFontFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/FontStyleInfo;->mFontFile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mFontFileSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/ksdk/presets/FontStyleInfo;->mFontFileSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
