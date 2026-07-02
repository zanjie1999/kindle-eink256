.class Lcom/amazon/whispersync/org/apache/commons/io/FileDeleteStrategy$ForceFileDeleteStrategy;
.super Lcom/amazon/whispersync/org/apache/commons/io/FileDeleteStrategy;
.source "FileDeleteStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/org/apache/commons/io/FileDeleteStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ForceFileDeleteStrategy"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-string v0, "Force"

    .line 136
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/org/apache/commons/io/FileDeleteStrategy;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected doDelete(Ljava/io/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-static {p1}, Lcom/amazon/whispersync/org/apache/commons/io/FileUtils;->forceDelete(Ljava/io/File;)V

    const/4 p1, 0x1

    return p1
.end method
