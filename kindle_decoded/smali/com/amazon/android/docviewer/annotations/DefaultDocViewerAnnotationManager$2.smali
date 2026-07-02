.class Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$2;
.super Ljava/lang/Object;
.source "DefaultDocViewerAnnotationManager.java"

# interfaces
.implements Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager$AnnotationCriterion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;->getAnnotationsList()[Lcom/amazon/kindle/model/sync/annotation/IAnnotation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/annotations/DefaultDocViewerAnnotationManager;)V
    .locals 0

    .line 519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSatisfiedBy(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 522
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
