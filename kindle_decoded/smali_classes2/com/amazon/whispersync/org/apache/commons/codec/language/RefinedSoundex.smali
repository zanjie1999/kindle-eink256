.class public Lcom/amazon/whispersync/org/apache/commons/codec/language/RefinedSoundex;
.super Ljava/lang/Object;
.source "RefinedSoundex.java"

# interfaces
.implements Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;


# static fields
.field public static final US_ENGLISH:Lcom/amazon/whispersync/org/apache/commons/codec/language/RefinedSoundex;

.field private static final US_ENGLISH_MAPPING:[C

.field public static final US_ENGLISH_MAPPING_STRING:Ljava/lang/String; = "01360240043788015936020505"


# instance fields
.field private final soundexMapping:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "01360240043788015936020505"

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH_MAPPING:[C

    .line 57
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/RefinedSoundex;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/RefinedSoundex;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH:Lcom/amazon/whispersync/org/apache/commons/codec/language/RefinedSoundex;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/RefinedSoundex;->US_ENGLISH_MAPPING:[C

    iput-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    return-void
.end method

.method public constructor <init>([C)V
    .locals 3

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    .line 78
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public difference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 116
    invoke-static {p0, p1, p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/SoundexUtils;->difference(Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 134
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 137
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/RefinedSoundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 135
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;

    const-string v0, "Parameter supplied to RefinedSoundex encode is not of type java.lang.String"

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 149
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/RefinedSoundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getMappingCode(C)C
    .locals 1

    .line 162
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/RefinedSoundex;->soundexMapping:[C

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    add-int/lit8 p1, p1, -0x41

    aget-char p1, v0, p1

    return p1
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 179
    :cond_0
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 184
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 185
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v2, 0x2a

    .line 190
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 192
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/RefinedSoundex;->getMappingCode(C)C

    move-result v3

    if-ne v3, v2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v3, :cond_3

    .line 196
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    move v2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
