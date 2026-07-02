.class public interface abstract Lcom/amazon/kindle/cover/ICoverImageService;
.super Ljava/lang/Object;
.source "ICoverImageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;,
        Lcom/amazon/kindle/cover/ICoverImageService$LocalCoverInfo;,
        Lcom/amazon/kindle/cover/ICoverImageService$CoverType;
    }
.end annotation


# virtual methods
.method public abstract buildLocalCover(Lcom/amazon/kindle/model/content/IBookID;Lcom/amazon/kindle/cover/ImageSizes$Type;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract buildLocalCover(Lcom/amazon/kindle/model/content/IListableBook;Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract cancelRequest(Lcom/amazon/kindle/cover/ICover;)V
.end method

.method public abstract deleteAllDiskCachedCovers()V
.end method

.method public abstract deleteBookCovers(Ljava/lang/String;)V
.end method

.method public abstract deleteCovers(Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getCoverFilenamer()Lcom/amazon/kindle/cover/ICoverFilenamer;
.end method

.method public abstract getExploreCoverLocation(Lcom/amazon/kindle/model/content/IListableBook;)Ljava/lang/String;
.end method

.method public abstract getExploreCoverLocation(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getImage(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;
.end method

.method public abstract getImage(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)Ljava/lang/String;
.end method

.method public abstract getLargestCoverLocationAboveMinSize(Ljava/lang/String;Lcom/amazon/kindle/cover/ImageSizes$Type;)Lcom/amazon/kindle/cover/ICoverImageService$LocalCoverInfo;
.end method

.method public abstract getMediumCoverLocation(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getSmallCoverLocation(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract refetchCovers(Lcom/amazon/kindle/content/ContentMetadata;)V
.end method

.method public abstract submitCoverFetch(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverImageService$CoverType;ZLcom/amazon/kindle/cover/ICoverImageService$CoverFetchListener;)V
.end method

.method public abstract upgradeCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Z)V
.end method
