.class public abstract Lcom/amazon/android/webkit/AmazonWebIconDatabase;
.super Ljava/lang/Object;
.source "AmazonWebIconDatabase.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract open(Ljava/lang/String;)V
.end method

.method public abstract releaseIconForPageUrl(Ljava/lang/String;)V
.end method

.method public abstract removeAllIcons()V
.end method

.method public abstract requestIconForPageUrl(Ljava/lang/String;Lcom/amazon/android/webkit/AmazonIconListener;)V
.end method

.method public abstract retainIconForPageUrl(Ljava/lang/String;)V
.end method
