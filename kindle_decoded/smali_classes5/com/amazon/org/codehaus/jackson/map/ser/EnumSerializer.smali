.class public Lcom/amazon/org/codehaus/jackson/map/ser/EnumSerializer;
.super Lcom/amazon/org/codehaus/jackson/map/ser/std/EnumSerializer;
.source "EnumSerializer.java"


# annotations
.annotation runtime Lcom/amazon/org/codehaus/jackson/map/annotate/JacksonStdImpl;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Lcom/amazon/org/codehaus/jackson/map/util/EnumValues;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/amazon/org/codehaus/jackson/map/ser/std/EnumSerializer;-><init>(Lcom/amazon/org/codehaus/jackson/map/util/EnumValues;)V

    return-void
.end method
