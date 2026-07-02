.class public interface abstract Lcom/amazon/kcp/reader/IShareHelper;
.super Ljava/lang/Object;
.source "IShareHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/IShareHelper$ShareType;
    }
.end annotation


# virtual methods
.method public abstract share(Landroid/app/Activity;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V
.end method

.method public abstract share(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public abstract showNewShareOption(Landroid/app/Activity;Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z
.end method
