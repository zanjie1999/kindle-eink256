.class public Lcom/amazon/kindle/krx/util/AnnotationsUtil;
.super Ljava/lang/Object;
.source "AnnotationsUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filterAnnotationsByTypeAndRange(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;Ljava/util/List;Lcom/amazon/kindle/krx/reader/IPosition;Lcom/amazon/kindle/krx/reader/IPosition;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/content/KRXIAnnotation;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 88
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 89
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 90
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/content/KRXIAnnotation;

    if-eqz p0, :cond_1

    .line 92
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getAnnotationType()Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    move-result-object v2

    if-ne v2, p0, :cond_2

    :cond_1
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/amazon/kindle/krx/reader/IPosition;->isAfter(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 93
    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/KRXIAnnotation;->getBegin()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {p3, v1}, Lcom/amazon/kindle/krx/reader/IPosition;->isBefore(Lcom/amazon/kindle/krx/reader/IPosition;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method public static getKRLAnnotationType(Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 47
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/util/AnnotationsUtil$1;->$SwitchMap$com$amazon$kindle$krx$content$KRXIAnnotation$AnnotationType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 p0, 0xa

    .line 69
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_1
    const/16 p0, 0x9

    .line 67
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_2
    const/16 p0, 0x8

    .line 65
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_3
    const/4 p0, 0x7

    .line 63
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    const/4 p0, 0x6

    .line 61
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_5
    const/4 p0, 0x5

    .line 59
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_6
    const/4 p0, 0x4

    .line 57
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_7
    const/4 p0, 0x3

    .line 55
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_8
    const/4 p0, 0x2

    .line 53
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_9
    const/4 p0, 0x1

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_a
    const/4 p0, 0x0

    .line 49
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getKRXAnnotationType(Ljava/lang/Integer;)Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return-object v0

    .line 38
    :pswitch_0
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->SCRIBBLE:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 36
    :pswitch_1
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->MOST_RECENT_PAGE_READ:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 34
    :pswitch_2
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->CONTINUOUS_READING_PROGRESS:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 32
    :pswitch_3
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->GRAPHICAL_HIGHLIGHT:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 30
    :pswitch_4
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->POPULAR_HIGHLIGHT:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 28
    :pswitch_5
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->COLLECTION_TAG:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 26
    :pswitch_6
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->CLIPPING:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 24
    :pswitch_7
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->LAST_PAGE_READ:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 22
    :pswitch_8
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->HIGHLIGHT:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 20
    :pswitch_9
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->NOTE:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 18
    :pswitch_a
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->BOOKMARK:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
