.class public interface abstract Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
.super Ljava/lang/Object;
.source "VisibilityChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker$Std;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract isCreatorVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMember;)Z
.end method

.method public abstract isCreatorVisible(Ljava/lang/reflect/Member;)Z
.end method

.method public abstract isFieldVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedField;)Z
.end method

.method public abstract isFieldVisible(Ljava/lang/reflect/Field;)Z
.end method

.method public abstract isGetterVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
.end method

.method public abstract isGetterVisible(Ljava/lang/reflect/Method;)Z
.end method

.method public abstract isIsGetterVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
.end method

.method public abstract isIsGetterVisible(Ljava/lang/reflect/Method;)Z
.end method

.method public abstract isSetterVisible(Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/AnnotatedMethod;)Z
.end method

.method public abstract isSetterVisible(Ljava/lang/reflect/Method;)Z
.end method

.method public abstract with(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract with(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withCreatorVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withFieldVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withGetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withIsGetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withSetterVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract withVisibility(Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;)Lcom/amazon/whispersync/org/codehaus/jackson/map/introspect/VisibilityChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonMethod;",
            "Lcom/amazon/whispersync/org/codehaus/jackson/annotate/JsonAutoDetect$Visibility;",
            ")TT;"
        }
    .end annotation
.end method
