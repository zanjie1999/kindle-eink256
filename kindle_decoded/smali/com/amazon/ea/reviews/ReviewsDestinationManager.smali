.class public Lcom/amazon/ea/reviews/ReviewsDestinationManager;
.super Ljava/lang/Object;
.source "ReviewsDestinationManager.java"


# static fields
.field private static final POST_TO_AMAZON_KEY:Ljava/lang/String; = "POST_TO_AMAZON"

.field private static final POST_TO_GOODREADS_KEY:Ljava/lang/String; = "POST_TO_GOODREADS"

.field private static final PREFERENCES_FILE_NAME:Ljava/lang/String; = "Reviews.SubmissionDestinations"


# direct methods
.method public static isPostToAmazon()Z
    .locals 3

    .line 22
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Reviews.SubmissionDestinations"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "POST_TO_AMAZON"

    const/4 v2, 0x1

    .line 23
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isPostToGoodreads()Z
    .locals 3

    .line 30
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Reviews.SubmissionDestinations"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "POST_TO_GOODREADS"

    const/4 v2, 0x1

    .line 31
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setDestinations(ZZ)V
    .locals 3

    .line 43
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Reviews.SubmissionDestinations"

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "POST_TO_AMAZON"

    .line 46
    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string p0, "POST_TO_GOODREADS"

    .line 47
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 49
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
