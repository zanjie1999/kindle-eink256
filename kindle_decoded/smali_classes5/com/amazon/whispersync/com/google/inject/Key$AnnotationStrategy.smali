.class interface abstract Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;
.super Ljava/lang/Object;
.source "Key.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "AnnotationStrategy"
.end annotation


# virtual methods
.method public abstract getAnnotation()Ljava/lang/annotation/Annotation;
.end method

.method public abstract getAnnotationType()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasAttributes()Z
.end method

.method public abstract withoutAttributes()Lcom/amazon/whispersync/com/google/inject/Key$AnnotationStrategy;
.end method
