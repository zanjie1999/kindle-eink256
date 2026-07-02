.class public Lcom/amazon/org/codehaus/jackson/util/DefaultPrettyPrinter$FixedSpaceIndenter;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"

# interfaces
.implements Lcom/amazon/org/codehaus/jackson/impl/Indenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/util/DefaultPrettyPrinter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FixedSpaceIndenter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInline()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public writeIndentation(Lcom/amazon/org/codehaus/jackson/JsonGenerator;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    const/16 p2, 0x20

    .line 235
    invoke-virtual {p1, p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeRaw(C)V

    return-void
.end method
