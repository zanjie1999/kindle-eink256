.class public interface abstract Lcom/amazon/kindle/store/StoreBookHelper;
.super Ljava/lang/Object;
.source "StoreBookHelper.kt"


# virtual methods
.method public abstract oneTapBookOpen(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract openBook(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract syncAndDownload(Ljava/lang/String;Ljava/lang/String;)Z
.end method
