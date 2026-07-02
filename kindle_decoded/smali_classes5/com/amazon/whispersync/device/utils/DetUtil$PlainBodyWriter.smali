.class public Lcom/amazon/whispersync/device/utils/DetUtil$PlainBodyWriter;
.super Ljava/lang/Object;
.source "DetUtil.java"

# interfaces
.implements Lcom/amazon/whispersync/device/utils/DetUtil$BodyWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/device/utils/DetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlainBodyWriter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Ljava/io/BufferedReader;Ljava/io/Writer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v1, v0, [C

    :goto_0
    const/4 v2, 0x0

    .line 90
    invoke-virtual {p1, v1, v2, v0}, Ljava/io/BufferedReader;->read([CII)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-virtual {p2, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    goto :goto_0
.end method
