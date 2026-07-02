.class public Lcom/amazon/whispersync/org/apache/commons/io/filefilter/TrueFileFilter;
.super Ljava/lang/Object;
.source "TrueFileFilter.java"

# interfaces
.implements Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

.field public static final TRUE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/TrueFileFilter;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/TrueFileFilter;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/TrueFileFilter;->TRUE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

    .line 42
    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/TrueFileFilter;->INSTANCE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
