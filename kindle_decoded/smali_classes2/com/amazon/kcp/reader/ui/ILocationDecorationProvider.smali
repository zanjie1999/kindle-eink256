.class public interface abstract Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider;
.super Ljava/lang/Object;
.source "ILocationDecorationProvider.java"

# interfaces
.implements Lcom/amazon/kindle/factory/IKindleObjectProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/factory/IKindleObjectProvider<",
        "Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider;",
        "Lcom/amazon/kindle/model/content/ILocalBookItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract getLocationText(Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;
.end method
