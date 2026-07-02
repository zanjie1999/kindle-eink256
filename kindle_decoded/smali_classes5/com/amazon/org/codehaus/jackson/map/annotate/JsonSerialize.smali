.class public interface abstract annotation Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;
.super Ljava/lang/Object;
.source "JsonSerialize.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/annotate/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize;
        as = Lcom/amazon/org/codehaus/jackson/map/annotate/NoClass;
        contentAs = Lcom/amazon/org/codehaus/jackson/map/annotate/NoClass;
        contentUsing = Lcom/amazon/org/codehaus/jackson/map/JsonSerializer$None;
        include = .enum Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;->ALWAYS:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
        keyAs = Lcom/amazon/org/codehaus/jackson/map/annotate/NoClass;
        keyUsing = Lcom/amazon/org/codehaus/jackson/map/JsonSerializer$None;
        typing = .enum Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;->DYNAMIC:Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
        using = Lcom/amazon/org/codehaus/jackson/map/JsonSerializer$None;
    .end subannotation
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;,
        Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract as()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract contentAs()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract contentUsing()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract include()Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Inclusion;
.end method

.method public abstract keyAs()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract keyUsing()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract typing()Lcom/amazon/org/codehaus/jackson/map/annotate/JsonSerialize$Typing;
.end method

.method public abstract using()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/org/codehaus/jackson/map/JsonSerializer<",
            "*>;>;"
        }
    .end annotation
.end method
