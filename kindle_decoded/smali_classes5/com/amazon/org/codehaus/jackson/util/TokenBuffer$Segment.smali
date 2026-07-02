.class public final Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;
.super Ljava/lang/Object;
.source "TokenBuffer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/org/codehaus/jackson/util/TokenBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "Segment"
.end annotation


# static fields
.field public static final TOKENS_PER_SEGMENT:I = 0x10

.field private static final TOKEN_TYPES_BY_INDEX:[Lcom/amazon/org/codehaus/jackson/JsonToken;


# instance fields
.field protected _next:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

.field protected _tokenTypes:J

.field protected final _tokens:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 1130
    sput-object v0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lcom/amazon/org/codehaus/jackson/JsonToken;

    .line 1131
    invoke-static {}, Lcom/amazon/org/codehaus/jackson/JsonToken;->values()[Lcom/amazon/org/codehaus/jackson/JsonToken;

    move-result-object v0

    .line 1132
    sget-object v1, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lcom/amazon/org/codehaus/jackson/JsonToken;

    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    const/16 v4, 0xf

    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    .line 1150
    iput-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public append(ILcom/amazon/org/codehaus/jackson/JsonToken;)Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;
    .locals 1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1177
    invoke-virtual {p0, p1, p2}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->set(ILcom/amazon/org/codehaus/jackson/JsonToken;)V

    const/4 p1, 0x0

    return-object p1

    .line 1180
    :cond_0
    new-instance p1, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;-><init>()V

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    const/4 v0, 0x0

    .line 1181
    invoke-virtual {p1, v0, p2}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->set(ILcom/amazon/org/codehaus/jackson/JsonToken;)V

    .line 1182
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    return-object p1
.end method

.method public append(ILcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;
    .locals 1

    const/16 v0, 0x10

    if-ge p1, v0, :cond_0

    .line 1188
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->set(ILcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1

    .line 1191
    :cond_0
    new-instance p1, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    invoke-direct {p1}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;-><init>()V

    iput-object p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    const/4 v0, 0x0

    .line 1192
    invoke-virtual {p1, v0, p2, p3}, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->set(ILcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V

    .line 1193
    iget-object p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    return-object p1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public next()Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;
    .locals 1

    .line 1170
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->_next:Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;

    return-object v0
.end method

.method public set(ILcom/amazon/org/codehaus/jackson/JsonToken;)V
    .locals 2

    .line 1198
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    int-to-long v0, p2

    if-lez p1, :cond_0

    shl-int/lit8 p1, p1, 0x2

    shl-long/2addr v0, p1

    .line 1205
    :cond_0
    iget-wide p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long/2addr p1, v0

    iput-wide p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    return-void
.end method

.method public set(ILcom/amazon/org/codehaus/jackson/JsonToken;Ljava/lang/Object;)V
    .locals 2

    .line 1210
    iget-object v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokens:[Ljava/lang/Object;

    aput-object p3, v0, p1

    .line 1211
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    int-to-long p2, p2

    if-lez p1, :cond_0

    shl-int/lit8 p1, p1, 0x2

    shl-long/2addr p2, p1

    .line 1218
    :cond_0
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    or-long p1, v0, p2

    iput-wide p1, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    return-void
.end method

.method public type(I)Lcom/amazon/org/codehaus/jackson/JsonToken;
    .locals 2

    .line 1158
    iget-wide v0, p0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->_tokenTypes:J

    if-lez p1, :cond_0

    shl-int/lit8 p1, p1, 0x2

    shr-long/2addr v0, p1

    :cond_0
    long-to-int p1, v0

    and-int/lit8 p1, p1, 0xf

    .line 1163
    sget-object v0, Lcom/amazon/org/codehaus/jackson/util/TokenBuffer$Segment;->TOKEN_TYPES_BY_INDEX:[Lcom/amazon/org/codehaus/jackson/JsonToken;

    aget-object p1, v0, p1

    return-object p1
.end method
