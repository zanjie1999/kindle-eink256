.class public final Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;
.super Ljava/lang/Object;
.source "ObjectWriter.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/ObjectWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GeneratorSettings"
.end annotation


# static fields
.field public static final empty:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

.field public final prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

.field public final rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

.field public final schema:Lcom/fasterxml/jackson/core/FormatSchema;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1216
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;-><init>(Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/SerializableString;)V

    sput-object v0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->empty:Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;

    return-void
.end method

.method public constructor <init>(Lcom/fasterxml/jackson/core/PrettyPrinter;Lcom/fasterxml/jackson/core/FormatSchema;Lcom/fasterxml/jackson/core/io/CharacterEscapes;Lcom/fasterxml/jackson/core/SerializableString;)V
    .locals 0

    .line 1246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1247
    iput-object p1, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 1248
    iput-object p2, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/FormatSchema;

    .line 1249
    iput-object p3, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    .line 1250
    iput-object p4, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    return-void
.end method


# virtual methods
.method public initialize(Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 3

    .line 1303
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->prettyPrinter:Lcom/fasterxml/jackson/core/PrettyPrinter;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1305
    sget-object v2, Lcom/fasterxml/jackson/databind/ObjectWriter;->NULL_PRETTY_PRINTER:Lcom/fasterxml/jackson/core/PrettyPrinter;

    if-ne v0, v2, :cond_0

    .line 1306
    invoke-virtual {p1, v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;

    goto :goto_0

    .line 1308
    :cond_0
    instance-of v2, v0, Lcom/fasterxml/jackson/core/util/Instantiatable;

    if-eqz v2, :cond_1

    .line 1309
    check-cast v0, Lcom/fasterxml/jackson/core/util/Instantiatable;

    invoke-interface {v0}, Lcom/fasterxml/jackson/core/util/Instantiatable;->createInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fasterxml/jackson/core/PrettyPrinter;

    .line 1311
    :cond_1
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->setPrettyPrinter(Lcom/fasterxml/jackson/core/PrettyPrinter;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 1314
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->characterEscapes:Lcom/fasterxml/jackson/core/io/CharacterEscapes;

    if-eqz v0, :cond_3

    .line 1315
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->setCharacterEscapes(Lcom/fasterxml/jackson/core/io/CharacterEscapes;)Lcom/fasterxml/jackson/core/JsonGenerator;

    .line 1317
    :cond_3
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->schema:Lcom/fasterxml/jackson/core/FormatSchema;

    if-nez v0, :cond_5

    .line 1320
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/ObjectWriter$GeneratorSettings;->rootValueSeparator:Lcom/fasterxml/jackson/core/SerializableString;

    if-eqz v0, :cond_4

    .line 1321
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->setRootValueSeparator(Lcom/fasterxml/jackson/core/SerializableString;)Lcom/fasterxml/jackson/core/JsonGenerator;

    :cond_4
    return-void

    .line 1318
    :cond_5
    invoke-virtual {p1, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->setSchema(Lcom/fasterxml/jackson/core/FormatSchema;)V

    throw v1
.end method
