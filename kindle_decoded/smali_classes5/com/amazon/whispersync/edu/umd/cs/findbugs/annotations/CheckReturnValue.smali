.class public interface abstract annotation Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/CheckReturnValue;
.super Ljava/lang/Object;
.source "CheckReturnValue.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/CheckReturnValue;
        explanation = ""
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
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->CONSTRUCTOR:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract explanation()Ljava/lang/String;
.end method

.method public abstract priority()Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/Priority;
.end method
