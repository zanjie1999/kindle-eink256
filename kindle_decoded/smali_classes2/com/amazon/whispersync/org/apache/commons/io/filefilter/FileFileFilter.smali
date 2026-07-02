.class public Lcom/amazon/whispersync/org/apache/commons/io/filefilter/FileFileFilter;
.super Lcom/amazon/whispersync/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "FileFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final FILE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/FileFileFilter;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/FileFileFilter;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/FileFileFilter;->FILE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 59
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    return p1
.end method
