.class public interface abstract annotation Lcom/amazon/whispersync/coral/annotation/Wrapper;
.super Ljava/lang/Object;
.source "Wrapper.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/amazon/whispersync/coral/annotation/Wrapper;
        value = {
            .enum Lcom/amazon/whispersync/coral/annotation/WrapperType;->INPUT:Lcom/amazon/whispersync/coral/annotation/WrapperType;,
            .enum Lcom/amazon/whispersync/coral/annotation/WrapperType;->OUTPUT:Lcom/amazon/whispersync/coral/annotation/WrapperType;
        }
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
.method public abstract value()[Lcom/amazon/whispersync/coral/annotation/WrapperType;
.end method
