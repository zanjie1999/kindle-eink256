.class public Lcom/amazon/org/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;
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
    name = "Lf2SpacesIndenter"
.end annotation


# static fields
.field static final SPACES:[C

.field static final SPACE_COUNT:I = 0x40

.field static final SYSTEM_LINE_SEPARATOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    :try_start_0
    const-string v0, "line.separator"

    .line 253
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, "\n"

    .line 255
    :cond_0
    sput-object v0, Lcom/amazon/org/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SYSTEM_LINE_SEPARATOR:Ljava/lang/String;

    const/16 v0, 0x40

    new-array v0, v0, [C

    .line 259
    sput-object v0, Lcom/amazon/org/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C

    const/16 v1, 0x20

    .line 261
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInline()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeIndentation(Lcom/amazon/org/codehaus/jackson/JsonGenerator;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/amazon/org/codehaus/jackson/JsonGenerationException;
        }
    .end annotation

    .line 273
    sget-object v0, Lcom/amazon/org/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SYSTEM_LINE_SEPARATOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeRaw(Ljava/lang/String;)V

    add-int/2addr p2, p2

    :goto_0
    const/4 v0, 0x0

    const/16 v1, 0x40

    if-le p2, v1, :cond_0

    .line 276
    sget-object v2, Lcom/amazon/org/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C

    invoke-virtual {p1, v2, v0, v1}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeRaw([CII)V

    .line 277
    sget-object v0, Lcom/amazon/org/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C

    array-length v0, v0

    sub-int/2addr p2, v0

    goto :goto_0

    .line 279
    :cond_0
    sget-object v1, Lcom/amazon/org/codehaus/jackson/util/DefaultPrettyPrinter$Lf2SpacesIndenter;->SPACES:[C

    invoke-virtual {p1, v1, v0, p2}, Lcom/amazon/org/codehaus/jackson/JsonGenerator;->writeRaw([CII)V

    return-void
.end method
