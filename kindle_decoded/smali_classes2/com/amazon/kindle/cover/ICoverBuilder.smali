.class public interface abstract Lcom/amazon/kindle/cover/ICoverBuilder;
.super Ljava/lang/Object;
.source "ICoverBuilder.java"


# virtual methods
.method public abstract canBeDecorated()Z
.end method

.method public abstract destroy()V
.end method

.method public abstract getBitmap()Landroid/graphics/Bitmap;
.end method

.method public abstract getBook()Lcom/amazon/kindle/model/content/IListableBook;
.end method

.method public abstract getCanvas()Landroid/graphics/Canvas;
.end method

.method public abstract getCover()Lcom/amazon/kindle/cover/ICover;
.end method

.method public abstract getImageBuffer()[B
.end method

.method public abstract persistToDisk(Lcom/amazon/kindle/cover/dao/CoverDAO;)Z
.end method

.method public abstract setCanBeDecorated(Z)V
.end method

.method public abstract setDecorated(Z)V
.end method
