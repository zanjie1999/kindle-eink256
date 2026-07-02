.class final Lcom/amazon/whispersync/com/google/inject/internal/Scoping$5;
.super Lcom/amazon/whispersync/com/google/inject/internal/Scoping;
.source "Scoping.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->forAnnotation(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/internal/Scoping;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$scopingAnnotation:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$5;->val$scopingAnnotation:Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Scoping$1;)V

    return-void
.end method


# virtual methods
.method public acceptVisitor(Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$5;->val$scopingAnnotation:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor;->visitScopeAnnotation(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public applyTo(Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$5;->val$scopingAnnotation:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;->in(Ljava/lang/Class;)V

    return-void
.end method

.method public getScopeAnnotation()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$5;->val$scopingAnnotation:Ljava/lang/Class;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Scoping$5;->val$scopingAnnotation:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
