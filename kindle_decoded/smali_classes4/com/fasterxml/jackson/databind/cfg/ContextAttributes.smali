.class public abstract Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
.super Ljava/lang/Object;
.source "ContextAttributes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEmpty()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
    .locals 1

    .line 24
    invoke-static {}, Lcom/fasterxml/jackson/databind/cfg/ContextAttributes$Impl;->getEmpty()Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getAttribute(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract withPerCallAttribute(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/cfg/ContextAttributes;
.end method
