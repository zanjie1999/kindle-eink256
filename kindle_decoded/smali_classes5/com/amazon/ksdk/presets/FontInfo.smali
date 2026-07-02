.class public final Lcom/amazon/ksdk/presets/FontInfo;
.super Ljava/lang/Object;
.source "FontInfo.java"


# instance fields
.field final mBitmapPath:Ljava/lang/String;

.field final mBitmapPathAaMenu:Ljava/lang/String;

.field final mBoldFontFamily:Ljava/lang/String;

.field final mDisplayName:Ljava/lang/String;

.field final mFontFamily:Ljava/lang/String;

.field final mFontStyles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/FontStyleInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mId:J

.field final mIsDefault:Z

.field final mReadingFontType:Lcom/amazon/ksdk/presets/FontOriginType;

.field final mResourceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;Lcom/amazon/ksdk/presets/FontOriginType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/FontStyleInfo;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/ksdk/presets/FontOriginType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lcom/amazon/ksdk/presets/FontInfo;->mId:J

    .line 43
    iput-boolean p3, p0, Lcom/amazon/ksdk/presets/FontInfo;->mIsDefault:Z

    .line 44
    iput-object p4, p0, Lcom/amazon/ksdk/presets/FontInfo;->mDisplayName:Ljava/lang/String;

    .line 45
    iput-object p5, p0, Lcom/amazon/ksdk/presets/FontInfo;->mFontFamily:Ljava/lang/String;

    .line 46
    iput-object p6, p0, Lcom/amazon/ksdk/presets/FontInfo;->mBoldFontFamily:Ljava/lang/String;

    .line 47
    iput-object p7, p0, Lcom/amazon/ksdk/presets/FontInfo;->mFontStyles:Ljava/util/ArrayList;

    .line 48
    iput-object p8, p0, Lcom/amazon/ksdk/presets/FontInfo;->mResourceName:Ljava/lang/String;

    .line 49
    iput-object p9, p0, Lcom/amazon/ksdk/presets/FontInfo;->mReadingFontType:Lcom/amazon/ksdk/presets/FontOriginType;

    .line 50
    iput-object p10, p0, Lcom/amazon/ksdk/presets/FontInfo;->mBitmapPath:Ljava/lang/String;

    .line 51
    iput-object p11, p0, Lcom/amazon/ksdk/presets/FontInfo;->mBitmapPathAaMenu:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBitmapPath()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/amazon/ksdk/presets/FontInfo;->mBitmapPath:Ljava/lang/String;

    return-object v0
.end method

.method public getBitmapPathAaMenu()Ljava/lang/String;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/amazon/ksdk/presets/FontInfo;->mBitmapPathAaMenu:Ljava/lang/String;

    return-object v0
.end method

.method public getBoldFontFamily()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/ksdk/presets/FontInfo;->mBoldFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/ksdk/presets/FontInfo;->mDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getFontFamily()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/amazon/ksdk/presets/FontInfo;->mFontFamily:Ljava/lang/String;

    return-object v0
.end method

.method public getFontStyles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/FontStyleInfo;",
            ">;"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/amazon/ksdk/presets/FontInfo;->mFontStyles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 56
    iget-wide v0, p0, Lcom/amazon/ksdk/presets/FontInfo;->mId:J

    return-wide v0
.end method

.method public getIsDefault()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/amazon/ksdk/presets/FontInfo;->mIsDefault:Z

    return v0
.end method

.method public getReadingFontType()Lcom/amazon/ksdk/presets/FontOriginType;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/ksdk/presets/FontInfo;->mReadingFontType:Lcom/amazon/ksdk/presets/FontOriginType;

    return-object v0
.end method

.method public getResourceName()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/ksdk/presets/FontInfo;->mResourceName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FontInfo{mId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/ksdk/presets/FontInfo;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mIsDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/amazon/ksdk/presets/FontInfo;->mIsDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mDisplayName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/FontInfo;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mFontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/FontInfo;->mFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mBoldFontFamily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/FontInfo;->mBoldFontFamily:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mFontStyles="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/FontInfo;->mFontStyles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mResourceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/FontInfo;->mResourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mReadingFontType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/FontInfo;->mReadingFontType:Lcom/amazon/ksdk/presets/FontOriginType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",mBitmapPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/FontInfo;->mBitmapPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mBitmapPathAaMenu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/ksdk/presets/FontInfo;->mBitmapPathAaMenu:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
