.class final Lcom/amazon/kindle/modules/KRF4ContentModule$2;
.super Ljava/lang/Object;
.source "KRF4ContentModule.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/modules/KRF4ContentModule;->deleteFilesMatching(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$directory:Ljava/io/File;

.field final synthetic val$prefix:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/amazon/kindle/modules/KRF4ContentModule$2;->val$directory:Ljava/io/File;

    iput-object p2, p0, Lcom/amazon/kindle/modules/KRF4ContentModule$2;->val$prefix:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/amazon/kindle/modules/KRF4ContentModule$2;->val$directory:Ljava/io/File;

    invoke-virtual {p1, v0}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kindle/modules/KRF4ContentModule$2;->val$prefix:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "_bitmap.jpg"

    invoke-virtual {p2, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
