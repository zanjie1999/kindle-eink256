.class Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$SingletonHolder;
.super Ljava/lang/Object;
.source "BookImageProviderHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$SingletonHolder;->INSTANCE:Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;
    .locals 1

    .line 32
    sget-object v0, Lcom/amazon/kcp/reader/provider/BookImageProviderHandler$SingletonHolder;->INSTANCE:Lcom/amazon/kcp/reader/provider/BookImageProviderHandler;

    return-object v0
.end method
