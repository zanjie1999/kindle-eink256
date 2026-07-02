.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Lorg/threeten/bp/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/threeten/bp/format/DateTimeFormatterBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StringLiteralPrinterParser"
.end annotation


# instance fields
.field private final literal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 2236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2237
    iput-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 2242
    iget-object p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2260
    iget-object v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
