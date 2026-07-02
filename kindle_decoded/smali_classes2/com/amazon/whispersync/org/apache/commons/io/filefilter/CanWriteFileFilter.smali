.class public Lcom/amazon/whispersync/org/apache/commons/io/filefilter/CanWriteFileFilter;
.super Lcom/amazon/whispersync/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "CanWriteFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CANNOT_WRITE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

.field public static final CAN_WRITE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 58
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/CanWriteFileFilter;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/CanWriteFileFilter;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/CanWriteFileFilter;->CAN_WRITE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

    .line 61
    new-instance v1, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/NotFileFilter;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/NotFileFilter;-><init>(Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;)V

    sput-object v1, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/CanWriteFileFilter;->CANNOT_WRITE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 78
    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result p1

    return p1
.end method
