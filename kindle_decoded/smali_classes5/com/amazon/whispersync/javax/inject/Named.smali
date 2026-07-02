.class public interface abstract annotation Lcom/amazon/whispersync/javax/inject/Named;
.super Ljava/lang/Object;
.source "Named.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/amazon/whispersync/javax/inject/Qualifier;
.end annotation

.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/amazon/whispersync/javax/inject/Named;
        value = ""
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# virtual methods
.method public abstract value()Ljava/lang/String;
.end method
