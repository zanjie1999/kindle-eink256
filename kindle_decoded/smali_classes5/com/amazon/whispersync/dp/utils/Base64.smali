.class public Lcom/amazon/whispersync/dp/utils/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    .line 26
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeNoWrap([B)[B
    .locals 1

    const/4 v0, 0x2

    .line 22
    invoke-static {p0, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static encodeString([B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
