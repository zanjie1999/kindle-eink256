.class public interface abstract annotation Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonDeserialize;
.super Ljava/lang/Object;
.source "JsonDeserialize.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JacksonAnnotation;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/JsonDeserialize;
        as = Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/NoClass;
        contentAs = Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/NoClass;
        contentUsing = Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer$None;
        keyAs = Lcom/amazon/whispersync/org/codehaus/jackson/map/annotate/NoClass;
        keyUsing = Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer$None;
        using = Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer$None;
    .end subannotation
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
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;>;"
        }
    .end annotation
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
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/KeyDeserializer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract using()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/org/codehaus/jackson/map/JsonDeserializer<",
            "*>;>;"
        }
    .end annotation
.end method
