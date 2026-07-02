.class public final Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;
.super Ljava/lang/Object;
.source "KindleDocColorModeBuilder.java"


# static fields
.field private static final READER_THEME_ID:I = 0x1c
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private params:[Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x23

    new-array v0, v0, [Ljava/lang/Object;

    .line 135
    iput-object v0, p0, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->params:[Ljava/lang/Object;

    return-void
.end method

.method private getBoolValue(I)Z
    .locals 0

    .line 178
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getValue(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public static getBuilder()Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;
    .locals 1

    .line 144
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;

    invoke-direct {v0}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;-><init>()V

    return-object v0
.end method

.method private getIntValue(I)I
    .locals 1

    .line 164
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getValue(I)Ljava/lang/Object;

    move-result-object p1

    .line 165
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 166
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method private getValue(I)Ljava/lang/Object;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->params:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method


# virtual methods
.method public build()Lcom/amazon/android/docviewer/KindleDocColorMode;
    .locals 32

    move-object/from16 v0, p0

    .line 229
    new-instance v30, Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-object/from16 v1, v30

    const/4 v2, 0x0

    .line 230
    invoke-direct {v0, v2}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getValue(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    const/4 v3, 0x1

    .line 231
    invoke-direct {v0, v3}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v3

    const/4 v4, 0x2

    .line 232
    invoke-direct {v0, v4}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v4

    const/4 v5, 0x3

    .line 233
    invoke-direct {v0, v5}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v5

    const/4 v6, 0x4

    .line 234
    invoke-direct {v0, v6}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v6

    const/4 v7, 0x5

    .line 236
    invoke-direct {v0, v7}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v7

    const/4 v8, 0x6

    .line 237
    invoke-direct {v0, v8}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v8

    const/4 v9, 0x7

    .line 238
    invoke-direct {v0, v9}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v9

    const/16 v10, 0x8

    .line 239
    invoke-direct {v0, v10}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v10

    const/16 v11, 0x9

    .line 241
    invoke-direct {v0, v11}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v11

    const/16 v12, 0xa

    .line 242
    invoke-direct {v0, v12}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v12

    const/16 v13, 0xb

    .line 243
    invoke-direct {v0, v13}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v13

    const/16 v14, 0xc

    .line 244
    invoke-direct {v0, v14}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v14

    const/16 v15, 0xd

    .line 245
    invoke-direct {v0, v15}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v15

    move-object/from16 v31, v1

    const/16 v1, 0xe

    .line 246
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v16

    const/16 v1, 0xf

    .line 247
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v17

    const/16 v1, 0x10

    .line 248
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v18

    const/16 v1, 0x11

    .line 249
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getBoolValue(I)Z

    move-result v19

    const/16 v1, 0x12

    .line 251
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Ljava/lang/String;

    const/16 v1, 0x13

    .line 253
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v21

    const/16 v1, 0x18

    .line 255
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v22

    const/16 v1, 0x19

    .line 256
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v23

    const/16 v1, 0x1a

    .line 257
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v24

    const/16 v1, 0x1b

    .line 258
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v25

    const/16 v1, 0x1d

    .line 259
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v26

    const/16 v1, 0x1e

    .line 260
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v27

    const/16 v1, 0x1f

    .line 261
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v28

    const/16 v1, 0x20

    .line 262
    invoke-direct {v0, v1}, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->getIntValue(I)I

    move-result v29

    move-object/from16 v1, v31

    invoke-direct/range {v1 .. v29}, Lcom/amazon/android/docviewer/KindleDocColorMode;-><init>(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;IIIIIIIIIIIIIIIIZLjava/lang/String;IIIIIIIII)V

    return-object v30
.end method

.method public set(ILcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->params:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 198
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string p2, "_"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, p2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    .line 199
    iget-object p2, p0, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->params:[Ljava/lang/Object;

    const/16 v0, 0x12

    aput-object p1, p2, v0

    return-object p0
.end method

.method public set(ILjava/lang/Object;)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->params:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-object p0
.end method

.method public setHighlightColorForAll(I)Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->params:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 216
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->params:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 217
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->params:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 218
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocColorModeBuilder;->params:[Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 v1, 0x8

    aput-object p1, v0, v1

    return-object p0
.end method
