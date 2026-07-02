.class public Lcom/audible/mobile/activation/network/parser/ActivationParser;
.super Ljava/lang/Object;
.source "ActivationParser.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Object<",
        "[B[B>;"
    }
.end annotation


# static fields
.field private static final AUDIBLE_ERROR_KEY:Ljava/lang/String; = "audible_error"

.field private static final DEFAULT_GROUP_ID:Ljava/lang/String; = "4294967295"

.field private static final FILLED_SLOT_COUNT_KEY:Ljava/lang/String; = "filled_slot_count"

.field private static final SIGNATURE_SIZE:I = 0x46

.field private static final SIGNATURE_SIZE_KEY:Ljava/lang/String; = "signature_size"

.field private static final VERSION_KEY:Ljava/lang/String; = "version"


# instance fields
.field private final logger:Lorg/slf4j/Logger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;

    const-class v1, Lcom/audible/mobile/activation/network/parser/ActivationParser;

    invoke-direct {v0, v1}, Lcom/audible/mobile/logging/PIIAwareLoggerDelegate;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/audible/mobile/activation/network/parser/ActivationParser;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method private extractValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-virtual {p2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    const-string v2, ")"

    .line 155
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 159
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr v0, p1

    invoke-virtual {p2, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v2, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_0

    move v2, v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 165
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private extractValueInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/audible/mobile/activation/network/parser/ActivationParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x1

    if-eqz p1, :cond_1

    const-string v0, "4294967295"

    .line 179
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    invoke-static {p1, p2}, Lcom/audible/mobile/util/NumberUtils;->toInt(Ljava/lang/String;I)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    return p2
.end method

.method private getSlotEndIndex(ILjava/lang/String;)I
    .locals 3

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(slot="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    return v1

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v1, v0

    invoke-virtual {p2, p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 140
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0xa

    if-ne p2, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    return p1
.end method


# virtual methods
.method public checkError([B)Lcom/audible/mobile/activation/ActivationError;
    .locals 2

    .line 106
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/audible/mobile/util/UTF8Charset;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, "audible_error"

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/audible/mobile/activation/network/parser/ActivationParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 110
    :try_start_0
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Lcom/audible/mobile/activation/ActivationError;->NONE:Lcom/audible/mobile/activation/ActivationError;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/audible/mobile/activation/ActivationError;->valueOf(Ljava/lang/String;)Lcom/audible/mobile/activation/ActivationError;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    .line 112
    :catch_0
    sget-object p1, Lcom/audible/mobile/activation/ActivationError;->UNKNOWN_ERROR:Lcom/audible/mobile/activation/ActivationError;

    return-object p1
.end method

.method public parse([B)[B
    .locals 7

    .line 43
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/audible/mobile/util/UTF8Charset;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string v1, "audible_error"

    .line 45
    invoke-direct {p0, v1, v0}, Lcom/audible/mobile/activation/network/parser/ActivationParser;->extractValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-static {v1}, Lcom/audible/mobile/util/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 48
    iget-object p1, p0, Lcom/audible/mobile/activation/network/parser/ActivationParser;->logger:Lorg/slf4j/Logger;

    const-string v0, "Found error response {}, returning null"

    invoke-interface {p1, v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v3

    :cond_0
    const-string v1, "version"

    .line 52
    invoke-direct {p0, v1, v0}, Lcom/audible/mobile/activation/network/parser/ActivationParser;->extractValueInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 53
    iget-object p1, p0, Lcom/audible/mobile/activation/network/parser/ActivationParser;->logger:Lorg/slf4j/Logger;

    const-string v0, "No version found, returning null"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v3

    :cond_1
    const-string v1, "filled_slot_count"

    .line 57
    invoke-direct {p0, v1, v0}, Lcom/audible/mobile/activation/network/parser/ActivationParser;->extractValueInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 60
    iget-object p1, p0, Lcom/audible/mobile/activation/network/parser/ActivationParser;->logger:Lorg/slf4j/Logger;

    const-string v0, "No slots found, returning null"

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    return-object v3

    :cond_2
    const-string v2, "signature_size"

    .line 64
    invoke-direct {p0, v2, v0}, Lcom/audible/mobile/activation/network/parser/ActivationParser;->extractValueInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/16 v4, 0x46

    if-eq v2, v4, :cond_3

    .line 67
    iget-object p1, p0, Lcom/audible/mobile/activation/network/parser/ActivationParser;->logger:Lorg/slf4j/Logger;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Signature size of {} does not match expected size of {}, returning null"

    invoke-interface {p1, v2, v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    .line 71
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/audible/mobile/activation/network/parser/ActivationParser;->getSlotEndIndex(ILjava/lang/String;)I

    move-result v0

    .line 72
    array-length v2, p1

    sub-int/2addr v2, v0

    mul-int/lit8 v5, v1, 0x47

    if-eq v2, v5, :cond_4

    .line 75
    iget-object p1, p0, Lcom/audible/mobile/activation/network/parser/ActivationParser;->logger:Lorg/slf4j/Logger;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Encoded data length is {}, should be {}, returning null"

    invoke-interface {p1, v2, v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v3

    :cond_4
    mul-int/lit8 v2, v1, 0x46

    .line 79
    new-array v2, v2, [B

    .line 81
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    int-to-long v5, v0

    .line 82
    invoke-virtual {v3, v5, v6}, Ljava/io/ByteArrayInputStream;->skip(J)J

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v1, :cond_6

    .line 86
    invoke-virtual {v3}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    if-ge v0, v4, :cond_5

    goto :goto_1

    :cond_5
    mul-int/lit8 v0, p1, 0x46

    .line 90
    invoke-virtual {v3, v2, v0, v4}, Ljava/io/ByteArrayInputStream;->read([BII)I

    const-wide/16 v5, 0x1

    .line 91
    invoke-virtual {v3, v5, v6}, Ljava/io/ByteArrayInputStream;->skip(J)J

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-object v2
.end method
