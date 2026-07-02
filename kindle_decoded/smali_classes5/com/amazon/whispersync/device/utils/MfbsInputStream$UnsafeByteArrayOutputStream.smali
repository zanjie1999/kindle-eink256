.class Lcom/amazon/whispersync/device/utils/MfbsInputStream$UnsafeByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "MfbsInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/device/utils/MfbsInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnsafeByteArrayOutputStream"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/whispersync/device/utils/MfbsInputStream$1;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Lcom/amazon/whispersync/device/utils/MfbsInputStream$UnsafeByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method getBuf()[B
    .locals 1

    .line 92
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method getCount()I
    .locals 1

    .line 96
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    return v0
.end method
