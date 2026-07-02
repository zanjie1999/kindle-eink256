.class public final enum Lcom/amazon/kindle/com/amazonaws/util/Base64;
.super Ljava/lang/Enum;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/util/Base64;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/util/Base64;

.field private static final CODEC:Lcom/amazon/kindle/com/amazonaws/util/Base64Codec;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/amazon/kindle/com/amazonaws/util/Base64;

    .line 23
    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/Base64;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/util/Base64;

    .line 26
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/util/Base64Codec;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/util/Base64Codec;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/util/Base64;->CODEC:Lcom/amazon/kindle/com/amazonaws/util/Base64Codec;

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 56
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 59
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [B

    .line 60
    invoke-static {p0, v0}, Lcom/amazon/kindle/com/amazonaws/util/CodecUtils;->sanitize(Ljava/lang/String;[B)I

    move-result p0

    .line 61
    sget-object v1, Lcom/amazon/kindle/com/amazonaws/util/Base64;->CODEC:Lcom/amazon/kindle/com/amazonaws/util/Base64Codec;

    invoke-virtual {v1, v0, p0}, Lcom/amazon/kindle/com/amazonaws/util/Base64Codec;->decode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static decode([B)[B
    .locals 2

    if-eqz p0, :cond_1

    .line 70
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/Base64;->CODEC:Lcom/amazon/kindle/com/amazonaws/util/Base64Codec;

    array-length v1, p0

    invoke-virtual {v0, p0, v1}, Lcom/amazon/kindle/com/amazonaws/util/Base64Codec;->decode([BI)[B

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static varargs encodeAsString([B)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 35
    :cond_0
    array-length v0, p0

    if-nez v0, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/Base64;->CODEC:Lcom/amazon/kindle/com/amazonaws/util/Base64Codec;

    invoke-virtual {v0, p0}, Lcom/amazon/kindle/com/amazonaws/util/Base64Codec;->encode([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/com/amazonaws/util/CodecUtils;->toStringDirect([B)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/util/Base64;
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kindle/com/amazonaws/util/Base64;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/util/Base64;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/util/Base64;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/Base64;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/util/Base64;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/util/Base64;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/util/Base64;

    return-object v0
.end method
