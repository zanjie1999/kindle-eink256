.class public Lcom/amazon/kindle/event/AnnotationManagerEvent;
.super Ljava/lang/Object;
.source "AnnotationManagerEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;
    }
.end annotation


# instance fields
.field private addedAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private annotationManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

.field private annotationType:I

.field private removedAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private type:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;


# direct methods
.method public constructor <init>(ILcom/amazon/android/docviewer/IDocViewerAnnotationsManager;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->addedAnnotations:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->removedAnnotations:Ljava/util/List;

    .line 34
    iput p1, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->annotationType:I

    .line 35
    sget-object p1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_ADDED_REMOVED:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    iput-object p1, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->type:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    .line 36
    iput-object p2, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->annotationManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->addedAnnotations:Ljava/util/List;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->removedAnnotations:Ljava/util/List;

    const/high16 v0, -0x80000000

    .line 28
    iput v0, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->annotationType:I

    .line 29
    iput-object p1, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->type:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    .line 30
    iput-object p2, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->annotationManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    return-void
.end method


# virtual methods
.method public addAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->addedAnnotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAddedAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->addedAnnotations:Ljava/util/List;

    return-object v0
.end method

.method public getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->annotationManager:Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    return-object v0
.end method

.method public getAnnotationType()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->annotationType:I

    return v0
.end method

.method public getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->type:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    return-object v0
.end method

.method public getRemovedAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->removedAnnotations:Ljava/util/List;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public removeAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/kindle/event/AnnotationManagerEvent;->removedAnnotations:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAnnotations(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 72
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->addAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 77
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    .line 78
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->removeAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V

    goto :goto_1

    :cond_1
    return-void
.end method
