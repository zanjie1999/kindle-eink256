.class public interface abstract annotation Lcom/amazon/org/codehaus/jackson/schema/JsonSerializableSchema;
.super Ljava/lang/Object;
.source "JsonSerializableSchema.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/annotate/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/amazon/org/codehaus/jackson/schema/JsonSerializableSchema;
        schemaItemDefinition = "##irrelevant"
        schemaObjectPropertiesDefinition = "##irrelevant"
        schemaType = "any"
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract schemaItemDefinition()Ljava/lang/String;
.end method

.method public abstract schemaObjectPropertiesDefinition()Ljava/lang/String;
.end method

.method public abstract schemaType()Ljava/lang/String;
.end method
