.class public final Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers$UtilDateSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/DateSerializer;
.source "StdSerializers.java"


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/map/ser/StdSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UtilDateSerializer"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 298
    invoke-direct {p0}, Lcom/amazon/org/codehaus/jackson/map/ser/std/DateSerializer;-><init>()V

    return-void
.end method
