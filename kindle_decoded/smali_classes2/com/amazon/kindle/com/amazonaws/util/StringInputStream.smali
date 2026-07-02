.class public Lcom/amazon/kindle/com/amazonaws/util/StringInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "StringInputStream.java"


# instance fields
.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 37
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/util/StringUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 38
    iput-object p1, p0, Lcom/amazon/kindle/com/amazonaws/util/StringInputStream;->string:Ljava/lang/String;

    return-void
.end method
