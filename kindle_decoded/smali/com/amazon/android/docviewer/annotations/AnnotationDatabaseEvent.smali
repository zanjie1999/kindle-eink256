.class public Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent;
.super Ljava/lang/Object;
.source "AnnotationDatabaseEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;
    }
.end annotation


# instance fields
.field private final annotations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end field

.field private final event:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent;->event:Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent$EventType;

    .line 62
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent;->annotations:Ljava/util/ArrayList;

    .line 63
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getAnnotations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/amazon/android/docviewer/annotations/AnnotationDatabaseEvent;->annotations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
