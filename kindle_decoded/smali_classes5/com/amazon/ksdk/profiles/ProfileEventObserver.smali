.class public abstract Lcom/amazon/ksdk/profiles/ProfileEventObserver;
.super Ljava/lang/Object;
.source "ProfileEventObserver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onActiveProfileSwitched(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAvatarDownloadFailed(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract onAvatarDownloaded(Ljava/lang/String;Ljava/lang/String;)V
.end method
