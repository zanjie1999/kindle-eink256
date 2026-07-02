.class public interface abstract Lcom/amazon/kindle/services/sync/AnnotationIO;
.super Ljava/lang/Object;
.source "AnnotationIO.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/services/sync/AnnotationIO$AnnotationParserCallback;
    }
.end annotation


# virtual methods
.method public abstract getAnnotationFileName()Ljava/lang/String;
.end method

.method public abstract getLastAnnotationModificationTime()J
.end method

.method public abstract readAnnotations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract readAnnotations(Lcom/amazon/kindle/services/sync/AnnotationIO$AnnotationParserCallback;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method

.method public abstract readLastPageRead()Lcom/amazon/kindle/model/content/LastPageRead;
.end method

.method public abstract readMrpr()I
.end method

.method public abstract writeAnnotations(Lcom/amazon/kindle/model/content/LastPageRead;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/model/content/LastPageRead;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/sync/annotation/IAnnotation;",
            ">;)V"
        }
    .end annotation
.end method
