.class public Lcom/amazon/ea/reviews/PublicNameLocalStorageManager;
.super Ljava/lang/Object;
.source "PublicNameLocalStorageManager.java"


# static fields
.field private static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "Reviews.PublicName"

.field private static final PUBLIC_NAME_KEY:Ljava/lang/String; = "PUBLIC_NAME"

.field private static final PUBLIC_NAME_TIMESTAMP_KEY:Ljava/lang/String; = "PUBLIC_NAME_TIMESTAMP"


# direct methods
.method public static getPublicName()Ljava/lang/String;
    .locals 3

    .line 26
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Reviews.PublicName"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "PUBLIC_NAME"

    const/4 v2, 0x0

    .line 27
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPublicNameTimeStamp()Ljava/util/Date;
    .locals 5

    .line 36
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Reviews.PublicName"

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-wide/16 v1, 0x0

    const-string v3, "PUBLIC_NAME_TIMESTAMP"

    .line 38
    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 43
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public static setPublicName(Ljava/lang/String;J)Z
    .locals 3

    .line 57
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Reviews.PublicName"

    const/4 v2, 0x0

    .line 58
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "PUBLIC_NAME"

    .line 60
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p0, "PUBLIC_NAME_TIMESTAMP"

    .line 61
    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 63
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p0

    return p0
.end method
