.class public Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators$Base;
.super Ljava/lang/Object;
.source "ValueInstantiators.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiators;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Base"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public findValueInstantiator(Lcom/amazon/org/codehaus/jackson/map/DeserializationConfig;Lcom/amazon/org/codehaus/jackson/map/BeanDescription;Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;)Lcom/amazon/org/codehaus/jackson/map/deser/ValueInstantiator;
    .locals 0

    return-object p3
.end method
