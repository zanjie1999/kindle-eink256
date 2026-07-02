.class public Lcom/amazon/whispersync/dcp/framework/EnvironmentWrapper;
.super Ljava/lang/Object;
.source "EnvironmentWrapper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataDirectory()Ljava/io/File;
    .locals 1

    .line 13
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadCacheDirectory()Ljava/io/File;
    .locals 1

    .line 18
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalStorageDirectory()Ljava/io/File;
    .locals 1

    .line 23
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 0

    .line 28
    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public getExternalStorageState()Ljava/lang/String;
    .locals 1

    .line 33
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaStorageDirectory()Ljava/io/File;
    .locals 2
    .annotation build Lcom/amazon/whispersync/edu/umd/cs/findbugs/annotations/SuppressWarnings;
        value = {
            "DMI_HARDCODED_ABSOLUTE_FILENAME"
        }
    .end annotation

    .line 49
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/SystemVersionHelpers;->isLessThanJellyBean()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/media"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 54
    :cond_0
    invoke-static {}, Landroid/amazon/res/AmazonInternalHelper$Environment;->getMediaStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getRootDirectory()Ljava/io/File;
    .locals 1

    .line 38
    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public isExternalStorageRemovable()Z
    .locals 1

    .line 43
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    return v0
.end method
