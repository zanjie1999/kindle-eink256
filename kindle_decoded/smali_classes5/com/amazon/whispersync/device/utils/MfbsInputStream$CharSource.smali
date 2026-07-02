.class Lcom/amazon/whispersync/device/utils/MfbsInputStream$CharSource;
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
    name = "CharSource"
.end annotation


# instance fields
.field private reader:Ljava/io/Reader;


# direct methods
.method constructor <init>(Ljava/io/Reader;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream$CharSource;->reader:Ljava/io/Reader;

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

    .line 124
    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    .line 126
    :try_start_0
    iget-object p1, p0, Lcom/amazon/whispersync/device/utils/MfbsInputStream$CharSource;->reader:Ljava/io/Reader;

    invoke-static {p1, v0}, Lcom/amazon/whispersync/google/common/io/CharStreams;->copy(Ljava/lang/Readable;Ljava/lang/Appendable;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    throw p1
.end method
