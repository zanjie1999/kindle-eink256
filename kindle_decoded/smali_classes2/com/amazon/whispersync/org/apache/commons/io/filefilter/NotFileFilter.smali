.class public Lcom/amazon/whispersync/org/apache/commons/io/filefilter/NotFileFilter;
.super Lcom/amazon/whispersync/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "NotFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final filter:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;)V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    if-eqz p1, :cond_0

    .line 44
    iput-object p1, p0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/NotFileFilter;->filter:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

    return-void

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The filter must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/NotFileFilter;->filter:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/NotFileFilter;->filter:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-interface {v0, p1, p2}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;->accept(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/AbstractFileFilter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/NotFileFilter;->filter:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
