.class public interface abstract Lcom/amazon/kindle/annotationconversion/IAnnotationConversionService;
.super Ljava/lang/Object;
.source "IAnnotationConversionService.java"


# virtual methods
.method public abstract convert(Ljava/util/List;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/annotationconversion/ContentIdentifier;Lcom/amazon/kindle/krx/reader/IPositionFactory;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;",
            ">;",
            "Lcom/amazon/kindle/annotationconversion/ContentIdentifier;",
            "Lcom/amazon/kindle/annotationconversion/ContentIdentifier;",
            "Lcom/amazon/kindle/krx/reader/IPositionFactory;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/annotationconversion/ConvertibleAnnotation;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/annotationconversion/AnnotationConversionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
