.class public final Lcom/amazon/kcp/goodreads/GoodreadsMarManagerProvider;
.super Ljava/lang/Object;
.source "GoodreadsMarManagerProvider.kt"

# interfaces
.implements Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManagerProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provideGoodreadMarsManager(Landroid/content/Context;)Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v0, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager;->Companion:Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$Companion;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/goodreads/mar/GoodreadsMarManager$Companion;->newInstance(Landroid/content/Context;)Lcom/amazon/kcp/library/mar/goodreads/IGoodreadsMarManager;

    move-result-object p1

    return-object p1
.end method
