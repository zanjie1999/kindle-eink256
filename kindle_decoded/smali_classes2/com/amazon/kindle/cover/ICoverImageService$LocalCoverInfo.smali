.class public Lcom/amazon/kindle/cover/ICoverImageService$LocalCoverInfo;
.super Ljava/lang/Object;
.source "ICoverImageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cover/ICoverImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalCoverInfo"
.end annotation


# instance fields
.field public filePath:Ljava/lang/String;

.field public size:Lcom/amazon/kindle/cover/ImageSizes$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/amazon/kindle/cover/ICoverImageService$LocalCoverInfo;->filePath:Ljava/lang/String;

    .line 63
    iput-object p2, p0, Lcom/amazon/kindle/cover/ICoverImageService$LocalCoverInfo;->size:Lcom/amazon/kindle/cover/ImageSizes$Type;

    return-void
.end method
