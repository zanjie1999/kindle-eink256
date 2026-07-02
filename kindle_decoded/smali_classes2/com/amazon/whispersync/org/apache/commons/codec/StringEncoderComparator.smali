.class public Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoderComparator;
.super Ljava/lang/Object;
.source "StringEncoderComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final stringEncoder:Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/Encoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Comparable;

    .line 83
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoderComparator;->stringEncoder:Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;

    invoke-interface {v0, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/Encoder;->encode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Comparable;

    .line 84
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1
    :try_end_0
    .catch Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
