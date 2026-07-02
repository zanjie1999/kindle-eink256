.class Lcom/amazon/whispersync/device/utils/MfbsInputStream$ByteSource;
.super Ljava/lang/Object;
.source "MfbsInputStream.java"

# interfaces
.implements Lcom/amazon/whispersync/device/utils/MfbsInputStream$InputSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/device/utils/MfbsInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ByteSource"
.end annotation


# instance fields
.field private input:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream$ByteSource;->input:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method public copyTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream$ByteSource;->input:Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/amazon/whispersync/google/common/io/ByteStreams;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    return-void
.end method
