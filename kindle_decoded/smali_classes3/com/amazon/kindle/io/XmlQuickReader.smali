.class public Lcom/amazon/kindle/io/XmlQuickReader;
.super Ljava/lang/Object;
.source "XmlQuickReader.java"


# instance fields
.field private attributes:Ljava/lang/String;

.field private currentTagId:I

.field private currentTagLevel:I

.field private currentTagName:Ljava/lang/String;

.field private currentTagValue:Ljava/lang/String;

.field private lastBeginPosition:I

.field private final pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

.field private parseAttributes:Z

.field private parseComments:Z

.field private position:I

.field private processingLevel:I

.field private skipped:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/io/StringStream;)V
    .locals 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->position:I

    const/4 v1, 0x0

    .line 35
    iput-object v1, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagName:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagValue:Ljava/lang/String;

    .line 43
    iput v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagLevel:I

    .line 47
    iput v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->processingLevel:I

    .line 51
    iput v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagId:I

    .line 53
    iput-object v1, p0, Lcom/amazon/kindle/io/XmlQuickReader;->skipped:Ljava/lang/String;

    .line 62
    iput-boolean v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->parseAttributes:Z

    .line 64
    iput v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->lastBeginPosition:I

    .line 71
    iput-object v1, p0, Lcom/amazon/kindle/io/XmlQuickReader;->attributes:Ljava/lang/String;

    .line 187
    iput-boolean v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->parseComments:Z

    .line 79
    iput-object p1, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    return-void
.end method


# virtual methods
.method public final jumpTo(Ljava/lang/String;)Z
    .locals 1

    .line 318
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kindle/io/XmlQuickReader;->nextTag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final nextTag()Z
    .locals 13

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagName:Ljava/lang/String;

    const-string v1, ""

    .line 201
    iput-object v1, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagValue:Ljava/lang/String;

    .line 202
    iput-object v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->attributes:Ljava/lang/String;

    .line 203
    iget v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagId:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagId:I

    .line 204
    iget v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->position:I

    iput v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->lastBeginPosition:I

    .line 205
    :goto_0
    iget-object v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/io/StringStream;->exist(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    .line 208
    iget-object v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/io/StringStream;->charAt(I)C

    move-result v2

    const/16 v4, 0x3c

    if-ne v2, v4, :cond_17

    .line 209
    iget-object v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    iget v5, p0, Lcom/amazon/kindle/io/XmlQuickReader;->lastBeginPosition:I

    invoke-virtual {v2, v5, v0}, Lcom/amazon/kindle/io/StringStream;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->skipped:Ljava/lang/String;

    .line 210
    iget-object v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v2, v5}, Lcom/amazon/kindle/io/StringStream;->charAt(I)C

    move-result v2

    const/16 v6, 0x2f

    const/16 v7, 0x3e

    if-ne v2, v6, :cond_0

    .line 214
    iget v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->processingLevel:I

    sub-int/2addr v2, v1

    iput v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->processingLevel:I

    .line 215
    iget-object v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    invoke-virtual {v2, v7, v0}, Lcom/amazon/kindle/io/StringStream;->indexOf(II)I

    move-result v0

    goto/16 :goto_8

    .line 216
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    invoke-virtual {v2, v5}, Lcom/amazon/kindle/io/StringStream;->charAt(I)C

    move-result v2

    const/16 v8, 0x21

    if-ne v2, v8, :cond_1

    iget-boolean v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->parseComments:Z

    if-eqz v2, :cond_17

    :cond_1
    iget-object v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    .line 217
    invoke-virtual {v2, v5}, Lcom/amazon/kindle/io/StringStream;->charAt(I)C

    move-result v2

    const/16 v8, 0x3f

    if-ne v2, v8, :cond_2

    goto/16 :goto_8

    .line 220
    :cond_2
    iget v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->processingLevel:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->processingLevel:I

    move v2, v0

    .line 223
    :goto_1
    iget-object v8, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    invoke-virtual {v8, v2}, Lcom/amazon/kindle/io/StringStream;->exist(I)Z

    move-result v8

    const/16 v9, 0xa

    if-eqz v8, :cond_4

    .line 224
    iget-object v8, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    invoke-virtual {v8, v2}, Lcom/amazon/kindle/io/StringStream;->charAt(I)C

    move-result v8

    const/16 v10, 0x20

    if-eq v8, v10, :cond_5

    iget-object v8, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    .line 225
    invoke-virtual {v8, v2}, Lcom/amazon/kindle/io/StringStream;->charAt(I)C

    move-result v8

    if-eq v8, v7, :cond_5

    iget-object v8, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    .line 226
    invoke-virtual {v8, v2}, Lcom/amazon/kindle/io/StringStream;->charAt(I)C

    move-result v8

    if-eq v8, v9, :cond_5

    iget-object v8, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    .line 227
    invoke-virtual {v8, v2}, Lcom/amazon/kindle/io/StringStream;->charAt(I)C

    move-result v8

    const/16 v10, 0x9

    if-eq v8, v10, :cond_5

    iget-object v8, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    .line 228
    invoke-virtual {v8, v2}, Lcom/amazon/kindle/io/StringStream;->charAt(I)C

    move-result v8

    if-ne v8, v6, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    move v2, v0

    .line 235
    :cond_5
    :goto_2
    iget-object v8, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    invoke-virtual {v8, v5, v2}, Lcom/amazon/kindle/io/StringStream;->substring(II)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagName:Ljava/lang/String;

    .line 236
    iget-object v5, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    invoke-virtual {v5, v2}, Lcom/amazon/kindle/io/StringStream;->charAt(I)C

    move-result v5

    if-eq v5, v7, :cond_9

    move v5, v2

    .line 240
    :goto_3
    iget-object v8, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    invoke-virtual {v8, v5}, Lcom/amazon/kindle/io/StringStream;->exist(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 241
    iget-object v8, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    invoke-virtual {v8, v5}, Lcom/amazon/kindle/io/StringStream;->charAt(I)C

    move-result v8

    if-ne v8, v7, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_7
    move v5, v2

    .line 247
    :goto_4
    iget-boolean v8, p0, Lcom/amazon/kindle/io/XmlQuickReader;->parseAttributes:Z

    if-eqz v8, :cond_8

    if-le v5, v2, :cond_8

    .line 248
    iget-object v8, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v8, v2, v5}, Lcom/amazon/kindle/io/StringStream;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->attributes:Ljava/lang/String;

    :cond_8
    move v2, v5

    .line 254
    :cond_9
    iget-object v5, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    add-int/lit8 v8, v2, -0x1

    invoke-virtual {v5, v8}, Lcom/amazon/kindle/io/StringStream;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_b

    .line 255
    iget-object v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/io/StringStream;->exist(I)Z

    move-result v0

    if-eqz v0, :cond_a

    move v2, v3

    :cond_a
    iput v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->position:I

    .line 256
    iget v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->processingLevel:I

    iput v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagLevel:I

    sub-int/2addr v0, v1

    .line 257
    iput v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->processingLevel:I

    return v1

    :cond_b
    move v5, v2

    const/4 v8, 0x0

    const/4 v10, 0x0

    .line 263
    :goto_5
    iget-object v11, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    invoke-virtual {v11, v5}, Lcom/amazon/kindle/io/StringStream;->exist(I)Z

    move-result v11

    if-eqz v11, :cond_17

    .line 264
    iget-object v11, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    const-string v12, "<![CDATA["

    invoke-virtual {v11, v12, v5}, Lcom/amazon/kindle/io/StringStream;->startsWith(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_c

    const/4 v8, 0x1

    const/4 v10, 0x1

    :cond_c
    if-eqz v8, :cond_d

    .line 268
    iget-object v11, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    const-string v12, "]]>"

    invoke-virtual {v11, v12, v5}, Lcom/amazon/kindle/io/StringStream;->startsWith(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_d

    add-int/lit8 v5, v5, 0x3

    const/4 v8, 0x0

    :cond_d
    if-nez v8, :cond_16

    .line 272
    iget-object v11, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    .line 273
    invoke-virtual {v11, v5}, Lcom/amazon/kindle/io/StringStream;->charAt(I)C

    move-result v11

    if-ne v11, v4, :cond_16

    .line 274
    iget-object v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/io/StringStream;->exist(I)Z

    move-result v4

    if-eqz v4, :cond_e

    goto :goto_6

    :cond_e
    move v3, v5

    :goto_6
    invoke-virtual {v0, v3}, Lcom/amazon/kindle/io/StringStream;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_14

    .line 276
    iget-object v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    add-int/lit8 v3, v5, 0x2

    iget-object v4, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v3, v4}, Lcom/amazon/kindle/io/StringStream;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    sub-int v0, v5, v2

    if-le v0, v1, :cond_10

    if-eqz v10, :cond_f

    .line 281
    iget-object v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    add-int/2addr v2, v9

    add-int/lit8 v3, v5, -0x3

    invoke-virtual {v0, v2, v3}, Lcom/amazon/kindle/io/StringStream;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagValue:Ljava/lang/String;

    goto :goto_7

    .line 283
    :cond_f
    iget-object v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    add-int/2addr v2, v1

    invoke-virtual {v0, v2, v5}, Lcom/amazon/kindle/io/StringStream;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagValue:Ljava/lang/String;

    .line 286
    :cond_10
    :goto_7
    iget-object v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    invoke-virtual {v0, v7, v5}, Lcom/amazon/kindle/io/StringStream;->indexOf(II)I

    move-result v0

    .line 287
    iget-object v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Lcom/amazon/kindle/io/StringStream;->exist(I)Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v3

    :cond_11
    iput v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->position:I

    .line 288
    iget v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->processingLevel:I

    iput v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagLevel:I

    sub-int/2addr v0, v1

    .line 289
    iput v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->processingLevel:I

    return v1

    .line 292
    :cond_12
    iget v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->processingLevel:I

    iput v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagLevel:I

    .line 293
    iget-object v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/io/StringStream;->exist(I)Z

    move-result v0

    if-eqz v0, :cond_13

    move v2, v3

    :cond_13
    iput v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->position:I

    return v1

    .line 298
    :cond_14
    iget v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->processingLevel:I

    iput v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagLevel:I

    .line 299
    iget-object v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->pXmlStringStream:Lcom/amazon/kindle/io/StringStream;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Lcom/amazon/kindle/io/StringStream;->exist(I)Z

    move-result v0

    if-eqz v0, :cond_15

    move v2, v3

    :cond_15
    iput v2, p0, Lcom/amazon/kindle/io/XmlQuickReader;->position:I

    return v1

    :cond_16
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_5

    .line 306
    :cond_17
    :goto_8
    iput v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->position:I

    add-int/2addr v0, v1

    goto/16 :goto_0

    :cond_18
    return v3
.end method

.method public final value()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/kindle/io/XmlQuickReader;->currentTagValue:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/TernaryTree;->html_entities_code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
