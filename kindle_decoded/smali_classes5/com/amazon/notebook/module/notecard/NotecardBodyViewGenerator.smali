.class public Lcom/amazon/notebook/module/notecard/NotecardBodyViewGenerator;
.super Ljava/lang/Object;
.source "NotecardBodyViewGenerator.java"


# direct methods
.method public static generateView(ILandroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;ZLcom/amazon/notebook/module/AsyncGraphicForRange;I)Lcom/amazon/notebook/module/notecard/NotecardBodyView;
    .locals 0

    if-eqz p3, :cond_2

    const/4 p3, 0x7

    if-ne p0, p3, :cond_0

    .line 35
    new-instance p0, Lcom/amazon/notebook/module/notecard/NotecardBodyGraphicalHighlightView;

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/amazon/notebook/module/notecard/NotecardBodyGraphicalHighlightView;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/AsyncGraphicForRange;I)V

    return-object p0

    :cond_0
    if-nez p0, :cond_2

    .line 37
    invoke-static {p2}, Lcom/amazon/android/util/BookTypeUtil;->isLavaMagazine(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 38
    new-instance p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;

    invoke-direct {p0, p1, p2, p4}, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkViewForLavaMagazine;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/AsyncGraphicForRange;)V

    return-object p0

    .line 40
    :cond_1
    new-instance p0, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkImageView;

    invoke-direct {p0, p1, p2, p4}, Lcom/amazon/notebook/module/notecard/NotecardBodyBookmarkImageView;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/notebook/module/AsyncGraphicForRange;)V

    return-object p0

    :cond_2
    const/4 p2, 0x2

    if-ne p0, p2, :cond_3

    .line 46
    new-instance p0, Lcom/amazon/notebook/module/notecard/NotecardBodyHighlightView;

    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/notecard/NotecardBodyHighlightView;-><init>(Landroid/content/Context;)V

    return-object p0

    :cond_3
    if-nez p0, :cond_4

    .line 51
    new-instance p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;

    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/notecard/NotecardBodyView;-><init>(Landroid/content/Context;)V

    return-object p0

    .line 56
    :cond_4
    new-instance p0, Lcom/amazon/notebook/module/notecard/NotecardBodyView;

    invoke-direct {p0, p1}, Lcom/amazon/notebook/module/notecard/NotecardBodyView;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
