.class public interface abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty;
.super Ljava/lang/Object;
.source "BeanProperty.java"

# interfaces
.implements Lcom/amazon/whispersync/org/codehaus/jackson/map/util/Named;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/BeanProperty$Std;
    }
.end annotation


# virtual methods
.method public abstract getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation
.end method

.method public abstract getContextAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)TA;"
        }
    .end annotation
.end method

.method public abstract getMember()Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getType()Lcom/amazon/whispersync/org/codehaus/jackson/type/JavaType;
.end method
