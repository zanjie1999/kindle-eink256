.class final Lcom/amazon/kcp/application/LocaleMarketplaceMonitor$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LocaleMarketplaceMonitor.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/LocaleMarketplaceMonitor;-><init>(Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/Locale;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/application/LocaleMarketplaceMonitor$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor$1;

    invoke-direct {v0}, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor$1;->INSTANCE:Lcom/amazon/kcp/application/LocaleMarketplaceMonitor$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/amazon/kcp/application/LocaleMarketplaceMonitor$1;->invoke()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/util/Locale;
    .locals 1

    .line 19
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method
