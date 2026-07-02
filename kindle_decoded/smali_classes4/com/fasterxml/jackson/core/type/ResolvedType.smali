.class public abstract Lcom/fasterxml/jackson/core/type/ResolvedType;
.super Ljava/lang/Object;
.source "ResolvedType.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getReferencedType()Lcom/fasterxml/jackson/core/type/ResolvedType;
.end method

.method public isReferenceType()Z
    .locals 1

    .line 59
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/type/ResolvedType;->getReferencedType()Lcom/fasterxml/jackson/core/type/ResolvedType;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract toCanonical()Ljava/lang/String;
.end method
