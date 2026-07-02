.class public final Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$Holder$provider$1;
.super Ljava/lang/Object;
.source "IKindlePlayerUrlProvider.kt"

# interfaces
.implements Lcom/amazon/kindle/share/IKindlePlayerUrlProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$Holder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getKindlePlayerUrl(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kcp/reader/IShareHelper$ShareType;Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$UrlCallback;)V
    .locals 1

    const-string v0, "book"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "shareType"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "urlCallback"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
