.class public interface abstract annotation Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/DefaultAnnotationForFields;
.super Ljava/lang/Object;
.source "DefaultAnnotationForFields.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/DefaultAnnotationForFields;
        priority = .enum Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;->MEDIUM:Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->CLASS:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PACKAGE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract priority()Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;
.end method

.method public abstract value()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method
