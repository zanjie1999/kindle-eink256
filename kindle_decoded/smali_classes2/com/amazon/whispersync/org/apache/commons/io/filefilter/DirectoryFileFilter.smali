.class public Lcom/amazon/whispersync/org/apache/commons/io/filefilter/DirectoryFileFilter;
.super Lcom/amazon/whispersync/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "DirectoryFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DIRECTORY:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

.field public static final INSTANCE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/DirectoryFileFilter;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/DirectoryFileFilter;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/DirectoryFileFilter;->DIRECTORY:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

    .line 54
    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/DirectoryFileFilter;->INSTANCE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 70
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    return p1
.end method
