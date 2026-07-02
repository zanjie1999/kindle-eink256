.class public interface abstract annotation Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAnyGetter;
.super Ljava/lang/Object;
.source "JsonAnyGetter.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JacksonAnnotation;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation
