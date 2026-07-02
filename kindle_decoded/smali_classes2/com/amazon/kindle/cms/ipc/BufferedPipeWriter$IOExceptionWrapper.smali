.class Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$IOExceptionWrapper;
.super Ljava/lang/Object;
.source "BufferedPipeWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IOExceptionWrapper"
.end annotation


# instance fields
.field exception:Ljava/io/IOException;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$IOExceptionWrapper;->exception:Ljava/io/IOException;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$1;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/amazon/kindle/cms/ipc/BufferedPipeWriter$IOExceptionWrapper;-><init>()V

    return-void
.end method
