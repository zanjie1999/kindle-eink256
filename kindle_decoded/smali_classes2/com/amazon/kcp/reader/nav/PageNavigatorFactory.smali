.class public Lcom/amazon/kcp/reader/nav/PageNavigatorFactory;
.super Ljava/lang/Object;
.source "PageNavigatorFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPageNavigator(Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/nav/PageNavigatorFactory$Type;)Lcom/amazon/kcp/reader/nav/IPageNavigator;
    .locals 0

    .line 16
    new-instance p1, Lcom/amazon/kcp/reader/nav/PageNavigator;

    invoke-direct {p1}, Lcom/amazon/kcp/reader/nav/PageNavigator;-><init>()V

    return-object p1
.end method
