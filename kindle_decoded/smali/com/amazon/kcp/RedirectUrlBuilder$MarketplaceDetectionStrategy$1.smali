.class final Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RedirectUrlBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/net/Uri$Builder;",
        "Landroid/net/Uri$Builder;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy$1;

    invoke-direct {v0}, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy$1;->INSTANCE:Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 1

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    sget-object v0, Lcom/amazon/kcp/RedirectUrlBuilder;->INSTANCE:Lcom/amazon/kcp/RedirectUrlBuilder;

    invoke-static {v0, p1}, Lcom/amazon/kcp/RedirectUrlBuilder;->access$addEid(Lcom/amazon/kcp/RedirectUrlBuilder;Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 146
    check-cast p1, Landroid/net/Uri$Builder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy$1;->invoke(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    return-object p1
.end method
