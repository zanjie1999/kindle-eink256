.class public Lcom/amazon/whispersync/org/apache/commons/io/filefilter/FalseFileFilter;
.super Ljava/lang/Object;
.source "FalseFileFilter.java"

# interfaces
.implements Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;
.implements Ljava/io/Serializable;


# static fields
.field public static final FALSE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

.field public static final INSTANCE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/FalseFileFilter;

    invoke-direct {v0}, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/FalseFileFilter;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/FalseFileFilter;->FALSE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

    .line 43
    sput-object v0, Lcom/amazon/whispersync/org/apache/commons/io/filefilter/FalseFileFilter;->INSTANCE:Lcom/amazon/whispersync/org/apache/commons/io/filefilter/IOFileFilter;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
