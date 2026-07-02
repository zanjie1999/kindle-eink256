.class Lcom/amazon/kcp/reader/provider/BookImageProviderClient$SingletonHolder;
.super Ljava/lang/Object;
.source "BookImageProviderClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/provider/BookImageProviderClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/reader/provider/BookImageProviderClient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProviderClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/provider/BookImageProviderClient;-><init>(Lcom/amazon/kcp/reader/provider/BookImageProviderClient$1;)V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProviderClient$SingletonHolder;->INSTANCE:Lcom/amazon/kcp/reader/provider/BookImageProviderClient;

    return-void
.end method

.method static synthetic access$100()Lcom/amazon/kcp/reader/provider/BookImageProviderClient;
    .locals 1

    .line 58
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProviderClient$SingletonHolder;->INSTANCE:Lcom/amazon/kcp/reader/provider/BookImageProviderClient;

    return-object v0
.end method
