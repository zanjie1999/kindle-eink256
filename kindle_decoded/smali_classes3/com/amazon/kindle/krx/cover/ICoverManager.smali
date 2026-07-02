.class public interface abstract Lcom/amazon/kindle/krx/cover/ICoverManager;
.super Ljava/lang/Object;
.source "ICoverManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;
    }
.end annotation


# virtual methods
.method public abstract getCoverAsBitmap(Ljava/lang/String;Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Landroid/graphics/Bitmap;
.end method

.method public abstract getCoverAsStream(Ljava/lang/String;Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Ljava/io/InputStream;
.end method

.method public abstract getCoverFilePath(Ljava/lang/String;Lcom/amazon/kindle/krx/cover/ICoverManager$CoverImageType;)Ljava/lang/String;
.end method
