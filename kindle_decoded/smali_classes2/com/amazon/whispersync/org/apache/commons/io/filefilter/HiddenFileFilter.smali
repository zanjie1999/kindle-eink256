.class public Lcom/amazon/whispersync/org/apache/commons/io/filefilter/HiddenFileFilter;
.super Lcom/amazon/whispersync/org/apache/commons/io/filefilter/AbstractFileFilter;
.source "HiddenFileFilter.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final HIDDEN:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

.field public static final VISIBLE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 54
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/HiddenFileFilter;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/HiddenFileFilter;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/HiddenFileFilter;->HIDDEN:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

    .line 57
    new-instance v1, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/NotFileFilter;

    invoke-direct {v1, v0}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/NotFileFilter;-><init>(Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;)V

    sput-object v1, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/HiddenFileFilter;->VISIBLE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/AbstractFileFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    .line 74
    invoke-virtual {p1}, Ljava/io/File;->isHidden()Z

    move-result p1

    return p1
.end method
