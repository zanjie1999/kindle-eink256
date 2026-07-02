.class Landroidx/exifinterface/media/ExifInterfaceUtils;
.super Ljava/lang/Object;
.source "ExifInterfaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/exifinterface/media/ExifInterfaceUtils$Api23Impl;,
        Landroidx/exifinterface/media/ExifInterfaceUtils$Api21Impl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExifInterfaceUtils"


# direct methods
.method static byteArrayToHexString([B)Ljava/lang/String;
    .locals 5

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 110
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 111
    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    .line 137
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 139
    throw p0

    :catch_1
    :cond_0
    :goto_0
    return-void
.end method

.method static convertToLongArray(Ljava/lang/Object;)[J
    .locals 4

    .line 80
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 81
    check-cast p0, [I

    .line 82
    array-length v0, p0

    new-array v0, v0, [J

    const/4 v1, 0x0

    .line 83
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    .line 84
    aget v2, p0, v1

    int-to-long v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 87
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 88
    check-cast p0, [J

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static startsWith([B[B)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 97
    :cond_0
    array-length v1, p0

    array-length v2, p1

    if-ge v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    .line 100
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 101
    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-eq v2, v3, :cond_2

    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    :goto_1
    return v0
.end method
