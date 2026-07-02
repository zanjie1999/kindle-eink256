.class public Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;
.super Ljava/lang/Object;
.source "Nysiis.java"

# interfaces
.implements Lcom/amazon/whispersync/org/apache/commons/codec/StringEncoder;


# static fields
.field private static final CHARS_A:[C

.field private static final CHARS_AF:[C

.field private static final CHARS_C:[C

.field private static final CHARS_FF:[C

.field private static final CHARS_G:[C

.field private static final CHARS_N:[C

.field private static final CHARS_NN:[C

.field private static final CHARS_S:[C

.field private static final CHARS_SSS:[C

.field private static final PAT_DT_ETC:Ljava/util/regex/Pattern;

.field private static final PAT_EE_IE:Ljava/util/regex/Pattern;

.field private static final PAT_K:Ljava/util/regex/Pattern;

.field private static final PAT_KN:Ljava/util/regex/Pattern;

.field private static final PAT_MAC:Ljava/util/regex/Pattern;

.field private static final PAT_PH_PF:Ljava/util/regex/Pattern;

.field private static final PAT_SCH:Ljava/util/regex/Pattern;

.field private static final SPACE:C = ' '

.field private static final TRUE_LENGTH:I = 0x6


# instance fields
.field private final strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [C

    const/16 v2, 0x41

    const/4 v3, 0x0

    aput-char v2, v1, v3

    .line 72
    sput-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_A:[C

    const/4 v1, 0x2

    new-array v2, v1, [C

    .line 73
    fill-array-data v2, :array_0

    sput-object v2, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_AF:[C

    new-array v2, v0, [C

    const/16 v4, 0x43

    aput-char v4, v2, v3

    .line 74
    sput-object v2, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_C:[C

    new-array v2, v1, [C

    .line 75
    fill-array-data v2, :array_1

    sput-object v2, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_FF:[C

    new-array v2, v0, [C

    const/16 v4, 0x47

    aput-char v4, v2, v3

    .line 76
    sput-object v2, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_G:[C

    new-array v2, v0, [C

    const/16 v4, 0x4e

    aput-char v4, v2, v3

    .line 77
    sput-object v2, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_N:[C

    new-array v1, v1, [C

    .line 78
    fill-array-data v1, :array_2

    sput-object v1, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_NN:[C

    new-array v0, v0, [C

    const/16 v1, 0x53

    aput-char v1, v0, v3

    .line 79
    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_S:[C

    const/4 v0, 0x3

    new-array v0, v0, [C

    .line 80
    fill-array-data v0, :array_3

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_SSS:[C

    const-string v0, "^MAC"

    .line 82
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->PAT_MAC:Ljava/util/regex/Pattern;

    const-string v0, "^KN"

    .line 83
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->PAT_KN:Ljava/util/regex/Pattern;

    const-string v0, "^K"

    .line 84
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->PAT_K:Ljava/util/regex/Pattern;

    const-string v0, "^(PH|PF)"

    .line 85
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->PAT_PH_PF:Ljava/util/regex/Pattern;

    const-string v0, "^SCH"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->PAT_SCH:Ljava/util/regex/Pattern;

    const-string v0, "(EE|IE)$"

    .line 87
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->PAT_EE_IE:Ljava/util/regex/Pattern;

    const-string v0, "(DT|RT|RD|NT|ND)$"

    .line 88
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->PAT_DT_ETC:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 2
        0x41s
        0x46s
    .end array-data

    :array_1
    .array-data 2
        0x46s
        0x46s
    .end array-data

    :array_2
    .array-data 2
        0x4es
        0x4es
    .end array-data

    :array_3
    .array-data 2
        0x53s
        0x53s
        0x53s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 178
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-boolean p1, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->strict:Z

    return-void
.end method

.method private static isVowel(C)Z
    .locals 1

    const/16 v0, 0x41

    if-eq p0, v0, :cond_1

    const/16 v0, 0x45

    if-eq p0, v0, :cond_1

    const/16 v0, 0x49

    if-eq p0, v0, :cond_1

    const/16 v0, 0x4f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static transcodeRemaining(CCCC)[C
    .locals 2

    const/16 v0, 0x45

    if-ne p1, v0, :cond_0

    const/16 v0, 0x56

    if-ne p2, v0, :cond_0

    .line 121
    sget-object p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_AF:[C

    return-object p0

    .line 125
    :cond_0
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->isVowel(C)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    sget-object p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_A:[C

    return-object p0

    :cond_1
    const/16 v0, 0x51

    if-ne p1, v0, :cond_2

    .line 131
    sget-object p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_G:[C

    return-object p0

    :cond_2
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_3

    .line 133
    sget-object p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_S:[C

    return-object p0

    :cond_3
    const/16 v0, 0x4d

    if-ne p1, v0, :cond_4

    .line 135
    sget-object p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_N:[C

    return-object p0

    :cond_4
    const/16 v0, 0x4b

    if-ne p1, v0, :cond_6

    const/16 p0, 0x4e

    if-ne p2, p0, :cond_5

    .line 141
    sget-object p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_NN:[C

    return-object p0

    .line 143
    :cond_5
    sget-object p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_C:[C

    return-object p0

    :cond_6
    const/16 v0, 0x53

    const/16 v1, 0x48

    if-ne p1, v0, :cond_7

    const/16 v0, 0x43

    if-ne p2, v0, :cond_7

    if-ne p3, v1, :cond_7

    .line 149
    sget-object p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_SSS:[C

    return-object p0

    :cond_7
    const/16 p3, 0x50

    if-ne p1, p3, :cond_8

    if-ne p2, v1, :cond_8

    .line 154
    sget-object p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->CHARS_FF:[C

    return-object p0

    :cond_8
    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p1, v1, :cond_a

    .line 158
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->isVowel(C)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {p2}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->isVowel(C)Z

    move-result p2

    if-nez p2, :cond_a

    :cond_9
    new-array p1, v0, [C

    aput-char p0, p1, p3

    return-object p1

    :cond_a
    const/16 p2, 0x57

    if-ne p1, p2, :cond_b

    .line 163
    invoke-static {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->isVowel(C)Z

    move-result p2

    if-eqz p2, :cond_b

    new-array p1, v0, [C

    aput-char p0, p1, p3

    return-object p1

    :cond_b
    new-array p0, v0, [C

    aput-char p1, p0, p3

    return-object p0
.end method


# virtual methods
.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;
        }
    .end annotation

    .line 211
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 214
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->nysiis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 212
    :cond_0
    new-instance p1, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;

    const-string v0, "Parameter supplied to Nysiis encode is not of type java.lang.String"

    invoke-direct {p1, v0}, Lcom/amazon/whispersync/org/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 228
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->nysiis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isStrict()Z
    .locals 1

    .line 237
    iget-boolean v0, p0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->strict:Z

    return v0
.end method

.method public nysiis(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 253
    :cond_0
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/codec/language/SoundexUtils;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    .line 261
    :cond_1
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->PAT_MAC:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "MCC"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 262
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->PAT_KN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "NN"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 263
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->PAT_K:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "C"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 264
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->PAT_PH_PF:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "FF"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 265
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->PAT_SCH:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "SSS"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 269
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->PAT_EE_IE:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "Y"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 270
    sget-object v0, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->PAT_DT_ETC:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v0, "D"

    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 274
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 278
    array-length v2, p1

    const/4 v3, 0x1

    const/4 v4, 0x1

    :goto_0
    if-ge v4, v2, :cond_5

    add-int/lit8 v5, v2, -0x1

    const/16 v6, 0x20

    if-ge v4, v5, :cond_2

    add-int/lit8 v5, v4, 0x1

    .line 281
    aget-char v5, p1, v5

    goto :goto_1

    :cond_2
    const/16 v5, 0x20

    :goto_1
    add-int/lit8 v7, v2, -0x2

    if-ge v4, v7, :cond_3

    add-int/lit8 v6, v4, 0x2

    .line 282
    aget-char v6, p1, v6

    :cond_3
    add-int/lit8 v7, v4, -0x1

    .line 283
    aget-char v8, p1, v7

    aget-char v9, p1, v4

    invoke-static {v8, v9, v5, v6}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->transcodeRemaining(CCCC)[C

    move-result-object v5

    .line 284
    array-length v6, v5

    invoke-static {v5, v1, p1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    aget-char v5, p1, v4

    aget-char v6, p1, v7

    if-eq v5, v6, :cond_4

    .line 288
    aget-char v5, p1, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 292
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-le p1, v3, :cond_8

    .line 293
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v2, 0x53

    if-ne p1, v2, :cond_6

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    .line 301
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/16 v4, 0x41

    const/4 v5, 0x2

    if-le v2, v5, :cond_7

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_7

    const/16 v2, 0x59

    if-ne p1, v2, :cond_7

    .line 305
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_7
    if-ne p1, v4, :cond_8

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    sub-int/2addr p1, v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 315
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 316
    invoke-virtual {p0}, Lcom/amazon/whispersync/org/apache/commons/codec/language/Nysiis;->isStrict()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_9
    return-object p1
.end method
