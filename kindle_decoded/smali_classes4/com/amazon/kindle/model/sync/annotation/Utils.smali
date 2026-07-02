.class public Lcom/amazon/kindle/model/sync/annotation/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static getKRXAnnotationType(Ljava/lang/Integer;)Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_1

    packed-switch p0, :pswitch_data_0

    return-object v0

    .line 36
    :pswitch_0
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->GRAPHICAL_HIGHLIGHT:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 34
    :pswitch_1
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->POPULAR_HIGHLIGHT:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 32
    :pswitch_2
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->COLLECTION_TAG:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 30
    :pswitch_3
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->CLIPPING:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 28
    :pswitch_4
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->LAST_PAGE_READ:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 26
    :pswitch_5
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->HIGHLIGHT:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 24
    :pswitch_6
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->NOTE:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 22
    :pswitch_7
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->BOOKMARK:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    .line 38
    :cond_1
    sget-object p0, Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;->SCRIBBLE:Lcom/amazon/kindle/krx/content/KRXIAnnotation$AnnotationType;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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
