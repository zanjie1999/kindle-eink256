.class Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager$1;
.super Ljava/lang/Object;
.source "PdfAnnotationAreaManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;->rebuildNoteAreas()V
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


# instance fields
.field final synthetic this$0:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager$1;->this$0:Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I
    .locals 0

    .line 126
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getLocation()I

    move-result p1

    invoke-interface {p2}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getLocation()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 123
    check-cast p1, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    check-cast p2, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfAnnotationAreaManager$1;->compare(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)I

    move-result p1

    return p1
.end method
