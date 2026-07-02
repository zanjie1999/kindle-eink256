.class Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper$WordWiseFileNameFilter;
.super Ljava/lang/Object;
.source "WordWiseFileSystemHelper.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WordWiseFileNameFilter"
.end annotation


# instance fields
.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;Ljava/lang/String;)V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p2, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper$WordWiseFileNameFilter;->prefix:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 439
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper$WordWiseFileNameFilter;->prefix:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
