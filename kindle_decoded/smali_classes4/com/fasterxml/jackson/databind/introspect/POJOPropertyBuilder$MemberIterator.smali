.class public Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$MemberIterator;
.super Ljava/lang/Object;
.source "POJOPropertyBuilder.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "MemberIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked<",
            "TT;>;)V"
        }
    .end annotation

    .line 1091
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1092
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$MemberIterator;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1097
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$MemberIterator;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1102
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$MemberIterator;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v1, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->value:Ljava/lang/Object;

    check-cast v1, Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    .line 1104
    iget-object v0, v0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$MemberIterator;->next:Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$Linked;

    return-object v1

    .line 1102
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1086
    invoke-virtual {p0}, Lcom/fasterxml/jackson/databind/introspect/POJOPropertyBuilder$MemberIterator;->next()Lcom/fasterxml/jackson/databind/introspect/AnnotatedMember;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
