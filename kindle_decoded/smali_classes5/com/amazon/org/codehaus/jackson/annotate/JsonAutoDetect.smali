.class public interface abstract annotation Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect;
.super Ljava/lang/Object;
.source "JsonAutoDetect.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/annotate/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect;
        creatorVisibility = .enum Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
        fieldVisibility = .enum Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
        getterVisibility = .enum Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
        isGetterVisibility = .enum Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
        setterVisibility = .enum Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;->DEFAULT:Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
        value = {
            .enum Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;->ALL:Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;
        }
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
    }
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
.method public abstract creatorVisibility()Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end method

.method public abstract fieldVisibility()Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end method

.method public abstract getterVisibility()Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end method

.method public abstract isGetterVisibility()Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end method

.method public abstract setterVisibility()Lcom/amazon/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;
.end method

.method public abstract value()[Lcom/amazon/org/codehaus/jackson/annotate/JsonMethod;
.end method
