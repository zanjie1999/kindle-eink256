.class Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$1;
.super Ljava/lang/Object;
.source "MobiAnnotationAreaManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;->rebuildNoteAreas()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager;)V
    .locals 0

    .line 176
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I
    .locals 0

    .line 179
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getLocation()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getLocation()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 176
    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    check-cast p2, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiAnnotationAreaManager$1;->compare(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I

    move-result p1

    return p1
.end method
