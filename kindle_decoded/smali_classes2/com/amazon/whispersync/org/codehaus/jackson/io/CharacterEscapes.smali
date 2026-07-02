.class public abstract Lcom/amazon/whispersync/org/codehaus/jackson/io/CharacterEscapes;
.super Ljava/lang/Object;
.source "CharacterEscapes.java"


# static fields
.field public static final ESCAPE_CUSTOM:I = -0x2

.field public static final ESCAPE_NONE:I = 0x0

.field public static final ESCAPE_STANDARD:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static standardAsciiEscapesForJSON()[I
    .locals 4

    .line 67
    invoke-static {}, Lcom/amazon/whispersync/org/codehaus/jackson/util/CharTypes;->get7BitOutputEscapes()[I

    move-result-object v0

    .line 68
    array-length v1, v0

    .line 69
    new-array v1, v1, [I

    .line 70
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public abstract getEscapeCodesForAscii()[I
.end method

.method public abstract getEscapeSequence(I)Lcom/amazon/whispersync/org/codehaus/jackson/SerializableString;
.end method
