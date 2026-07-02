.class public interface abstract Lcom/amazon/kindle/cms/api/Callback;
.super Ljava/lang/Object;
.source "Callback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/cms/api/Callback$Result;
    }
.end annotation


# virtual methods
.method public abstract execute(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/cms/api/Callback$Result;
.end method

.method public abstract sync(Lcom/amazon/kindle/cms/api/CMSServer;Landroid/net/Uri;)V
.end method
