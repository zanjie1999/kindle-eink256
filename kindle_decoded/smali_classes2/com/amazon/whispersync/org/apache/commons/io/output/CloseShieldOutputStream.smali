.class public Lcom/amazon/whispersync/org/apache/commons/io/output/CloseShieldOutputStream;
.super Lcom/amazon/whispersync/org/apache/commons/io/output/ProxyOutputStream;
.source "CloseShieldOutputStream.java"


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/org/apache/commons/io/output/ProxyOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 50
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/io/output/ClosedOutputStream;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/io/output/ClosedOutputStream;-><init>()V

    iput-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method
