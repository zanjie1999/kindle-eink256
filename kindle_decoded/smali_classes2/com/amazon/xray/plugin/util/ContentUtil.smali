.class public Lcom/amazon/xray/plugin/util/ContentUtil;
.super Ljava/lang/Object;
.source "ContentUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;
    }
.end annotation


# static fields
.field private static final BLANK_PAGE_LABEL:Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.plugin.util.ContentUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    const-string v1, ""

    invoke-direct {v0, v1, v1}, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/xray/plugin/util/ContentUtil;->BLANK_PAGE_LABEL:Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    return-void
.end method

.method public static getImage(Ljava/lang/String;Lcom/amazon/kindle/krx/content/images/ImageScaling;)Landroid/graphics/Bitmap;
    .locals 1

    .line 96
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 98
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string p1, "error getting image, unable to get content for current book"

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 102
    :cond_0
    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/krx/content/IBookContent;->getImageFromImageId(Ljava/lang/String;Lcom/amazon/kindle/krx/content/images/ImageScaling;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static getPageLabel(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;
    .locals 7

    if-nez p0, :cond_0

    .line 52
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->BLANK_PAGE_LABEL:Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    return-object p0

    .line 55
    :cond_0
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    .line 56
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    .line 60
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookPageNumberManager()Lcom/amazon/kindle/krx/reader/IPageNumberManager;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 61
    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPageNumberManager;->isPageNumberingSupported()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 62
    invoke-interface {v3, p0}, Lcom/amazon/kindle/krx/reader/IPageNumberManager;->getPageForPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/reader/IPage;

    move-result-object v2

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 69
    sget p0, Lcom/amazon/kindle/xray/R$string;->xray_page_number:I

    new-array v0, v4, [Ljava/lang/Object;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPage;->getPageLabel()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    invoke-virtual {v1, p0, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 70
    sget v0, Lcom/amazon/kindle/xray/R$string;->xray_page_number_full:I

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPage;->getPageLabel()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {v1, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :cond_2
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;

    move-result-object v0

    if-nez v0, :cond_3

    .line 75
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string v0, "error building page label, unable to get content for current book"

    invoke-static {p0, v0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->BLANK_PAGE_LABEL:Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    return-object p0

    .line 79
    :cond_3
    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/content/IBookContent;->getLocationFromPosition(Lcom/amazon/kindle/krx/reader/IPosition;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    .line 80
    sget v0, Lcom/amazon/kindle/xray/R$string;->xray_location_number:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_location_number_full:I

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    .line 84
    :goto_0
    new-instance v1, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    invoke-direct {v1, p0, v0}, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getWords(II)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-ne p0, p1, :cond_0

    return-object v0

    .line 122
    :cond_0
    invoke-static {p0}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    .line 123
    invoke-static {p1}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;

    move-result-object v1

    if-nez v1, :cond_2

    .line 132
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string p1, "error getting text, unable to get content for current book"

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 136
    :cond_2
    invoke-interface {v1, p0, p1}, Lcom/amazon/kindle/krx/content/IBookContent;->getWords(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :cond_3
    :goto_0
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string p1, "error getting text, unable to create position(s)"

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getWordsAroundPosition(Lcom/amazon/xray/model/object/PositionRange;II)[Ljava/lang/String;
    .locals 2

    .line 155
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookContent()Lcom/amazon/kindle/krx/content/IBookContent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 157
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string p1, "error getting text, unable to get content for current book"

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    .line 158
    filled-new-array {p0, p0, p0}, [Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/xray/model/object/PositionRange;->getLocation()I

    move-result v1

    invoke-static {v1}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    .line 162
    invoke-virtual {p0}, Lcom/amazon/xray/model/object/PositionRange;->getEnd()I

    move-result p0

    invoke-static {p0}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    .line 164
    invoke-interface {v0, v1, p0, p1, p2}, Lcom/amazon/kindle/krx/content/IBookContent;->getWordsAroundPosition(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;II)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static highlightText(II)Z
    .locals 4

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    if-ge p1, p0, :cond_0

    .line 232
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string p1, "Start position is greater than end position; cannot highlight text"

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 237
    :cond_0
    invoke-static {p0}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    .line 238
    invoke-static {p1}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    if-eqz p0, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 245
    :cond_1
    new-instance v2, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;

    sget-object v3, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->HIGHLIGHT:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    invoke-direct {v2, v3}, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;-><init>(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)V

    .line 246
    invoke-virtual {v2, p0}, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->setStartPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->setEndPosition(Lcom/amazon/kindle/krx/reader/IPosition;)Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/kindle/krx/content/KRXAnnotationBuilder;->buildAnnotation()Lcom/amazon/kindle/krx/content/KRXIAnnotation;

    move-result-object p0

    .line 248
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookAnnotationManager()Lcom/amazon/kindle/krx/reader/IAnnotationManager;

    move-result-object p1

    if-nez p1, :cond_2

    .line 250
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string p1, "Annotation Manager is null; cannot highlight text"

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    new-array v2, v0, [Lcom/amazon/kindle/krx/content/KRXIAnnotation;

    aput-object p0, v2, v1

    .line 253
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/reader/IAnnotationManager;->addAnnotations(Ljava/util/Collection;)V

    return v0

    .line 240
    :cond_3
    :goto_0
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string p1, "Start or end position is null; cannot highlight text"

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static isTextHighlighted(II)Z
    .locals 6

    const/4 v0, 0x1

    sub-int/2addr p1, v0

    const/4 v1, 0x0

    if-ge p1, p0, :cond_0

    .line 181
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string p1, "Start position is greater than end position; cannot retrieve highlighted text"

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 186
    :cond_0
    invoke-static {p0}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    .line 187
    invoke-static {p1}, Lcom/amazon/xray/plugin/util/NavigatorUtil;->createPosition(I)Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    if-eqz v2, :cond_5

    if-nez v3, :cond_1

    goto :goto_0

    .line 194
    :cond_1
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookAnnotationManager()Lcom/amazon/kindle/krx/reader/IAnnotationManager;

    move-result-object v4

    if-nez v4, :cond_2

    .line 196
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string p1, "Annotation Manager is null; cannot retrieve highlighted text"

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 199
    :cond_2
    sget-object v5, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->HIGHLIGHT:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    invoke-interface {v4, v2, v3, v5}, Lcom/amazon/kindle/krx/reader/IAnnotationManager;->getAnnotationsBetweenPositions(Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 204
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kindle/krx/content/KRXIAnnotation;

    .line 205
    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v4

    .line 206
    invoke-interface {v3}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    if-lt p0, v4, :cond_3

    if-gt p1, v3, :cond_3

    return v0

    :cond_4
    return v1

    .line 189
    :cond_5
    :goto_0
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string p1, "Start or end position is null; cannot retrieve highlighted text"

    invoke-static {p0, p1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static validateContentSelection(Lcom/amazon/kindle/krx/content/IContentSelection;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 267
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string v1, "Invalid contentSelection; Null"

    invoke-static {p0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 271
    :cond_0
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    if-nez v1, :cond_1

    .line 272
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string v1, "Invalid contentSelection; Null book"

    invoke-static {p0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 276
    :cond_1
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    if-nez v1, :cond_2

    .line 278
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string v1, "Invalid contentSelection; Null start"

    invoke-static {p0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 282
    :cond_2
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p0

    if-nez p0, :cond_3

    .line 284
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string v1, "Invalid contentSelection; Null end"

    invoke-static {p0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 288
    :cond_3
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    if-gez v2, :cond_4

    .line 289
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string v1, "Invalid contentSelection; Negative start"

    invoke-static {p0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 293
    :cond_4
    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-interface {p0}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p0

    if-le v1, p0, :cond_5

    .line 294
    sget-object p0, Lcom/amazon/xray/plugin/util/ContentUtil;->TAG:Ljava/lang/String;

    const-string v1, "Invalid contentSelection; Start is greater than end"

    invoke-static {p0, v1}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method
