.class public Lcom/amazon/whispersync/org/apache/commons/io/input/CloseShieldInputStream;
.super Lcom/amazon/whispersync/org/apache/commons/io/input/ProxyInputStream;
.source "CloseShieldInputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/io/input/ProxyInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 50
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/io/input/ClosedInputStream;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/io/input/ClosedInputStream;-><init>()V

    iput-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    return-void
.end method
