.class public interface abstract Lcom/amazon/kindle/yj/IMarginalContentProviderContext;
.super Ljava/lang/Object;
.source "IMarginalContentProviderContext.java"


# virtual methods
.method public abstract addAdditionalFooterStringsFromProviders(Ljava/util/List;Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;Landroid/graphics/Paint;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;",
            "Lcom/amazon/android/docviewer/mobi/FooterContentType$Types;",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract destroy()V
.end method

.method public abstract getBookEndPosition()I
.end method

.method public abstract getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;
.end method

.method public abstract getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;
.end method

.method public abstract getColorTheme(Lcom/amazon/android/docviewer/KindleDocColorMode;)Ljava/lang/Object;
.end method

.method public abstract getColumnCount()I
.end method

.method public abstract getDocView()Landroid/view/View;
.end method

.method public abstract getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;
.end method

.method public abstract getFooterContentProvider()Lcom/amazon/android/docviewer/mobi/FooterContentProvider;
.end method

.method public abstract getFooterContentType()Lcom/amazon/android/docviewer/mobi/FooterContentType;
.end method

.method public abstract getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;
.end method

.method public abstract getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;
.end method

.method public abstract getNextChapterPosition(I)I
.end method

.method public abstract getNumWordsBetweenPositions(III)I
.end method

.method public abstract getPageEndPosition()I
.end method

.method public abstract getPageLabelProvider()Lcom/amazon/android/docviewer/IPageLabelProvider;
.end method

.method public abstract getPageStartPosition()I
.end method

.method public abstract getReadingMode()Lcom/amazon/kindle/dualreadingmode/ReadingMode;
.end method

.method public abstract getSettings()Ljava/lang/Object;
.end method

.method public abstract getTicrDocViewerEventHandler()Lcom/amazon/kindle/ticr/ITicrDocViewerEventHandler;
.end method

.method public abstract hasTOC()Z
.end method

.method public abstract userLocationFromPosition(I)I
.end method
