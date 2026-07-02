.class Lcom/audible/sdk/AudibleSDK$TitleImpl;
.super Ljava/lang/Object;
.source "AudibleSDK.java"

# interfaces
.implements Lcom/audible/sdk/AudibleSDK$Title;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/sdk/AudibleSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TitleImpl"
.end annotation


# instance fields
.field private final isPartialFile:Z

.field private final origAudioEndByteOffset:I

.field private final origAudioEndMs:I

.field private final origAudioSize:I

.field private final origAudioStartByteOffset:I

.field private final origAudioStartMs:I

.field private final origAudioTimeMs:I


# direct methods
.method constructor <init>(ZIIIIII)V
    .locals 0

    .line 556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 557
    iput-boolean p1, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->isPartialFile:Z

    .line 558
    iput p2, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioStartMs:I

    .line 559
    iput p3, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioEndMs:I

    .line 560
    iput p4, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioTimeMs:I

    .line 561
    iput p5, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioStartByteOffset:I

    .line 562
    iput p6, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioEndByteOffset:I

    .line 563
    iput p7, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioSize:I

    return-void
.end method


# virtual methods
.method public getOrigAudioEndByteOffset()I
    .locals 1

    .line 568
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioEndByteOffset:I

    return v0
.end method

.method public getOrigAudioEndMs()I
    .locals 1

    .line 573
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioEndMs:I

    return v0
.end method

.method public getOrigAudioSize()I
    .locals 1

    .line 578
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioSize:I

    return v0
.end method

.method public getOrigAudioStartByteOffset()I
    .locals 1

    .line 583
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioStartByteOffset:I

    return v0
.end method

.method public getOrigAudioStartMs()I
    .locals 1

    .line 588
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioStartMs:I

    return v0
.end method

.method public getOrigAudioTimeMs()I
    .locals 1

    .line 593
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioTimeMs:I

    return v0
.end method

.method public isPartialFile()Z
    .locals 1

    .line 598
    iget-boolean v0, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->isPartialFile:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "isPartialFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->isPartialFile:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " origAudioStartMs="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioStartMs:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " origAudioEndMs="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioEndMs:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " origAudioTimeMs="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioTimeMs:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " origAudioStartByteOffset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioStartByteOffset:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 609
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " origAudioEndByteOffset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioEndByteOffset:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " origAudioSize="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/audible/sdk/AudibleSDK$TitleImpl;->origAudioSize:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
