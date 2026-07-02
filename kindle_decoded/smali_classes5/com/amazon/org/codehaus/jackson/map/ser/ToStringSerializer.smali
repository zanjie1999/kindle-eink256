.class public final Lcom/amazon/org/codehaus/jackson/map/ser/ToStringSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/ToStringSerializer;
.source "ToStringSerializer.java"


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final instance:Lcom/amazon/org/codehaus/jackson/map/ser/ToStringSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    new-instance v0, Lcom/amazon/org/codehaus/jackson/map/ser/ToStringSerializer;

    invoke-direct {v0}, Lcom/amazon/org/codehaus/jackson/map/ser/ToStringSerializer;-><init>()V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/map/ser/ToStringSerializer;->instance:Lcom/amazon/org/codehaus/jackson/map/ser/ToStringSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/ToStringSerializer;-><init>()V

    return-void
.end method
