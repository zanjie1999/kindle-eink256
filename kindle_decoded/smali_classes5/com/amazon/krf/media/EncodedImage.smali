.class public Lcom/amazon/krf/media/EncodedImage;
.super Ljava/lang/Object;
.source "EncodedImage.java"


# instance fields
.field private mData:[B

.field private mMimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/amazon/krf/media/EncodedImage;->mMimeType:Ljava/lang/String;

    .line 13
    iput-object p2, p0, Lcom/amazon/krf/media/EncodedImage;->mData:[B

    return-void
.end method


# virtual methods
.method public getImageData()[B
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amazon/krf/media/EncodedImage;->mData:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/krf/media/EncodedImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/krf/media/EncodedImage;->mMimeType:Ljava/lang/String;

    return-void
.end method
