.class public Lcom/amazon/android/webkit/android/AndroidWebIconDatabase;
.super Lcom/amazon/android/webkit/AmazonWebIconDatabase;
.source "AndroidWebIconDatabase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/amazon/android/webkit/AmazonWebIconDatabase;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 24
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->close()V

    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 1

    .line 19
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebIconDatabase;->open(Ljava/lang/String;)V

    return-void
.end method

.method public releaseIconForPageUrl(Ljava/lang/String;)V
    .locals 1

    .line 34
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebIconDatabase;->releaseIconForPageUrl(Ljava/lang/String;)V

    return-void
.end method

.method public removeAllIcons()V
    .locals 1

    .line 29
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->removeAllIcons()V

    return-void
.end method

.method public requestIconForPageUrl(Ljava/lang/String;Lcom/amazon/android/webkit/AmazonIconListener;)V
    .locals 1

    .line 40
    new-instance v0, Lcom/amazon/android/webkit/android/AndroidWebIconDatabase$1;

    invoke-direct {v0, p0, p2}, Lcom/amazon/android/webkit/android/AndroidWebIconDatabase$1;-><init>(Lcom/amazon/android/webkit/android/AndroidWebIconDatabase;Lcom/amazon/android/webkit/AmazonIconListener;)V

    .line 46
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Landroid/webkit/WebIconDatabase;->requestIconForPageUrl(Ljava/lang/String;Landroid/webkit/WebIconDatabase$IconListener;)V

    return-void
.end method

.method public retainIconForPageUrl(Ljava/lang/String;)V
    .locals 1

    .line 51
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    return-void
.end method
