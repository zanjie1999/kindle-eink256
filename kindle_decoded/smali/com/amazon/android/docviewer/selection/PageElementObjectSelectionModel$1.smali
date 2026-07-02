.class Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$1;
.super Ljava/lang/Object;
.source "PageElementObjectSelectionModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/android/docviewer/IPageElement;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel;)V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)I
    .locals 0

    .line 108
    invoke-interface {p1}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result p1

    .line 109
    invoke-interface {p2}, Lcom/amazon/android/docviewer/IPageElement;->getId()I

    move-result p2

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 105
    check-cast p1, Lcom/amazon/android/docviewer/IPageElement;

    check-cast p2, Lcom/amazon/android/docviewer/IPageElement;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/selection/PageElementObjectSelectionModel$1;->compare(Lcom/amazon/android/docviewer/IPageElement;Lcom/amazon/android/docviewer/IPageElement;)I

    move-result p1

    return p1
.end method
