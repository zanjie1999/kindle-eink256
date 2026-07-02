.class public interface abstract Lcom/amazon/kindle/io/IPathDescriptor;
.super Ljava/lang/Object;
.source "IPathDescriptor.java"


# virtual methods
.method public abstract getApplicationPaths()[Ljava/lang/String;
.end method

.method public abstract getBookId(Ljava/io/File;Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kindle/model/content/IBookID;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
.end method

.method public abstract getBookPaths(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract getBooksDirectory()Ljava/io/File;
.end method

.method public abstract getCoverCacheDirectory()Ljava/lang/String;
.end method

.method public abstract getDbFriendlySidecarDirectory(Lcom/amazon/kindle/model/content/IBookID;)Ljava/io/File;
.end method

.method public abstract getDefaultContentDirectory()Ljava/lang/String;
.end method

.method public abstract getDocumentPath(Z)Ljava/lang/String;
.end method

.method public abstract getExternalFilesDir()Ljava/io/File;
.end method

.method public abstract getFilteredBookFiles(Ljava/io/FileFilter;)[Ljava/io/File;
.end method

.method public abstract getModuleDataPath()Ljava/lang/String;
.end method

.method public abstract getNonBookApplicationPaths()[Ljava/lang/String;
.end method

.method public abstract getPersistentPath()Ljava/lang/String;
.end method

.method public abstract getSidecarDirectory()Ljava/lang/String;
.end method

.method public abstract getTempPath()Ljava/lang/String;
.end method

.method public abstract isPathInExternalPrimaryStorage(Ljava/lang/String;)Z
.end method

.method public abstract isPathInExternalSDCard(Ljava/lang/String;)Z
.end method
