.class Lcom/amazon/device/crashmanager/AppFileArtifactSource$1;
.super Ljava/lang/Object;
.source "AppFileArtifactSource.java"

# interfaces
.implements Ljava/io/FileFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/crashmanager/AppFileArtifactSource;->getCrashReportFile()Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/crashmanager/AppFileArtifactSource;


# direct methods
.method constructor <init>(Lcom/amazon/device/crashmanager/AppFileArtifactSource;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/amazon/device/crashmanager/AppFileArtifactSource$1;->this$0:Lcom/amazon/device/crashmanager/AppFileArtifactSource;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;)Z
    .locals 1

    .line 232
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "crashlog.v2.amzcl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
