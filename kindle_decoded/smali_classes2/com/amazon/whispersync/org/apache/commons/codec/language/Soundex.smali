.class public Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;
.super Ljava/lang/Object;
.source "Soundex.java"

# interfaces
.implements Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;


# static fields
.field public static final US_ENGLISH:Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;

.field private static final US_ENGLISH_MAPPING:[C

.field public static final US_ENGLISH_MAPPING_STRING:Ljava/lang/String; = "01230120022455012623010202"


# instance fields
.field private maxLength:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final soundexMapping:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "01230120022455012623010202"

    .line 52
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    .line 59
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->US_ENGLISH:Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 66
    iput v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->maxLength:I

    .line 82
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->US_ENGLISH_MAPPING:[C

    iput-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->soundexMapping:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 66
    iput v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->maxLength:I

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->soundexMapping:[C

    return-void
.end method

.method public constructor <init>([C)V
    .locals 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 66
    iput v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->maxLength:I

    .line 96
    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->soundexMapping:[C

    .line 97
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private getMappingCode(Ljava/lang/String;I)C
    .locals 4

    .line 185
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->map(C)C

    move-result v0

    const/4 v1, 0x1

    if-le p2, v1, :cond_2

    const/16 v1, 0x30

    if-eq v0, v1, :cond_2

    add-int/lit8 v1, p2, -0x1

    .line 188
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x57

    const/16 v3, 0x48

    if-eq v3, v1, :cond_0

    if-ne v2, v1, :cond_2

    :cond_0
    add-int/lit8 p2, p2, -0x2

    .line 190
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 191
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->map(C)C

    move-result p2

    if-eq p2, v0, :cond_1

    if-eq v3, p1, :cond_1

    if-ne v2, p1, :cond_2

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method private getSoundexMapping()[C
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->soundexMapping:[C

    return-object v0
.end method

.method private map(C)C
    .locals 3

    add-int/lit8 v0, p1, -0x41

    if-ltz v0, :cond_0

    .line 231
    invoke-direct {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->getSoundexMapping()[C

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->getSoundexMapping()[C

    move-result-object p1

    aget-char p1, p1, v0

    return p1

    .line 232
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The character is not mapped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public difference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 132
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

    .line 150
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 153
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 151
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;

    const-string v0, "Parameter supplied to Soundex encode is not of type java.lang.String"

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 167
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->soundex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMaxLength()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    iget v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->maxLength:I

    return v0
.end method

.method public setMaxLength(I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 246
    iput p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->maxLength:I

    return-void
.end method

.method public soundex(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 262
    :cond_0
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 263
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    const/4 v0, 0x4

    new-array v1, v0, [C

    .line 266
    fill-array-data v1, :array_0

    const/4 v2, 0x0

    .line 269
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aput-char v3, v1, v2

    .line 271
    invoke-direct {p0, p1, v2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->getMappingCode(Ljava/lang/String;I)C

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 272
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_4

    if-ge v4, v0, :cond_4

    add-int/lit8 v5, v3, 0x1

    .line 273
    invoke-direct {p0, p1, v3}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Soundex;->getMappingCode(Ljava/lang/String;I)C

    move-result v3

    if-eqz v3, :cond_3

    const/16 v6, 0x30

    if-eq v3, v6, :cond_2

    if-eq v3, v2, :cond_2

    add-int/lit8 v2, v4, 0x1

    .line 276
    aput-char v3, v1, v4

    move v4, v2

    :cond_2
    move v2, v3

    :cond_3
    move v3, v5

    goto :goto_0

    .line 281
    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>([C)V

    return-object p1

    :array_0
    .array-data 2
        0x30s
        0x30s
        0x30s
        0x30s
    .end array-data
.end method
