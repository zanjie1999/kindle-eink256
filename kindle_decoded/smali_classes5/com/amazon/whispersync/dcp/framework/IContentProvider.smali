.class public interface abstract Lcom/amazon/whispersync/dcp/framework/IContentProvider;
.super Ljava/lang/Object;
.source "IContentProvider.java"


# virtual methods
.method public abstract attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
.end method

.method public abstract bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
.end method

.method public abstract delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract getType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public abstract insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public abstract isTemporary()Z
.end method

.method public abstract onConfigurationChanged(Landroid/content/res/Configuration;)V
.end method

.method public abstract onCreate()Z
.end method

.method public abstract onLowMemory()V
.end method

.method public abstract openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation
.end method

.method public abstract query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/CrossProcessCursor;
.end method

.method public abstract update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
