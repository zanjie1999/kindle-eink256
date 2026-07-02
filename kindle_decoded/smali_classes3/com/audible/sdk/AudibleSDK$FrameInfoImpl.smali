.class Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;
.super Ljava/lang/Object;
.source "AudibleSDK.java"

# interfaces
.implements Lcom/audible/sdk/AudibleSDK$FrameInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/sdk/AudibleSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FrameInfoImpl"
.end annotation


# instance fields
.field private final frameAccess:I

.field private final frameNumber:I

.field private final frameOffset:I

.field private final frameSize:I

.field private final frameType:I

.field private final timeStamp:I


# direct methods
.method constructor <init>(IIIIII)V
    .locals 0

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput p1, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->frameType:I

    .line 745
    iput p2, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->timeStamp:I

    .line 746
    iput p3, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->frameNumber:I

    .line 747
    iput p4, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->frameSize:I

    .line 748
    iput p5, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->frameOffset:I

    .line 749
    iput p6, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->frameAccess:I

    return-void
.end method


# virtual methods
.method public getFrameAccess()I
    .locals 1

    .line 779
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->frameAccess:I

    return v0
.end method

.method public getFrameNumber()I
    .locals 1

    .line 764
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->frameNumber:I

    return v0
.end method

.method public getFrameOffset()I
    .locals 1

    .line 774
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->frameOffset:I

    return v0
.end method

.method public getFrameSize()I
    .locals 1

    .line 769
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->frameSize:I

    return v0
.end method

.method public getFrameType()I
    .locals 1

    .line 754
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->frameType:I

    return v0
.end method

.method public getTimeStamp()I
    .locals 1

    .line 759
    iget v0, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->timeStamp:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "frameType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->frameType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " timeStamp="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->timeStamp:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 787
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " frameNumber="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->frameNumber:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 788
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " frameSize="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->frameSize:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 789
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " frameOffset="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->frameOffset:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 790
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " frameAccess="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/audible/sdk/AudibleSDK$FrameInfoImpl;->frameAccess:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
