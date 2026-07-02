.class public abstract Lcom/amazon/android/webkit/AmazonJsPromptResult;
.super Lcom/amazon/android/webkit/AmazonJsResult;
.source "AmazonJsPromptResult.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/android/webkit/AmazonJsResult;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0}, Lcom/amazon/android/webkit/AmazonJsPromptResult;->confirm(Ljava/lang/String;)V

    return-void
.end method

.method public abstract confirm(Ljava/lang/String;)V
.end method
