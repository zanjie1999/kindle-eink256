.class public abstract Lcom/fasterxml/jackson/databind/JsonSerializable$Base;
.super Ljava/lang/Object;
.source "JsonSerializable.java"

# interfaces
.implements Lcom/fasterxml/jackson/databind/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/JsonSerializable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isEmpty(Lcom/fasterxml/jackson/databind/SerializerProvider;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
