.class public interface abstract Lcom/amazon/krf/platform/KRFBook;
.super Ljava/lang/Object;
.source "KRFBook.java"

# interfaces
.implements Lcom/amazon/krf/platform/Disposable;


# virtual methods
.method public abstract attachContainer(Ljava/io/File;)Z
.end method

.method public abstract createContentDecorationStyle(IIIFF)Lcom/amazon/krf/platform/ContentDecorationStyle;
.end method

.method public abstract createContentViewer(Lcom/amazon/krf/platform/ViewSettings;)Lcom/amazon/krf/platform/ContentViewer;
.end method

.method public abstract createDefaultContentDecorationStyle(Lcom/amazon/krf/platform/ContentDecorationStyle$DefaultContentDecorationStyleID;)Lcom/amazon/krf/platform/ContentDecorationStyle;
.end method

.method public abstract createGraphicalHighlightStyle(IFF)Lcom/amazon/krf/platform/ContentDecorationStyle;
.end method

.method public abstract createImageForResourceId(Ljava/lang/String;)Lcom/amazon/krf/media/EncodedImage;
.end method

.method public abstract createImageForResourceName(Ljava/lang/String;)Lcom/amazon/krf/media/EncodedImage;
.end method

.method public abstract createPageInfoProvider()Lcom/amazon/krf/platform/PageInfoProvider;
.end method

.method public abstract createPageInfoProvider(Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/PageInfoProvider;
.end method

.method public abstract createPosition(J)Lcom/amazon/krf/platform/Position;
.end method

.method public abstract createPosition(Lcom/amazon/krf/platform/PageInfoProvider;ILandroid/graphics/PointF;)Lcom/amazon/krf/platform/Position;
.end method

.method public abstract createPosition(Ljava/lang/String;)Lcom/amazon/krf/platform/Position;
.end method

.method public abstract createThumbnailRenderer(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/PageInfoProvider;)Lcom/amazon/krf/platform/ThumbnailRenderer;
.end method

.method public abstract createUnderlineStyle(IF)Lcom/amazon/krf/platform/ContentDecorationStyle;
.end method

.method public abstract createWordIterator()Lcom/amazon/krf/platform/WordIterator;
.end method

.method public abstract createWordIterator(I)Lcom/amazon/krf/platform/WordIterator;
.end method

.method public abstract createWordIterator(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/WordIterator;
.end method

.method public abstract createWordIterator(Lcom/amazon/krf/platform/Position;I)Lcom/amazon/krf/platform/WordIterator;
.end method

.method public abstract createWordIterator(Lcom/amazon/krf/platform/Position;ILcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/WordIterator;
.end method

.method public abstract extractPointFromPosition(Lcom/amazon/krf/platform/Position;)Landroid/graphics/PointF;
.end method

.method public abstract getBookInfo()Lcom/amazon/krf/platform/KRFBookInfo;
.end method

.method public abstract getCachePath()Ljava/lang/String;
.end method

.method public abstract getCapabilities()Lcom/amazon/krf/platform/KRFCapabilities;
.end method

.method public abstract getContainerIDsForPosition(Lcom/amazon/krf/platform/Position;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/krf/platform/Position;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getEquivalentPositionInReadingMode(Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings$ReadingMode;)Lcom/amazon/krf/platform/Position;
.end method

.method public abstract getNativeHandle()J
.end method

.method public abstract getNavigationControl()Lcom/amazon/krf/platform/NavigationControl;
.end method

.method public abstract getReadingModeFromPosition(Lcom/amazon/krf/platform/Position;)Lcom/amazon/krf/platform/ViewSettings$ReadingMode;
.end method

.method public abstract setCachePath(Ljava/lang/String;)V
.end method

.method public abstract setContentDecorationDataProvider(Lcom/amazon/krf/platform/ContentDecorationDataProvider;)V
.end method

.method public abstract setContentMissingListener(Lcom/amazon/krf/platform/ContentMissingListener;)V
.end method
