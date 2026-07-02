.class public final Lcom/amazon/kindle/krx/content/ContentUtil;
.super Ljava/lang/Object;
.source "ContentUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertBookElementType(Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;)I
    .locals 1

    .line 94
    sget-object v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->ALL:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 96
    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->TEXT:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 98
    :cond_1
    sget-object v0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->IMAGE:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    const/4 p0, -0x1

    return p0
.end method

.method public static convertContentClass(Lcom/amazon/kindle/model/content/ContentClass;)Lcom/amazon/kindle/krx/content/IBook$BookContentClass;
    .locals 1

    .line 106
    sget-object v0, Lcom/amazon/kindle/krx/content/ContentUtil$1;->$SwitchMap$com$amazon$kindle$model$content$ContentClass:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 115
    sget-object p0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->DEFAULT:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    return-object p0

    .line 112
    :cond_0
    sget-object p0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->MANGA:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    return-object p0

    .line 110
    :cond_1
    sget-object p0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->COMIC:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    return-object p0

    .line 108
    :cond_2
    sget-object p0, Lcom/amazon/kindle/krx/content/IBook$BookContentClass;->CHILDREN:Lcom/amazon/kindle/krx/content/IBook$BookContentClass;

    return-object p0
.end method

.method public static convertPageElement(Lcom/amazon/android/docviewer/IPageElement;)Lcom/amazon/kindle/krx/content/IBookElement;
    .locals 7

    .line 35
    invoke-interface {p0}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/kindle/krx/content/ContentUtil;->convertPageElementType(I)Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    move-result-object v0

    .line 36
    new-instance v3, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-interface {p0}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result v1

    invoke-direct {v3, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 37
    new-instance v4, Lcom/amazon/kindle/model/Annotations/IntPosition;

    invoke-interface {p0}, Lcom/amazon/android/docviewer/IPageElement;->getEndId()I

    move-result v1

    invoke-direct {v4, v1}, Lcom/amazon/kindle/model/Annotations/IntPosition;-><init>(I)V

    .line 38
    invoke-interface {p0}, Lcom/amazon/android/docviewer/IPageElement;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/krx/content/ContentUtil;->convertToKRXCoveringRectangles(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v6

    .line 41
    instance-of v1, p0, Lcom/amazon/android/docviewer/IWordPageElement;

    if-eqz v1, :cond_0

    .line 42
    new-instance v0, Lcom/amazon/kindle/krx/content/TextBookElement;

    sget-object v2, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->TEXT:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    check-cast p0, Lcom/amazon/android/docviewer/IWordPageElement;

    .line 45
    invoke-interface {p0}, Lcom/amazon/android/docviewer/IWordPageElement;->getText()Ljava/lang/String;

    move-result-object v5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/kindle/krx/content/TextBookElement;-><init>(Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/lang/String;Ljava/util/Vector;)V

    return-object v0

    .line 47
    :cond_0
    new-instance p0, Lcom/amazon/kindle/krx/content/BookElement;

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/amazon/kindle/krx/content/BookElement;-><init>(Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;Ljava/util/Vector;)V

    return-object p0
.end method

.method public static convertPageElementType(I)Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 84
    sget-object p0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->UNKNOWN:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    return-object p0

    .line 80
    :cond_0
    sget-object p0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->IMAGE:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    return-object p0

    .line 82
    :cond_1
    sget-object p0, Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;->TEXT:Lcom/amazon/kindle/krx/content/IBookElement$BookElementType;

    return-object p0
.end method

.method static convertToKRXCoveringRectangles(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;)",
            "Ljava/util/Vector<",
            "Lcom/amazon/kindle/krx/reader/Rectangle;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    if-eqz p0, :cond_2

    .line 59
    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {p0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/system/drawing/Rectangle;

    .line 64
    new-instance v2, Lcom/amazon/kindle/krx/reader/Rectangle;

    iget v3, v1, Lcom/amazon/system/drawing/Rectangle;->x:I

    iget v4, v1, Lcom/amazon/system/drawing/Rectangle;->y:I

    iget v5, v1, Lcom/amazon/system/drawing/Rectangle;->width:I

    iget v1, v1, Lcom/amazon/system/drawing/Rectangle;->height:I

    invoke-direct {v2, v3, v4, v5, v1}, Lcom/amazon/kindle/krx/reader/Rectangle;-><init>(IIII)V

    .line 65
    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method
