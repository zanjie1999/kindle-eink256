.class final Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
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
    name = "CharLiteralPrinterParser"
.end annotation


# instance fields
.field private final literal:C


# direct methods
.method constructor <init>(C)V
    .locals 0

    .line 2197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2198
    iput-char p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    return-void
.end method


# virtual methods
.method public print(Lorg/threeten/bp/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .locals 0

    .line 2203
    iget-char p1, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2222
    iget-char v0, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_0

    const-string v0, "\'\'"

    return-object v0

    .line 2225
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-char v2, p0, Lorg/threeten/bp/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
