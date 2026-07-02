.class public interface abstract annotation Lcom/amazon/whispersync/coral/annotation/AwsSoap12Error;
.super Ljava/lang/Object;
.source "AwsSoap12Error.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/amazon/whispersync/coral/annotation/AwsSoap12Error;
        code = "N/A"
        httpCode = 0x190
        type = .enum Lcom/amazon/whispersync/coral/annotation/AwsErrorType;->Sender:Lcom/amazon/whispersync/coral/annotation/AwsErrorType;
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
.method public abstract code()Ljava/lang/String;
.end method

.method public abstract httpCode()I
.end method

.method public abstract type()Lcom/amazon/whispersync/coral/annotation/AwsErrorType;
.end method
