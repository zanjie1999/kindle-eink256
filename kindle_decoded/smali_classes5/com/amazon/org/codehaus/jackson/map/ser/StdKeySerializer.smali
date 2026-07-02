.class public final Lcom/amazon/org/codehaus/jackson/map/ser/StdKeySerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/StdKeySerializer;
.source "StdKeySerializer.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final instace:Lcom/amazon/org/codehaus/jackson/map/ser/StdKeySerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/StdKeySerializer;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/StdKeySerializer;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/StdKeySerializer;->instace:Lcom/amazon/org/codehaus/jackson/map/ser/StdKeySerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/StdKeySerializer;-><init>()V

    return-void
.end method
