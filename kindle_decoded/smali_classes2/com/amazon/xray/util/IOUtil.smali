.class public Lcom/amazon/xray/util/IOUtil;
.super Ljava/lang/Object;
.source "IOUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.xray.util.IOUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 30
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 32
    sget-object v0, Lcom/amazon/xray/util/IOUtil;->TAG:Ljava/lang/String;

    const-string v1, "Exception while closing stream, ignoring"

    invoke-static {v0, v1, p0}, Lcom/amazon/xray/plugin/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
