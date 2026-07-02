.class public interface abstract Lcom/amazon/kindle/cover/ICoverProvider;
.super Ljava/lang/Object;
.source "ICoverProvider.java"


# virtual methods
.method public abstract getCover(Lcom/amazon/kindle/model/content/IListableBook;Lcom/amazon/kindle/cover/ImageSizes$Type;Lcom/amazon/kindle/cover/ICoverFilenamer;)Lcom/amazon/kindle/cover/ICoverBuilder;
.end method

.method public abstract getCoverType()Lcom/amazon/kindle/cover/ICoverImageService$CoverType;
.end method

.method public abstract isRemoteProvider()Z
.end method
